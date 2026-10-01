Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cv2?download=true
inline.NumInlined: 99483
inline.NumDeleted: 14985
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_Z13pyopencv_fromIfEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE:bb.a
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !743
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.0.in.i24 = load i64, ptr %i.ai, align 8, !tbaa !781
  %sext = shl i64 %.0.in.i24, 32
  %i.aj = ashr exact i64 %sext, 32
  %i.ak = icmp slt i64 %indvars.iv, %i.aj
  br i1 %i.ak, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = invoke fastcc noundef ptr @_ZL25pyopencv_from_generic_vecIfEP7_objectRKSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.s

bb.p:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit22
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

.loopexit:                                        ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.n
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = invoke noundef double @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.an)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ap = fptrunc double %i.ao to float
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float %i.ap, ptr %i.aq, align 4, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.j, !llvm.loop !3691

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.o
  %.idx = shl nuw nsw i64 %i.s, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27, %.loopexit.split-lp, %.loopexit
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.s ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.idx44 = shl nuw nsw i64 %i.s, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx44) #40
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit33

_ZNSt6vectorIfSaIfEED2Ev.exit33:                  ; preds = %.body, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %common.resume

bb.t:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.as = tail call noundef double @_ZNK2cv3dnn14dnn5_v202606059DictValue3getIdEET_i(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef -1)
  %i.at = fptrunc double %i.as to float
  store float %i.at, ptr %i.a, align 4, !tbaa !1450
  %i.au = call noundef ptr @_Z13pyopencv_fromIfEP7_objectRKT_(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.014 = phi ptr [ %i.al, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %i.au, %bb.t ]
  ret ptr %.014
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_Z13pyopencv_fromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEP7_objectRKN2cv3dnn14dnn5_v202606059DictValueE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::vector.133", align 8   ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1429   ; 4 uses
  switch i32 %i.a, label %bb.b [
    i32 0, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 3, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
    i32 2, label %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.12985, i32 noundef %i.a)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %3, align 8, !tbaa !779    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !743
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ], [ %.pn.pn.pn, %bb.ac ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume

_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit: ; preds = %bb.a, %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !743
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.in.i = load i64, ptr %i.j, align 8, !tbaa !781 ; 4 uses
  %.0.i = trunc i64 %.0.in.i to i32
  %i.k = icmp sgt i32 %.0.i, 1
  br i1 %i.k, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %_ZNK2cv3dnn14dnn5_v202606059DictValue4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  switch i32 %i.a, label %bb.f [
    i32 0, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
    i32 3, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
    i32 2, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.12985, i32 noundef %i.a)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !779    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.h
  %i.p = load i64, ptr %i.n, align 8, !tbaa !743
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.e, %bb.e, %bb.e
  %sext = shl i64 %.0.in.i, 32                    ; 2 uses
  %i.r = and i64 %.0.in.i, 2147483647             ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.s = lshr exact i64 %sext, 27
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #39
          to label %.noexc27 unwind label %bb.o   ; 4 uses

.noexc27:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  store ptr %i.t, ptr %4, align 8, !tbaa !1453
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !1454
  %i.w = add nsw i64 %i.r, -1
  %xtraiter = and i64 %.0.in.i, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.prol ], [ %i.t, %.noexc27 ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.noexc27 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.noexc27 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.x, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !776
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !780
  store i8 0, ptr %i.x, align 8, !tbaa !743
  %i.z = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3692

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.noexc27
  %.lcssa84.unr = phi ptr [ poison, %.noexc27 ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.t, %.noexc27 ], [ %i.aa, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.r, %.noexc27 ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %i.ab = icmp ult i64 %i.w, 3
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ac, ptr %.08.i.i.i.i.i, align 8, !tbaa !776
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !780
  store i8 0, ptr %i.ac, align 8, !tbaa !743
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !776
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !780
  store i8 0, ptr %i.af, align 8, !tbaa !743
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !776
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.aj, align 8, !tbaa !780
  store i8 0, ptr %i.ai, align 8, !tbaa !743
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !776
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.am, align 8, !tbaa !780
  store i8 0, ptr %i.al, align 8, !tbaa !743
  %i.an = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa84.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ap, align 8, !tbaa !1455
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %.loopexit ] ; 4 uses
  %i.as = load i32, ptr %0, align 8, !tbaa !1429  ; 2 uses
  switch i32 %i.as, label %bb.j [
    i32 0, label %bb.m
    i32 3, label %bb.m
    i32 2, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.12985, i32 noundef %i.as)
          to label %.noexc33 unwind label %bb.p

.noexc33:                                         ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2405, ptr noundef nonnull @.str.12982, i32 noundef 310) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc33
  unreachable

bb.l:                                             ; preds = %.noexc33
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %1, align 8, !tbaa !779   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30: ; preds = %bb.l
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !743
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i31: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %.body

bb.m:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !743
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.0.in.i28 = load i64, ptr %i.ba, align 8, !tbaa !781
  %sext75 = shl i64 %.0.in.i28, 32
  %i.bb = ashr exact i64 %sext75, 32
  %i.bc = icmp slt i64 %indvars.iv, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke fastcc noundef ptr @_ZL25pyopencv_from_generic_vecINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEP7_objectRKSt6vectorIT_SaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.z unwind label %bb.ab

bb.o:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.p:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZNK2cv3dnn14dnn5_v202606059DictValue3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_i(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bg)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %4, align 8, !tbaa !1453
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %indvars.iv ; 9 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !779 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  %i.bm = load ptr, ptr %5, align 8, !tbaa !779   ; 6 uses
  %i.bn = icmp eq ptr %i.bm, %i.aq                ; 2 uses
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.r
  br i1 %i.bn, label %bb.s, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.r
  br i1 %i.bn, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !780 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %.not21.i = icmp eq ptr %5, %i.bi
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.t, !prof !745

bb.t:                                             ; preds = %bb.s
  switch i64 %i.bo, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !743
  store i8 %i.bq, ptr %i.bj, align 1, !tbaa !743
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bm, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.br = load i64, ptr %i.ar, align 8, !tbaa !780 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !780
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !779
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store i8 0, ptr %i.bu, align 1, !tbaa !743
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !779
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !779
  %i.bw = load i64, ptr %i.ar, align 8, !tbaa !780
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !780
  %i.bx = load i64, ptr %i.aq, align 8, !tbaa !743
  store i64 %i.bx, ptr %i.bk, align 8, !tbaa !743
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.by = load i64, ptr %i.bk, align 8, !tbaa !743
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !779
  %i.bz = load i64, ptr %i.ar, align 8, !tbaa !780
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !780
  %i.cb = load i64, ptr %i.aq, align 8, !tbaa !743
  store i64 %i.cb, ptr %i.bk, align 8, !tbaa !743
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bj, ptr %5, align 8, !tbaa !779
  store i64 %i.by, ptr %i.aq, align 8, !tbaa !743
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %5, align 8, !tbaa !779
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.w, %bb.x
  %i.cc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.bj, %bb.w ], [ %i.aq, %bb.x ], [ %i.bm, %bb.s ]
  store i64 0, ptr %i.ar, align 8, !tbaa !780
  store i8 0, ptr %i.cc, align 1, !tbaa !743
  %i.cd = load ptr, ptr %5, align 8, !tbaa !779   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.aq
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !743
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.i, !llvm.loop !3693

bb.y:                                             ; preds = %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.body

bb.z:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %4, align 8, !tbaa !1453  ; 5 uses
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !1455 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ci, %bb.z ] ; 3 uses
  %i.ck = load ptr, ptr %.05.i.i.i, align 8, !tbaa !779 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !743
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZL23pyopencv_to_generic_vecIN2cv3MatEEbP7_objectRSt6vectorIT_SaIS5_EERK7ArgInfo:bb.a
  %.05.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #37
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.u, ptr %i.k, align 8, !tbaa !1660
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !1738
  %i.x = tail call noundef zeroext i1 @_Z11pyopencv_toIN2cv3MatEEbP7_objectRT_RK7ArgInfo(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br i1 %i.x, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit, %bb.b
  %i.y = tail call i32 @PySequence_Check(ptr noundef nonnull %0)
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @PySequence_Size(ptr noundef nonnull %0) ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1660 ; 3 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1661  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 208               ; 3 uses
  %i.ah = icmp ugt i64 %i.z, %i.ag
  br i1 %i.ah, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45.thread, label %bb.i

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45.thread: ; preds = %bb.h
  %i.ai = sub nuw i64 %i.z, %i.ag
  tail call void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai)
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.z, %i.ag
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw [208 x i8], ptr %i.ac, i64 %i.z ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ab, %i.ak
  br i1 %.not.i.i40, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i41
  %.05.i.i.i.i42 = phi ptr [ %i.al, %.lr.ph.i.i.i.i41 ], [ %i.ak, %bb.j ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i42) #37
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i42, i64 208 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.al, %i.ab
  br i1 %.not.i.i.i.i43, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i44, label %.lr.ph.i.i.i.i41, !llvm.loop !95

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i44: ; preds = %.lr.ph.i.i.i.i41
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !1660
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45:   ; preds = %bb.i, %bb.j, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i44
  %.not3657.not = icmp eq i64 %i.z, 0
  br i1 %.not3657.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45.thread, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49
  %.03358 = phi i64 [ %i.be, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.am = tail call ptr @PySequence_GetItem(ptr noundef nonnull %0, i64 noundef %.03358) ; 10 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !1661
  %i.ao = getelementptr inbounds nuw [208 x i8], ptr %i.an, i64 %.03358
  %i.ap = invoke noundef zeroext i1 @_Z11pyopencv_toIN2cv3MatEEbP7_objectRT_RK7ArgInfo(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(208) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  br i1 %i.ap, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ar = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.46, ptr noundef %i.aq, i64 noundef %.03358)
          to label %bb.n unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call fastcc void @_ZN12_GLOBAL__N_111SafeSeqItemD2Ev(ptr %i.am) #37
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %bb.l
  %.not.i.i46 = icmp eq ptr %i.am, null
  br i1 %.not.i.i46, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr %i.am, align 8, !tbaa !743 ; 2 uses
  %i.at = and i64 %i.as, 2147483648
  %.not2.i.i = icmp eq i64 %i.at, 0
  br i1 %.not2.i.i, label %bb.p, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  store i64 %i.au, ptr %i.am, align 8, !tbaa !743
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.q, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.am)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #36
  unreachable

.critedge:                                        ; preds = %bb.k
  %.not.i.i47 = icmp eq ptr %i.am, null
  br i1 %.not.i.i47, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !743 ; 2 uses
  %i.az = and i64 %i.ay, 2147483648
  %.not2.i.i48 = icmp eq i64 %i.az, 0
  br i1 %.not2.i.i48, label %bb.t, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49

bb.t:                                             ; preds = %bb.s
  %i.ba = add nsw i64 %i.ay, -1                   ; 2 uses
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !743
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49

bb.u:                                             ; preds = %bb.t
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.am)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #36
  unreachable

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49:        ; preds = %bb.u, %bb.t, %bb.s, %.critedge
  %i.be = add nuw i64 %.03358, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.z
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph, !llvm.loop !3784

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split: ; preds = %bb.g, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %.str.45.sink = phi ptr [ @.str.44, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit ], [ @.str.45, %bb.g ]
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1423
  %i.bg = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull %.str.45.sink, ptr noundef %i.bf) ; 0 uses
  br label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit:          ; preds = %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45, %bb.n, %bb.o, %bb.p, %bb.q, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, %bb.a
  %.3 = phi i1 [ true, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit45 ], [ true, %bb.a ], [ false, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split ], [ true, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ true, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 ]
  ret i1 %.3
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #5

declare noundef zeroext i1 @_Z11pyopencv_toIN2cv3MatEEbP7_objectRT_RK7ArgInfo(ptr noundef, ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1660 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1661   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 208                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1751
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 208                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 44343134792571038
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 44343134792571037, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i) #37
  %i.p = add nsw i64 %.057.i.i.i, -1              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !3785

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !1660
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 44343134792571037) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 208
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #39 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.y, %.lr.ph.i.i.i30 ], [ %i.w, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32 = phi i64 [ %i.x, %.lr.ph.i.i.i30 ], [ %1, %_ZNKSt6vectorIN2cv3MatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i31) #37
  %i.x = add nsw i64 %.057.i.i.i32, -1            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  %.not.i.i.i33 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !3785

_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #37
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #37
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !3786

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !1751
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #40
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !1661
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !1660
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !1751
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IP9pycvLayerEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !737
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !739
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !740
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIP9pycvLayerLN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !742
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !1759
  store ptr %i.a, ptr %0, align 8, !tbaa !737
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #37 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 168) #40
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #38
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #36
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP9pycvLayerLN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP9pycvLayerLN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1759 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 168) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIP9pycvLayerLN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIP9pycvLayerLN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9pycvLayer15unregisterLayerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9pycvLayer8pyLayersB5cxx11E, i64 16), align 8, !tbaa !1461 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP7_objectSaIS8_EESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !780  ; 4 uses
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN9pycvLayer8pyLayersB5cxx11E, i64 8), %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !780  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.f) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !779
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.d, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #37 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.k = sub i64 %i.f, %i.c
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.l, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1462 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIP7_objectSaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !94

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIP7_objectSaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN9pycvLayer8pyLayersB5cxx11E, i64 8)
  br i1 %i.m, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIP7_objectSaIS8_EESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIP7_objectSaISA_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !780  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL23pyopencv_to_generic_vecIN2cv8KeyPointEEbP7_objectRSt6vectorIT_SaIS5_EERK7ArgInfo:bb.a
  br i1 %.not35, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ae = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.45, ptr noundef %i.ad) ; 0 uses
  br label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = tail call i64 @PySequence_Size(ptr noundef nonnull %0) ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2200 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1971  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 28                ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42.thread, label %bb.l

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42.thread: ; preds = %bb.k
  %i.ao = sub nuw i64 %i.af, %i.am
  tail call void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ao)
  br label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.m, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [28 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i40, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42, label %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i41

_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i41: ; preds = %bb.m
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !2200
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42: ; preds = %bb.l, %bb.m, %_ZSt8_DestroyIPN2cv8KeyPointES1_EvT_S3_RSaIT0_E.exit.i.i41
  %.not3665.not = icmp eq i64 %i.af, 0
  br i1 %.not3665.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42.thread, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55
  %.03366 = phi i64 [ %i.bp, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.ar = tail call ptr @PySequence_GetItem(ptr noundef nonnull %0, i64 noundef %.03366) ; 11 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !1971
  %i.at = getelementptr inbounds nuw [28 x i8], ptr %i.as, i64 %.03366
  %i.au = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.av = icmp eq ptr %i.ar, @_Py_NoneStruct
  %or.cond.i.i43 = or i1 %i.au, %i.av
  br i1 %or.cond.i.i43, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.aw = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i44 = load ptr, ptr %i.aw, align 8, !tbaa !1414 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %.val.i.i.i44, @_ZL25pyopencv_KeyPoint_TypeXXX
  br i1 %.not.i.i.i.i45, label %.critedge.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46: ; preds = %bb.n
  %i.ax = invoke i32 @PyType_IsSubtype(ptr noundef %.val.i.i.i44, ptr noundef nonnull @_ZL25pyopencv_KeyPoint_TypeXXX)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46
  %.not.i.i.i47 = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i47, label %_ZL22pyopencv_KeyPoint_getpP7_objectRPN2cv8KeyPointE.exit.i.i49, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %.noexc
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.at, ptr noundef nonnull align 8 dereferenceable(28) %i.ay, i64 28, i1 false), !tbaa.struct !2201
  br label %bb.t

_ZL22pyopencv_KeyPoint_getpP7_objectRPN2cv8KeyPointE.exit.i.i49: ; preds = %.noexc
  %i.az = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ba = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.2411, ptr noundef %i.az)
          to label %_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit51 unwind label %.loopexit.split-lp ; 0 uses

_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit51: ; preds = %_ZL22pyopencv_KeyPoint_getpP7_objectRPN2cv8KeyPointE.exit.i.i49
  %i.bb = load ptr, ptr %2, align 8, !tbaa !1423
  %i.bc = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.46, ptr noundef %i.bb, i64 noundef %.03366)
          to label %bb.p unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit51, %_ZL22pyopencv_KeyPoint_getpP7_objectRPN2cv8KeyPointE.exit.i.i49
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call fastcc void @_ZN12_GLOBAL__N_111SafeSeqItemD2Ev(ptr nonnull %i.ar) #37
  resume { ptr, i32 } %lpad.phi

bb.p:                                             ; preds = %_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit51
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !743 ; 2 uses
  %i.be = and i64 %i.bd, 2147483648
  %.not2.i.i = icmp eq i64 %i.be, 0
  br i1 %.not2.i.i, label %bb.q, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i64 %i.bd, -1                   ; 2 uses
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !743
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ar)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.au, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55, label %bb.t

bb.t:                                             ; preds = %.critedge.thread, %.critedge
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !743 ; 2 uses
  %i.bk = and i64 %i.bj, 2147483648
  %.not2.i.i54 = icmp eq i64 %i.bk, 0
  br i1 %.not2.i.i54, label %bb.u, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55

bb.u:                                             ; preds = %bb.t
  %i.bl = add nsw i64 %i.bj, -1                   ; 2 uses
  store i64 %i.bl, ptr %i.ar, align 8, !tbaa !743
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55

bb.v:                                             ; preds = %bb.u
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ar)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #36
  unreachable

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55:        ; preds = %bb.v, %bb.u, %bb.t, %.critedge
  %i.bp = add nuw i64 %.03366, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.af
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph, !llvm.loop !6619

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit:          ; preds = %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42, %bb.p, %bb.q, %bb.r, %_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit.thread, %bb.a, %bb.j, %bb.h
  %.3 = phi i1 [ false, %bb.j ], [ true, %bb.a ], [ false, %bb.h ], [ true, %_Z11pyopencv_toIN2cv8KeyPointEEbP7_objectRT_RK7ArgInfo.exit.thread ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.q ], [ true, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit42 ], [ true, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2200 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1971   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1972
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i.prol, align 4, !tbaa !1450
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !1781
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !1782
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  store i32 -1, ptr %i.r, align 4, !tbaa !1783
  %i.s = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6620

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !1450
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !1781
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !1782
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24
  store i32 -1, ptr %i.x, align 4, !tbaa !1783
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.y, align 4, !tbaa !1450
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 44
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !1781
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 48
  store i32 0, ptr %i.aa, align 4, !tbaa !1782
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 52
  store i32 -1, ptr %i.ab, align 4, !tbaa !1783
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ac, align 4, !tbaa !1450
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 72
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !1781
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 76
  store i32 0, ptr %i.ae, align 4, !tbaa !1782
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store i32 -1, ptr %i.af, align 4, !tbaa !1783
  %i.ag = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !1450
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 100
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !1781
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 104
  store i32 0, ptr %i.ai, align 4, !tbaa !1782
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 108
  store i32 -1, ptr %i.aj, align 4, !tbaa !1783
  %i.ak = add nsw i64 %.01012.i.i.i, -4           ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !6621

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !2200
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 329406144173384850) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 28
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #39 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31.prol, align 4, !tbaa !1450
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 16
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !1781
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 20
  store i32 0, ptr %i.at, align 4, !tbaa !1782
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 24
  store i32 -1, ptr %i.au, align 4, !tbaa !1783
  %i.av = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 28 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !6622

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i31, align 4, !tbaa !1450
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 16
  store float 0.000000e+00, ptr %i.ay, align 4, !tbaa !1781
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 20
  store i32 0, ptr %i.az, align 4, !tbaa !1782
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 24
  store i32 -1, ptr %i.ba, align 4, !tbaa !1783
  %i.bb = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bb, align 4, !tbaa !1450
  %i.bc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 44
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !1781
  %i.bd = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 48
  store i32 0, ptr %i.bd, align 4, !tbaa !1782
  %i.be = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 52
  store i32 -1, ptr %i.be, align 4, !tbaa !1783
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 56
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bf, align 4, !tbaa !1450
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 72
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !1781
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 76
  store i32 0, ptr %i.bh, align 4, !tbaa !1782
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store i32 -1, ptr %i.bi, align 4, !tbaa !1783
  %i.bj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 84
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.bj, align 4, !tbaa !1450
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 100
  store float 0.000000e+00, ptr %i.bk, align 4, !tbaa !1781
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 104
  store i32 0, ptr %i.bl, align 4, !tbaa !1782
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 108
  store i32 -1, ptr %i.bm, align 4, !tbaa !1783
  %i.bn = add nsw i64 %.01012.i.i.i32, -4         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 112
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !6621

_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i, i64 28, i1 false), !tbaa.struct !2201, !alias.scope !6627
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 28
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !6626

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.br = load ptr, ptr %i.h, align 8, !tbaa !1972
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #40
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.aq, ptr %0, align 8, !tbaa !1971
  %i.bu = getelementptr inbounds nuw [28 x i8], ptr %i.ar, i64 %1
  store ptr %i.bu, ptr %i.a, align 8, !tbaa !2200
  %i.bv = getelementptr inbounds nuw [28 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !1972
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN20pyopencvVecConverterIiE2toEP7_objectRSt6vectorIiSaIiEERK7ArgInfo(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !1425
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !734  ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !tbaa !1414 ; 2 uses
  %.not.i = icmp eq ptr %.val, %i.c
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.a
  %i.e = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.c)
  %.not44 = icmp eq i32 %i.e, 0
  br i1 %.not44, label %bb.b, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

bb.b:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.f = tail call fastcc noundef zeroext i1 @_ZL23pyopencv_to_generic_vecIiEbP7_objectRSt6vectorIT_SaIS3_EERK7ArgInfo(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %.loopexit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.a, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.g = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 24
  %.val36 = load i32, ptr %i.h, align 8, !tbaa !2169 ; 3 uses
  %i.i = icmp sgt i32 %.val36, 1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %i.j = load ptr, ptr %2, align 8, !tbaa !1423
  %i.k = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.106, i32 noundef %.val36, ptr noundef %i.j) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread
  %.val33 = load ptr, ptr %i.g, align 8, !tbaa !2170
  %i.l = getelementptr i8, ptr %.val33, i64 28
  %.val33.val = load i32, ptr %i.l, align 4, !tbaa !2172
  %.not31 = icmp eq i32 %.val33.val, 5
  br i1 %.not31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call fastcc noundef zeroext i1 @_ZL23pyopencv_to_generic_vecIiEbP7_objectRSt6vectorIT_SaIS3_EERK7ArgInfo(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !1425
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !734
  %i.q = getelementptr i8, ptr %0, i64 32
  %.val37 = load ptr, ptr %i.q, align 8, !tbaa !2173
  %i.r = tail call noundef i64 %i.p(ptr noundef %.val37, i32 noundef %.val36) ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1444 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !1442   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 3 uses
  %i.z = icmp ugt i64 %i.r, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = sub nuw i64 %i.r, %i.y
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aa)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp ult i64 %i.r, %i.y
  br i1 %i.ab, label %bb.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ac
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !1444
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ad = getelementptr i8, ptr %0, i64 40
  %.val38 = load ptr, ptr %i.ad, align 8, !tbaa !2175
  %.val38.val = load i64, ptr %.val38, align 8, !tbaa !781
  %.val39 = load ptr, ptr %i.g, align 8, !tbaa !2170 ; 2 uses
  %i.ae = load i32, ptr @opencv_ARRAY_APIPyArray_RUNTIME_VERSION, align 4, !tbaa !744
  %i.af = icmp sgt i32 %i.ae, 17
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.val39, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2179
  br label %_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.val39, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !2181
  %i.ak = sext i32 %i.aj to i64
  br label %_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit

_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit:   ; preds = %bb.j, %bb.k
  %.0.i.i = phi i64 [ %i.ah, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = sdiv i64 %.val38.val, %.0.i.i
  %i.am = load ptr, ptr %1, align 8, !tbaa !1463  ; 2 uses
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !1463 ; 2 uses
  %.not45 = icmp eq ptr %i.am, %i.an
  br i1 %.not45, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit
  %i.ao = getelementptr i8, ptr %0, i64 16
  %.val32 = load ptr, ptr %i.ao, align 8, !tbaa !2182
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.047 = phi ptr [ %i.ar, %.lr.ph ], [ %.val32, %.lr.ph.preheader ] ; 2 uses
  %.sroa.040.046 = phi ptr [ %i.aq, %.lr.ph ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %i.ap = load i32, ptr %.047, align 4, !tbaa !744
  store i32 %i.ap, ptr %.sroa.040.046, align 4, !tbaa !744
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.040.046, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %.047, i64 %i.al
  %.not = icmp eq ptr %i.aq, %i.an
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !6628

.loopexit:                                        ; preds = %.lr.ph, %_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit, %bb.c, %bb.e, %bb.b
  %.1 = phi i1 [ %i.f, %bb.b ], [ %i.m, %bb.e ], [ false, %bb.c ], [ true, %_ZL16PyArray_ITEMSIZEPK16tagPyArrayObject.exit ], [ true, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL23pyopencv_to_generic_vecIiEbP7_objectRSt6vectorIT_SaIS3_EERK7ArgInfo(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @_Py_NoneStruct
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1464, !range !1465, !noundef !1466
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @opencv_ARRAY_API, align 8, !tbaa !1425
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !734  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !1414 ; 2 uses
  %.not.i = icmp eq ptr %.val, %i.h
  br i1 %.not.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit: ; preds = %bb.c
  %i.j = tail call i32 @PyType_IsSubtype(ptr noundef %.val, ptr noundef %i.h)
  %.not48 = icmp eq i32 %i.j, 0
  br i1 %.not48, label %bb.g, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.thread: ; preds = %bb.c, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1444 ; 3 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !1442   ; 6 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
end_hunk_2
begin_hunk_3_@_ZL23pyopencv_to_generic_vecIN2cv4UMatEEbP7_objectRSt6vectorIT_SaIS5_EERK7ArgInfo:bb.a
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.u, %bb.f ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i) #37
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %i.l
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !240

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.u, ptr %i.k, align 8, !tbaa !1837
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit:    ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !1789
  %i.x = tail call noundef zeroext i1 @_Z11pyopencv_toIN2cv4UMatEEbP7_objectRT_RK7ArgInfo(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(184) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br i1 %i.x, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split

bb.g:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit, %bb.b
  %i.y = tail call i32 @PySequence_Check(ptr noundef nonnull %0)
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i64 @PySequence_Size(ptr noundef nonnull %0) ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1837 ; 3 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1836  ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 184               ; 3 uses
  %i.ah = icmp ugt i64 %i.z, %i.ag
  br i1 %i.ah, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45.thread, label %bb.i

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45.thread: ; preds = %bb.h
  %i.ai = sub nuw i64 %i.z, %i.ag
  tail call void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ai)
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp ult i64 %i.z, %i.ag
  br i1 %i.aj, label %bb.j, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw [184 x i8], ptr %i.ac, i64 %i.z ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ab, %i.ak
  br i1 %.not.i.i40, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i41
  %.05.i.i.i.i42 = phi ptr [ %i.al, %.lr.ph.i.i.i.i41 ], [ %i.ak, %bb.j ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i42) #37
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i42, i64 184 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.al, %i.ab
  br i1 %.not.i.i.i.i43, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i44, label %.lr.ph.i.i.i.i41, !llvm.loop !240

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i44: ; preds = %.lr.ph.i.i.i.i41
  store ptr %i.ak, ptr %i.aa, align 8, !tbaa !1837
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45:  ; preds = %bb.i, %bb.j, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i44
  %.not3657.not = icmp eq i64 %i.z, 0
  br i1 %.not3657.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45.thread, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49
  %.03358 = phi i64 [ %i.be, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.am = tail call ptr @PySequence_GetItem(ptr noundef nonnull %0, i64 noundef %.03358) ; 10 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !1836
  %i.ao = getelementptr inbounds nuw [184 x i8], ptr %i.an, i64 %.03358
  %i.ap = invoke noundef zeroext i1 @_Z11pyopencv_toIN2cv4UMatEEbP7_objectRT_RK7ArgInfo(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(184) %i.ao, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  br i1 %i.ap, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ar = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.46, ptr noundef %i.aq, i64 noundef %.03358)
          to label %bb.n unwind label %.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call fastcc void @_ZN12_GLOBAL__N_111SafeSeqItemD2Ev(ptr %i.am) #37
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %bb.l
  %.not.i.i46 = icmp eq ptr %i.am, null
  br i1 %.not.i.i46, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr %i.am, align 8, !tbaa !743 ; 2 uses
  %i.at = and i64 %i.as, 2147483648
  %.not2.i.i = icmp eq i64 %i.at, 0
  br i1 %.not2.i.i, label %bb.p, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.au = add nsw i64 %i.as, -1                   ; 2 uses
  store i64 %i.au, ptr %i.am, align 8, !tbaa !743
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.q, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.am)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #36
  unreachable

.critedge:                                        ; preds = %bb.k
  %.not.i.i47 = icmp eq ptr %i.am, null
  br i1 %.not.i.i47, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !743 ; 2 uses
  %i.az = and i64 %i.ay, 2147483648
  %.not2.i.i48 = icmp eq i64 %i.az, 0
  br i1 %.not2.i.i48, label %bb.t, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49

bb.t:                                             ; preds = %bb.s
  %i.ba = add nsw i64 %i.ay, -1                   ; 2 uses
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !743
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.u, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49

bb.u:                                             ; preds = %bb.t
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.am)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #36
  unreachable

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49:        ; preds = %bb.u, %bb.t, %bb.s, %.critedge
  %i.be = add nuw i64 %.03358, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.z
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit, label %.lr.ph, !llvm.loop !6668

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split: ; preds = %bb.g, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit
  %.str.45.sink = phi ptr [ @.str.44, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit ], [ @.str.45, %bb.g ]
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1423
  %i.bg = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull %.str.45.sink, ptr noundef %i.bf) ; 0 uses
  br label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit:          ; preds = %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45, %bb.n, %bb.o, %bb.p, %bb.q, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit, %bb.a
  %.3 = phi i1 [ true, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit45 ], [ true, %bb.a ], [ false, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit.sink.split ], [ true, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ true, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit49 ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1837 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1836   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 184                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1838
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 184                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 50127021939428130
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 50127021939428129, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i, i32 noundef 0) #37
  %i.p = add nsw i64 %.057.i.i.i, -1              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !6669

_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !1837
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 50127021939428129) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 184                ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #39 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 4 uses
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40
  %.08.i.i.i41 = phi ptr [ %i.y, %.lr.ph.i.i.i40 ], [ %i.w, %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i42 = phi i64 [ %i.x, %.lr.ph.i.i.i40 ], [ %1, %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i41, i32 noundef 0) #37
  %i.x = add nsw i64 %.057.i.i.i42, -1            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 184
  %.not.i.i.i43 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i43, label %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !6669

_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not14.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45 ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45 ] ; 2 uses
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 184 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 184
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i48, label %.lr.ph.i.i.i.i.i, !llvm.loop !6670

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #37 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i.i.i.i) #37
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !240

_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #38
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body:                                            ; preds = %bb.f
  %i.ai = extractvalue { ptr, i32 } %i.af, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #37 ; 0 uses
  %.idx = mul nuw nsw i64 %1, 184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.w, %.body ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #37
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !240

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.m

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.u) #40
  invoke void @__cxa_rethrow() #38
          to label %bb.n unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.am

.lr.ph.i.i48:                                     ; preds = %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i48
  %.05.i.i49 = phi ptr [ %i.an, %.lr.ph.i.i48 ], [ %i.c, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i49) #37
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 184 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i50, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51, label %.lr.ph.i.i48, !llvm.loop !240

_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51:          ; preds = %.lr.ph.i.i48, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45
  %.not.i52 = icmp eq ptr %i.c, null
  br i1 %.not.i52, label %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EE13_M_deallocateEPS1_m.exit53, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !1838
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #40
  br label %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EE13_M_deallocateEPS1_m.exit53

_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EE13_M_deallocateEPS1_m.exit53: ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51, %bb.k
  store ptr %i.v, ptr %0, align 8, !tbaa !1836
  %i.ar = getelementptr inbounds nuw [184 x i8], ptr %i.w, i64 %1
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !1837
  %i.as = getelementptr inbounds nuw [184 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.h, align 8, !tbaa !1838
  br label %bb.l

bb.l:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EE13_M_deallocateEPS1_m.exit53, %bb.a
  ret void

bb.m:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #36
  unreachable

bb.n:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN20pyopencvVecConverterIN2cv4UMatEE4fromERKSt6vectorIS1_SaIS1_EEN6traits15BooleanConstantILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.PySafeObject, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1837
  %i.c = load ptr, ptr %0, align 8, !tbaa !1836
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 184                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.h = tail call ptr @PyTuple_New(i64 noundef %i.g) ; 8 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !1505
  %.not1925.i = icmp sgt i64 %i.f, 0
  br i1 %.not1925.i, label %.lr.ph.i, label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit

bb.b:                                             ; preds = %.critedge.i
  %i.i = add nuw nsw i64 %.01726.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %i.g
  br i1 %exitcond.not.i, label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit, label %.lr.ph.i, !llvm.loop !6671

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01726.i = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1836
  %i.k = getelementptr inbounds nuw [184 x i8], ptr %i.j, i64 %.01726.i
  %i.l = invoke noundef ptr @_Z13pyopencv_fromIN2cv4UMatEEP7_objectRKT_(ptr noundef nonnull align 8 dereferenceable(184) %i.k)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = invoke i32 @PyTuple_SetItem(ptr noundef %i.h, i64 noundef %.01726.i, ptr noundef nonnull %i.l)
          to label %.critedge.i unwind label %bb.e

.critedge.i:                                      ; preds = %bb.d
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.b

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12PySafeObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %.critedge.i, %bb.c
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.h, align 8, !tbaa !743  ; 2 uses
  %i.q = and i64 %i.p, 2147483648
  %.not5.i.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i.i, label %bb.h, label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i64 %i.p, -1                     ; 2 uses
  store i64 %i.r, ptr %i.h, align 8, !tbaa !743
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h)
          to label %_ZL25pyopencv_from_generic_vecIN2cv4UMatEEP7_objectRKSt6vectorIT_SaIS5_EE.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #36
  unreachable

end_hunk_3
begin_hunk_4_@_ZN20pyopencvVecConverterIN2cv6detail13ImageFeaturesEE2toEP7_objectRSt6vectorIS2_SaIS2_EERK7ArgInfo:bb.a
  br label %.lr.ph.i.preheader

bb.m:                                             ; preds = %bb.l
  %i.be = icmp ult i64 %i.au, %i.bb
  br i1 %i.be, label %bb.n, label %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw [224 x i8], ptr %i.ax, i64 %i.au ; 3 uses
  %.not.i.i41.i = icmp eq ptr %i.aw, %i.bf
  br i1 %.not.i.i41.i, label %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i, label %.lr.ph.i.i.i.i42.i

.lr.ph.i.i.i.i42.i:                               ; preds = %bb.n, %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i
  %.05.i.i.i.i43.i = phi ptr [ %i.bo, %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i ], [ %i.bf, %bb.n ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43.i, i64 40
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.bg) #37
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1971 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i44.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i44.i, label %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i42.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1972
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #40
  br label %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i

_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i: ; preds = %bb.o, %.lr.ph.i.i.i.i42.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i43.i, i64 224 ; 2 uses
  %.not.i.i.i.i46.i = icmp eq ptr %i.bo, %i.aw
  br i1 %.not.i.i.i.i46.i, label %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.i.i47.i, label %.lr.ph.i.i.i.i42.i, !llvm.loop !468

_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.i.i47.i: ; preds = %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i.i.i45.i
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !2289
  br label %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i

_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i: ; preds = %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.i.i47.i, %bb.n, %bb.m
  %.not3673.not.i = icmp eq i64 %i.au, 0
  br i1 %.not3673.not.i, label %_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i, %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.thread.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i
  %.03374.i = phi i64 [ %i.ct, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.bp = tail call ptr @PySequence_GetItem(ptr noundef nonnull %0, i64 noundef %.03374.i) ; 13 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !2288
  %i.br = getelementptr inbounds nuw [224 x i8], ptr %i.bq, i64 %.03374.i ; 3 uses
  %i.bs = icmp eq ptr %i.bp, null                 ; 2 uses
  %i.bt = icmp eq ptr %i.bp, @_Py_NoneStruct
  %or.cond.i.i49.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i49.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.bu = getelementptr i8, ptr %i.bp, i64 8
  %.val.i.i.i50.i = load ptr, ptr %i.bu, align 8, !tbaa !1414 ; 2 uses
  %.not.i.i.i.i51.i = icmp eq ptr %.val.i.i.i50.i, @_ZL37pyopencv_detail_ImageFeatures_TypeXXX
  br i1 %.not.i.i.i.i51.i, label %bb.q, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i52.i

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i52.i: ; preds = %bb.p
  %i.bv = invoke i32 @PyType_IsSubtype(ptr noundef %.val.i.i.i50.i, ptr noundef nonnull @_ZL37pyopencv_detail_ImageFeatures_TypeXXX)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i52.i
  %.not.i.i.i53.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i53.i, label %_ZL34pyopencv_detail_ImageFeatures_getpP7_objectRPN2cv6detail13ImageFeaturesE.exit.i.i55.i, label %bb.q

bb.q:                                             ; preds = %.noexc.i, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.br, ptr noundef nonnull align 8 dereferenceable(224) %i.bw, i64 12, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv8KeyPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %.noexc56.i unwind label %.loopexit.i ; 0 uses

.noexc56.i:                                       ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.cc = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.ca, ptr noundef nonnull align 8 dereferenceable(184) %i.cb)
          to label %.critedge.thread.i unwind label %.loopexit.i ; 0 uses

_ZL34pyopencv_detail_ImageFeatures_getpP7_objectRPN2cv6detail13ImageFeaturesE.exit.i.i55.i: ; preds = %.noexc.i
  %i.cd = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ce = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.6453, ptr noundef %i.cd)
          to label %_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit59.i unwind label %.loopexit.split-lp.i ; 0 uses

_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit59.i: ; preds = %_ZL34pyopencv_detail_ImageFeatures_getpP7_objectRPN2cv6detail13ImageFeaturesE.exit.i.i55.i
  %i.cf = load ptr, ptr %2, align 8, !tbaa !1423
  %i.cg = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.46, ptr noundef %i.cf, i64 noundef %.03374.i)
          to label %bb.s unwind label %.loopexit.split-lp.i ; 0 uses

.loopexit.i:                                      ; preds = %.noexc56.i, %bb.q, %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i52.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp.i:                             ; preds = %_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit59.i, %_ZL34pyopencv_detail_ImageFeatures_getpP7_objectRPN2cv6detail13ImageFeaturesE.exit.i.i55.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call fastcc void @_ZN12_GLOBAL__N_111SafeSeqItemD2Ev(ptr nonnull %i.bp) #37
  resume { ptr, i32 } %lpad.phi.i

bb.s:                                             ; preds = %_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit59.i
  %i.ch = load i64, ptr %i.bp, align 8, !tbaa !743 ; 2 uses
  %i.ci = and i64 %i.ch, 2147483648
  %.not2.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not2.i.i.i, label %bb.t, label %_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.t:                                             ; preds = %bb.s
  %i.cj = add nsw i64 %i.ch, -1                   ; 2 uses
  store i64 %i.cj, ptr %i.bp, align 8, !tbaa !743
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.u:                                             ; preds = %bb.t
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bp)
          to label %_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  br i1 %i.bs, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %.noexc56.i
  %i.cn = load i64, ptr %i.bp, align 8, !tbaa !743 ; 2 uses
  %i.co = and i64 %i.cn, 2147483648
  %.not2.i.i62.i = icmp eq i64 %i.co, 0
  br i1 %.not2.i.i62.i, label %bb.w, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i

bb.w:                                             ; preds = %.critedge.thread.i
  %i.cp = add nsw i64 %i.cn, -1                   ; 2 uses
  store i64 %i.cp, ptr %i.bp, align 8, !tbaa !743
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i

bb.x:                                             ; preds = %bb.w
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.bp)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #36
  unreachable

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i:      ; preds = %bb.x, %bb.w, %.critedge.thread.i, %.critedge.i
  %i.ct = add nuw i64 %.03374.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ct, %i.au
  br i1 %exitcond.not.i, label %_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit, label %.lr.ph.i, !llvm.loop !6866

_ZL23pyopencv_to_generic_vecIN2cv6detail13ImageFeaturesEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit: ; preds = %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i, %bb.a, %_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit.thread.i, %bb.i, %bb.k, %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i, %bb.s, %bb.t, %bb.u
  %.3.i = phi i1 [ false, %bb.k ], [ true, %bb.a ], [ false, %bb.i ], [ true, %_Z11pyopencv_toIN2cv6detail13ImageFeaturesEEbP7_objectRT_RK7ArgInfo.exit.thread.i ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.t ], [ true, %_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE6resizeEm.exit48.i ], [ true, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit63.i ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2289 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2288   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 224                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2290
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 224                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 41175768021673107
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 41175768021673106, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.01012.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.013.i.i.i, i8 0, i64 224, i1 false)
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.p, i32 noundef 0) #37
  %i.q = add nsw i64 %.01012.i.i.i, -1            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 224 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !6868

_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !2289
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 41175768021673106) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 224                ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #39 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 4 uses
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNKSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40
  %.013.i.i.i41 = phi ptr [ %i.aa, %.lr.ph.i.i.i40 ], [ %i.x, %_ZNKSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.01012.i.i.i42 = phi i64 [ %i.z, %.lr.ph.i.i.i40 ], [ %1, %_ZNKSt6vectorIN2cv6detail13ImageFeaturesESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.013.i.i.i41, i8 0, i64 224, i1 false)
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.y, i32 noundef 0) #37
  %i.z = add nsw i64 %.01012.i.i.i42, -1          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i41, i64 224
  %.not.i.i.i43 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i43, label %_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !6868

_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN2cv6detail13ImageFeaturesEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef nonnull %i.w)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv6detail13ImageFeaturesES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit45
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #37 ; 0 uses
  %i.af = getelementptr inbounds nuw [224 x i8], ptr %i.x, i64 %1
  invoke void @_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_(ptr noundef nonnull %i.x, ptr noundef nonnull %i.af)
          to label %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.k

_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.v) #40
  invoke void @__cxa_rethrow() #38
          to label %bb.l unwind label %bb.f

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ag

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv6detail13ImageFeaturesES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit45
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv6detail13ImageFeaturesES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv6detail13ImageFeaturesES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.ah) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1971 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1972
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #40
  br label %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 224 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !468

_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN2cv6detail13ImageFeaturesEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv6detail13ImageFeaturesES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not.i47 = icmp eq ptr %i.c, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE13_M_deallocateEPS2_m.exit48, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !2290
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.as) #40
  br label %_ZNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE13_M_deallocateEPS2_m.exit48

_ZNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE13_M_deallocateEPS2_m.exit48: ; preds = %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_.exit, %bb.i
  store ptr %i.w, ptr %0, align 8, !tbaa !2288
  %i.at = getelementptr inbounds nuw [224 x i8], ptr %i.x, i64 %1
  store ptr %i.at, ptr %i.a, align 8, !tbaa !2289
  %i.au = getelementptr inbounds nuw [224 x i8], ptr %i.w, i64 %i.u
  store ptr %i.au, ptr %i.h, align 8, !tbaa !2290
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6detail13ImageFeaturesEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6detail13ImageFeaturesESaIS2_EE13_M_deallocateEPS2_m.exit48, %bb.a
  ret void

bb.k:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #36
  unreachable

bb.l:                                             ; preds = %_ZSt8_DestroyIPN2cv6detail13ImageFeaturesES2_EvT_S4_RSaIT0_E.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN2cv6detail13ImageFeaturesEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not24 = icmp eq ptr %0, %1
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN2cv6detail13ImageFeaturesEJRKS2_EEvPT_DpOT0_.exit
  %.026 = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv6detail13ImageFeaturesEJRKS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01225 = phi ptr [ %i.ac, %_ZSt10_ConstructIN2cv6detail13ImageFeaturesEJRKS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.026, ptr noundef nonnull align 8 dereferenceable(224) %.01225, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.026, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01225, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01225, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2200 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1971 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = sdiv exact i64 %i.h, 28
  %i.j = icmp ugt i64 %i.i, 329406144173384850
  br i1 %i.j, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN2cv8KeyPointEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !745

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv8KeyPointEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #39
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN2cv8KeyPointEE8allocateEmPKv.exit.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN2cv8KeyPointEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !1971
  %i.m = getelementptr inbounds nuw i8, ptr %.026, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !2200
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr inbounds nuw i8, ptr %.026, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1972
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !2199 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !2199 ; 2 uses
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.l, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %.noexc13 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.04.08.i.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !2201
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !470

_ZNSt6vectorIN2cv8KeyPointESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc13 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !2200
  %i.t = getelementptr inbounds nuw i8, ptr %.026, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.01225, i64 40
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.u)
          to label %_ZSt10_ConstructIN2cv6detail13ImageFeaturesEJRKS2_EEvPT_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EEC2ERKS3_.exit.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1971 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.026, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1972
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #40
  br label %.body

_ZSt10_ConstructIN2cv6detail13ImageFeaturesEJRKS2_EEvPT_DpOT0_.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EEC2ERKS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01225, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.026, i64 224 ; 2 uses
  %.not = icmp eq ptr %i.ac, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6869

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN2cv8KeyPointEE8allocateEmPKv.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %i.ae) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2cv6detail13ImageFeaturesEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.026)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #38
end_hunk_4
begin_hunk_5_@_ZN20pyopencvVecConverterIN2cv15line_descriptor7KeyLineEE2toEP7_objectRSt6vectorIS2_SaIS2_EERK7ArgInfo:bb.a
  br label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.i:                                             ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i, %bb.b
  %i.ac = tail call i32 @PySequence_Check(ptr noundef nonnull %0)
  %.not35.i = icmp eq i32 %i.ac, 0
  br i1 %.not35.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ae = tail call noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.45, ptr noundef %i.ad) ; 0 uses
  br label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.k:                                             ; preds = %bb.i
  %i.af = tail call i64 @PySequence_Size(ptr noundef nonnull %0) ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2692 ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !2690  ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 68                ; 3 uses
  %i.an = icmp ugt i64 %i.af, %i.am
  br i1 %i.an, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.thread.i, label %bb.l

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.thread.i: ; preds = %bb.k
  %i.ao = sub nuw i64 %i.af, %i.am
  tail call void @_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ao)
  br label %.lr.ph.i.preheader

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp ult i64 %i.af, %i.am
  br i1 %i.ap, label %bb.m, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw [68 x i8], ptr %i.ai, i64 %i.af ; 2 uses
  %.not.i.i40.i = icmp eq ptr %i.ah, %i.aq
  br i1 %.not.i.i40.i, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i, label %_ZSt8_DestroyIPN2cv15line_descriptor7KeyLineES2_EvT_S4_RSaIT0_E.exit.i.i41.i

_ZSt8_DestroyIPN2cv15line_descriptor7KeyLineES2_EvT_S4_RSaIT0_E.exit.i.i41.i: ; preds = %bb.m
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !2692
  br label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i: ; preds = %_ZSt8_DestroyIPN2cv15line_descriptor7KeyLineES2_EvT_S4_RSaIT0_E.exit.i.i41.i, %bb.m, %bb.l
  %.not3665.not.i = icmp eq i64 %i.af, 0
  br i1 %.not3665.not.i, label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i, %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.thread.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i
  %.03366.i = phi i64 [ %i.bp, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i ], [ 0, %.lr.ph.i.preheader ] ; 4 uses
  %i.ar = tail call ptr @PySequence_GetItem(ptr noundef nonnull %0, i64 noundef %.03366.i) ; 11 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !2690
  %i.at = getelementptr inbounds nuw [68 x i8], ptr %i.as, i64 %.03366.i
  %i.au = icmp eq ptr %i.ar, null                 ; 2 uses
  %i.av = icmp eq ptr %i.ar, @_Py_NoneStruct
  %or.cond.i.i43.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i43.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr i8, ptr %i.ar, i64 8
  %.val.i.i.i44.i = load ptr, ptr %i.aw, align 8, !tbaa !1414 ; 2 uses
  %.not.i.i.i.i45.i = icmp eq ptr %.val.i.i.i44.i, @_ZL40pyopencv_line_descriptor_KeyLine_TypeXXX
  br i1 %.not.i.i.i.i45.i, label %.critedge.thread.i, label %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46.i

_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46.i: ; preds = %bb.n
  %i.ax = invoke i32 @PyType_IsSubtype(ptr noundef %.val.i.i.i44.i, ptr noundef nonnull @_ZL40pyopencv_line_descriptor_KeyLine_TypeXXX)
          to label %.noexc.i unwind label %.loopexit.i

.noexc.i:                                         ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46.i
  %.not.i.i.i47.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i47.i, label %_ZL37pyopencv_line_descriptor_KeyLine_getpP7_objectRPN2cv15line_descriptor7KeyLineE.exit.i.i49.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.noexc.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.at, ptr noundef nonnull align 8 dereferenceable(68) %i.ay, i64 68, i1 false), !tbaa.struct !2694
  br label %bb.t

_ZL37pyopencv_line_descriptor_KeyLine_getpP7_objectRPN2cv15line_descriptor7KeyLineE.exit.i.i49.i: ; preds = %.noexc.i
  %i.az = load ptr, ptr %2, align 8, !tbaa !1423
  %i.ba = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.7873, ptr noundef %i.az)
          to label %_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit51.i unwind label %.loopexit.split-lp.i ; 0 uses

_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit51.i: ; preds = %_ZL37pyopencv_line_descriptor_KeyLine_getpP7_objectRPN2cv15line_descriptor7KeyLineE.exit.i.i49.i
  %i.bb = load ptr, ptr %2, align 8, !tbaa !1423
  %i.bc = invoke noundef i32 (ptr, ...) @_Z7failmsgPKcz(ptr noundef nonnull @.str.46, ptr noundef %i.bb, i64 noundef %.03366.i)
          to label %bb.p unwind label %.loopexit.split-lp.i ; 0 uses

.loopexit.i:                                      ; preds = %_ZL18PyObject_TypeCheckP7_objectP11_typeobject.exit.i.i.i46.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit51.i, %_ZL37pyopencv_line_descriptor_KeyLine_getpP7_objectRPN2cv15line_descriptor7KeyLineE.exit.i.i49.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  tail call fastcc void @_ZN12_GLOBAL__N_111SafeSeqItemD2Ev(ptr nonnull %i.ar) #37
  resume { ptr, i32 } %lpad.phi.i

bb.p:                                             ; preds = %_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit51.i
  %i.bd = load i64, ptr %i.ar, align 8, !tbaa !743 ; 2 uses
  %i.be = and i64 %i.bd, 2147483648
  %.not2.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not2.i.i.i, label %bb.q, label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i64 %i.bd, -1                   ; 2 uses
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !743
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ar)
          to label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #36
  unreachable

.critedge.i:                                      ; preds = %.lr.ph.i
  br i1 %i.au, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i, label %bb.t

bb.t:                                             ; preds = %.critedge.i, %.critedge.thread.i
  %i.bj = load i64, ptr %i.ar, align 8, !tbaa !743 ; 2 uses
  %i.bk = and i64 %i.bj, 2147483648
  %.not2.i.i54.i = icmp eq i64 %i.bk, 0
  br i1 %.not2.i.i54.i, label %bb.u, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i

bb.u:                                             ; preds = %bb.t
  %i.bl = add nsw i64 %i.bj, -1                   ; 2 uses
  store i64 %i.bl, ptr %i.ar, align 8, !tbaa !743
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i

bb.v:                                             ; preds = %bb.u
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.ar)
          to label %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #36
  unreachable

_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i:      ; preds = %bb.v, %bb.u, %bb.t, %.critedge.i
  %i.bp = add nuw i64 %.03366.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bp, %i.af
  br i1 %exitcond.not.i, label %_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit, label %.lr.ph.i, !llvm.loop !8798

_ZL23pyopencv_to_generic_vecIN2cv15line_descriptor7KeyLineEEbP7_objectRSt6vectorIT_SaIS6_EERK7ArgInfo.exit: ; preds = %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i, %bb.a, %_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit.thread.i, %bb.h, %bb.j, %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i, %bb.p, %bb.q, %bb.r
  %.3.i = phi i1 [ false, %bb.j ], [ true, %bb.a ], [ false, %bb.h ], [ true, %_Z11pyopencv_toIN2cv15line_descriptor7KeyLineEEbP7_objectRT_RK7ArgInfo.exit.thread.i ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.q ], [ true, %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE6resizeEm.exit42.i ], [ true, %_ZN12_GLOBAL__N_111SafeSeqItemD2Ev.exit55.i ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2692 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2690   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 68                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2691
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 68                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 135637824071393762
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 135637824071393761, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01012.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 12
  store <2 x float> zeroinitializer, ptr %i.p, align 4, !tbaa !1450
  %i.q = add nsw i64 %.01012.i.i.i.prol, -1       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 68 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8799

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01012.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 12
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !1450
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 80
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !1450
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 148
  store <2 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !1450
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 216
  store <2 x float> zeroinitializer, ptr %i.w, align 4, !tbaa !1450
  %i.x = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 284
  store <2 x float> zeroinitializer, ptr %i.x, align 4, !tbaa !1450
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 352
  store <2 x float> zeroinitializer, ptr %i.y, align 4, !tbaa !1450
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 420
  store <2 x float> zeroinitializer, ptr %i.z, align 4, !tbaa !1450
  %i.aa = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 488
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !1450
  %i.ab = add nsw i64 %.01012.i.i.i, -8           ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 544 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !8800

_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !2692
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 135637824071393761) ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 68
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #39 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.013.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.01012.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 12
  store <2 x float> zeroinitializer, ptr %i.aj, align 4, !tbaa !1450
  %i.ak = add nsw i64 %.01012.i.i.i32.prol, -1    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.prol, i64 68 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !8801

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit
  %.013.i.i.i31.unr = phi ptr [ %i.ai, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.al, %.lr.ph.i.i.i30.prol ]
  %.01012.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i30.prol ]
  %i.am = icmp ult i64 %1, 8
  br i1 %i.am, label %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.aw, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.01012.i.i.i32 = phi i64 [ %i.av, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 12
  store <2 x float> zeroinitializer, ptr %i.an, align 4, !tbaa !1450
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 80
  store <2 x float> zeroinitializer, ptr %i.ao, align 4, !tbaa !1450
  %i.ap = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 148
  store <2 x float> zeroinitializer, ptr %i.ap, align 4, !tbaa !1450
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 216
  store <2 x float> zeroinitializer, ptr %i.aq, align 4, !tbaa !1450
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 284
  store <2 x float> zeroinitializer, ptr %i.ar, align 4, !tbaa !1450
  %i.as = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 352
  store <2 x float> zeroinitializer, ptr %i.as, align 4, !tbaa !1450
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 420
  store <2 x float> zeroinitializer, ptr %i.at, align 4, !tbaa !1450
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 488
  store <2 x float> zeroinitializer, ptr %i.au, align 4, !tbaa !1450
  %i.av = add nsw i64 %.01012.i.i.i32, -8         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 544
  %.not.i.i.i33.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !8800

_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i37 ], [ %i.ah, %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(68) %.0911.i.i.i, i64 68, i1 false), !tbaa.struct !2694, !alias.scope !8806
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 68 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 68
  %.not.i.i.i38 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !8805

_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv15line_descriptor7KeyLineESaIS2_EE13_M_deallocateEPS2_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !2691
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #40
  br label %_ZNSt12_Vector_baseIN2cv15line_descriptor7KeyLineESaIS2_EE13_M_deallocateEPS2_m.exit41

_ZNSt12_Vector_baseIN2cv15line_descriptor7KeyLineESaIS2_EE13_M_deallocateEPS2_m.exit41: ; preds = %_ZNSt6vectorIN2cv15line_descriptor7KeyLineESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.ah, ptr %0, align 8, !tbaa !2690
  %i.bc = getelementptr inbounds nuw [68 x i8], ptr %i.ai, i64 %1
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !2692
  %i.bd = getelementptr inbounds nuw [68 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr %i.h, align 8, !tbaa !2691
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv15line_descriptor7KeyLineEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv15line_descriptor7KeyLineESaIS2_EE13_M_deallocateEPS2_m.exit41, %bb.a
  ret void
}

declare void @_ZN2cv15line_descriptor15drawLineMatchesERKNS_3MatERKSt6vectorINS0_7KeyLineESaIS5_EES3_S9_RKS4_INS_6DMatchESaISA_EERS1_RKNS_7Scalar_IdEESJ_RKS4_IcSaIcEEi(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL40pyopencv_cv_linemod_ColorGradient_createP7_objectS0_S0_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %3 = alloca %"struct.cv::Ptr.1494", align 16    ; 8 uses
  %i.g = alloca [4 x ptr], align 16               ; 7 uses
  %4 = alloca %class.ArgInfo, align 8             ; 7 uses
  %5 = alloca %class.ArgInfo, align 8             ; 7 uses
  %6 = alloca %class.ArgInfo, align 8             ; 7 uses
  %7 = alloca %"struct.cv::Ptr.1494", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store ptr null, ptr %i.a, align 8, !tbaa !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  store ptr null, ptr %i.c, align 8, !tbaa !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i64 0, ptr %i.d, align 8, !tbaa !781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store ptr null, ptr %i.e, align 8, !tbaa !1377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.g, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZL55pyopencv_cv_linemod_linemod_ColorGradient_create_staticP7_objectS0_S0_.keywords, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.h = invoke i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.7894, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.b unwind label %bb.z

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1377
  store ptr @.str.7891, ptr %4, align 8, !tbaa !1423
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.j, align 8
  %i.k = invoke fastcc noundef zeroext i1 @_ZL16pyopencv_to_safeIfEbP7_objectRT_RK7ArgInfo(ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %bb.d unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !1377
  store ptr @.str.7892, ptr %5, align 8, !tbaa !1423
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.m, align 8
  %i.n = invoke fastcc noundef zeroext i1 @_ZL16pyopencv_to_safeImEbP7_objectRT_RK7ArgInfo(ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %bb.f unwind label %bb.ab

bb.f:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !1377
  store ptr @.str.7893, ptr %6, align 8, !tbaa !1423
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.p, align 8
  %i.q = invoke fastcc noundef zeroext i1 @_ZL16pyopencv_to_safeIfEbP7_objectRT_RK7ArgInfo(ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %bb.h unwind label %bb.ac

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %i.q, label %bb.i, label %_Z13pyopencv_fromIN2cv3PtrINS0_7linemod13ColorGradientEEEEP7_objectRKT_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.r = invoke ptr @PyEval_SaveThread()
          to label %_ZN14PyAllowThreadsC2Ev.exit unwind label %bb.af ; 2 uses

_ZN14PyAllowThreadsC2Ev.exit:                     ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.s = load float, ptr %i.b, align 4, !tbaa !1450
  %i.t = load i64, ptr %i.d, align 8, !tbaa !781
  %i.u = load float, ptr %i.f, align 4, !tbaa !1450
  invoke void @_ZN2cv7linemod13ColorGradient6createEfmf(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.1494") align 8 %7, float noundef %i.s, i64 noundef %i.t, float noundef %i.u)
          to label %bb.j unwind label %bb.ag

bb.j:                                             ; preds = %_ZN14PyAllowThreadsC2Ev.exit
  %i.v = load ptr, ptr %7, align 8, !tbaa !2697
  store ptr %i.v, ptr %3, align 16, !tbaa !2697
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !737  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN2cv7linemod13ColorGradientELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.k
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !744
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !744
  br label %_ZN2cv3PtrINS_7linemod13ColorGradientEEaSERKS3_.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.z, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !737 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZN2cv3PtrINS_7linemod13ColorGradientEEaSERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8, !tbaa !739
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !740
  %i.aj = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !742
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #37, !inline_history !576
  %i.am = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !742
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #37, !inline_history !576
  br label %_ZN2cv3PtrINS_7linemod13ColorGradientEEaSERKS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i9.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.q, label %_ZN2cv3PtrINS_7linemod13ColorGradientEEaSERKS3_.exit, !prof !745

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #37
end_hunk_5
begin_hunk_6_@_ZNSt15_Sp_counted_ptrIPN2cv6detail14PyObjectHolder4ImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv6detail14PyObjectHolder4ImplELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.162") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEE, i64 16), ptr %i.a, align 8, !tbaa !742
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !737  ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !734
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !734
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEC2IRS4_EEOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !744
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !744
  br label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEC2IRS4_EEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEC2IRS4_EEOT_.exit

_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEC2IRS4_EEOT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !1516
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEE, i64 16), ptr %0, align 8, !tbaa !742
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !737  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2cv6detail14PyObjectHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !739
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !740
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !742
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !86
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !742
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !86
  br label %_ZN2cv6detail14PyObjectHolderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2cv6detail14PyObjectHolderD2Ev.exit, !prof !745

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_ZN2cv6detail14PyObjectHolderD2Ev.exit

_ZN2cv6detail14PyObjectHolderD2Ev.exit:           ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implINS_6detail14PyObjectHolderEEE, i64 16), ptr %0, align 8, !tbaa !742
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !737  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !739
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !740
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !742
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !12943
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !742
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !12943
  br label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev.exit, !prof !745

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !12944
  br label %_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev.exit

_ZN2cv4util3any11holder_implINS_6detail14PyObjectHolderEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1502 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1503   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 432                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2521
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 432                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 21350398233460130
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 21350398233460129, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.08.i.i.i.prol, i8 0, i64 112, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !776
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 432 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !12945

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.08.i.i.i, i8 0, i64 112, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !776
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 432
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 440
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.y, i8 0, i64 112, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !776
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 0, i64 32, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 864
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 872
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ac, i8 0, i64 112, i1 false)
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !776
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 928
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1296
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1304
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.ag, i8 0, i64 112, i1 false)
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !776
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false)
  %i.ak = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1728 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !12946

_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1502
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 21350398233460129) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 432
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #39 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter45 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit ]
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.08.i.i.i31.prol, i8 0, i64 112, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !776
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  %i.av = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 432 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !12947

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %.08.i.i.i31, i8 0, i64 112, i1 false)
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !776
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 432
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 440
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.bb, i8 0, i64 112, i1 false)
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !776
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 864
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 872
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 888
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.bf, i8 0, i64 112, i1 false)
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !776
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 928
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i8 0, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 1296
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 1304
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 1320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(432) %i.bj, i8 0, i64 112, i1 false)
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !776
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i8 0, i64 32, i1 false)
  %i.bn = add nsw i64 %.057.i.i.i32, -4           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 1728
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !12946

_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not12.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.cc, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35 ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12953)
  %i.bp = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1491, !alias.scope !12953, !noalias !12952 ; 2 uses
  store i64 %i.bp, ptr %.014.i.i.i, align 8, !tbaa !1491, !alias.scope !12952, !noalias !12953
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @constinit.18325, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !734, !noalias !12954
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  invoke void %i.br(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt)
          to label %_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEC2EOSD_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #36
  unreachable

_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  %i.bw = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1491, !alias.scope !12953, !noalias !12952
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr @constinit.7534, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !734, !noalias !12954
  invoke void %i.by(ptr noundef nonnull %i.bt)
          to label %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEC2EOSD_.exit.i.i.i.i
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  tail call void @__clang_call_terminate(ptr %i.ca) #36
  unreachable

_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEEC2EOSD_.exit.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 432 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 432
  %.not.i.i.i38 = icmp eq ptr %i.cb, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i37, !llvm.loop !12951

_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE13_M_deallocateEPSE_m.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !2521
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #40
  br label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE13_M_deallocateEPSE_m.exit41

_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE13_M_deallocateEPSE_m.exit41: ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %bb.g
  store ptr %i.aq, ptr %0, align 8, !tbaa !1503
  %i.cg = getelementptr inbounds nuw [432 x i8], ptr %i.ar, i64 %1
  store ptr %i.cg, ptr %i.a, align 8, !tbaa !1502
  %i.ch = getelementptr inbounds nuw [432 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.ch, ptr %i.h, align 8, !tbaa !2521
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEEmSE_ET_SG_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv4util7variantIJNS0_4gapi3wip4draw4TextENS5_5FTextENS5_4RectENS5_6CircleENS5_4LineENS5_6MosaicENS5_5ImageENS5_4PolyEEEESaISE_EE13_M_deallocateEPSE_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hIS5_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !776
  %i.b = load ptr, ptr %1, align 8, !tbaa !779    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !780  ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN2cv4gapi3wip4draw4TextC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !779
  %i.i = load i64, ptr %i.c, align 8, !tbaa !743
  store i64 %i.i, ptr %i.a, align 8, !tbaa !743
  br label %_ZN2cv4gapi3wip4draw4TextC2EOS3_.exit

_ZN2cv4gapi3wip4draw4TextC2EOS3_.exit:            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !780
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !780
  store ptr %i.c, ptr %1, align 8, !tbaa !779
  store i64 0, ptr %i.j, align 8, !tbaa !780
  store i8 0, ptr %i.c, align 8, !tbaa !743
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false), !tbaa !1427
  %i.q = load double, ptr %i.p, align 8, !tbaa !1427
  store double %i.q, ptr %i.o, align 8, !tbaa !1427
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load double, ptr %i.r, align 8, !tbaa !1427
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.s, ptr %i.t, align 8, !tbaa !1427
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load double, ptr %i.u, align 8, !tbaa !1427
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.v, ptr %i.w, align 8, !tbaa !1427
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load double, ptr %i.x, align 8, !tbaa !1427
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.y, ptr %i.z, align 8, !tbaa !1427
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aa, ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hIS6_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !12955
  %i.b = load ptr, ptr %1, align 8, !tbaa !2585   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12956 ; 2 uses
  %i.g = icmp ult i64 %i.f, 4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  %i.i = tail call ptr @wmemcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, i64 noundef %i.h) #37 ; 0 uses
  br label %_ZN2cv4gapi3wip4draw5FTextC2EOS3_.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !2585
  %i.j = load i64, ptr %i.c, align 8, !tbaa !743
  store i64 %i.j, ptr %i.a, align 8, !tbaa !743
  br label %_ZN2cv4gapi3wip4draw5FTextC2EOS3_.exit

_ZN2cv4gapi3wip4draw5FTextC2EOS3_.exit:           ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12956
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !12956
  store ptr %i.c, ptr %1, align 8, !tbaa !2585
  store i64 0, ptr %i.k, align 8, !tbaa !12956
  store i32 0, ptr %i.c, align 8, !tbaa !12958
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false), !tbaa !1427
  %i.r = load double, ptr %i.q, align 8, !tbaa !1427
  store double %i.r, ptr %i.p, align 8, !tbaa !1427
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load double, ptr %i.s, align 8, !tbaa !1427
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.t, ptr %i.u, align 8, !tbaa !1427
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = load double, ptr %i.v, align 8, !tbaa !1427
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.w, ptr %i.x, align 8, !tbaa !1427
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !1427
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.z, ptr %i.aa, align 8, !tbaa !1427
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hIS7_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i64 16, i1 false), !tbaa.struct !1492
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !1427
  %i.c = load double, ptr %i.b, align 8, !tbaa !1427
  store double %i.c, ptr %i.a, align 8, !tbaa !1427
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !1427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.e, ptr %i.f, align 8, !tbaa !1427
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !1427
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.h, ptr %i.i, align 8, !tbaa !1427
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !1427
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.k, ptr %i.l, align 8, !tbaa !1427
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.n, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hIS8_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !1427
  %i.c = load double, ptr %i.b, align 8, !tbaa !1427
  store double %i.c, ptr %i.a, align 8, !tbaa !1427
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !1427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.e, ptr %i.f, align 8, !tbaa !1427
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !1427
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.h, ptr %i.i, align 8, !tbaa !1427
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !1427
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.k, ptr %i.l, align 8, !tbaa !1427
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.n, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hIS9_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !1427
  %i.c = load double, ptr %i.b, align 8, !tbaa !1427
  store double %i.c, ptr %i.a, align 8, !tbaa !1427
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !1427
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.e, ptr %i.f, align 8, !tbaa !1427
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !1427
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.h, ptr %i.i, align 8, !tbaa !1427
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !1427
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.k, ptr %i.l, align 8, !tbaa !1427
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.n, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hISA_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !1499
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hISB_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !744
  store i64 %i.a, ptr %0, align 8, !tbaa !744
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.c) #37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e) #37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS_4gapi3wip4draw4TextENS4_5FTextENS4_4RectENS4_6CircleENS4_4LineENS4_6MosaicENS4_5ImageENS4_4PolyEEE6mctr_hISC_E4helpEPNSt15aligned_storageILm424ELm8EE4typeEPv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !1498
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !1498
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1497
  store ptr %i.d, ptr %i.b, align 8, !tbaa !1497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !1427
  %i.g = load double, ptr %i.f, align 8, !tbaa !1427
  store double %i.g, ptr %i.e, align 8, !tbaa !1427
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !1427
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.i, ptr %i.j, align 8, !tbaa !1427
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !1427
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.l, ptr %i.m, align 8, !tbaa !1427
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load double, ptr %i.n, align 8, !tbaa !1427
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.o, ptr %i.p, align 8, !tbaa !1427
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, ptr noundef nonnull align 8 dereferenceable(12) %i.r, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1512 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1513   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2488
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 56                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 164703072086692426
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 164703072086692425, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store i64 0, ptr %.08.i.i.i.prol, align 8, !tbaa !1508
  %i.p = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 56 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !12959

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.prol ]
  %i.r = icmp ult i64 %1, 8
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store i64 0, ptr %.08.i.i.i, align 8, !tbaa !1508
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 56
  store i64 0, ptr %i.s, align 8, !tbaa !1508
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store i64 0, ptr %i.t, align 8, !tbaa !1508
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 168
  store i64 0, ptr %i.u, align 8, !tbaa !1508
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store i64 0, ptr %i.v, align 8, !tbaa !1508
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 280
  store i64 0, ptr %i.w, align 8, !tbaa !1508
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 336
  store i64 0, ptr %i.x, align 8, !tbaa !1508
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 392
  store i64 0, ptr %i.y, align 8, !tbaa !1508
  %i.z = add nsw i64 %.057.i.i.i, -8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 448 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !12960

_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.aa, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1512
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ult i64 %i.n, %1
  br i1 %i.ab, label %bb.d, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ac = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 164703072086692425) ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 56
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #39 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.f ; 3 uses
  %xtraiter45 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i30.prol ], [ %i.ag, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ah, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit ]
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit ]
  store i64 0, ptr %.08.i.i.i31.prol, align 8, !tbaa !1508
  %i.ah = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 56 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !12961

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ag, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit ], [ %i.ai, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE12_M_check_lenEmPKc.exit ], [ %i.ah, %.lr.ph.i.i.i30.prol ]
  %i.aj = icmp ult i64 %1, 8
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.as, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.ar, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  store i64 0, ptr %.08.i.i.i31, align 8, !tbaa !1508
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 56
  store i64 0, ptr %i.ak, align 8, !tbaa !1508
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store i64 0, ptr %i.al, align 8, !tbaa !1508
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 168
  store i64 0, ptr %i.am, align 8, !tbaa !1508
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store i64 0, ptr %i.an, align 8, !tbaa !1508
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 280
  store i64 0, ptr %i.ao, align 8, !tbaa !1508
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 336
  store i64 0, ptr %i.ap, align 8, !tbaa !1508
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 392
  store i64 0, ptr %i.aq, align 8, !tbaa !1508
  %i.ar = add nsw i64 %.057.i.i.i32, -8           ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 448
  %.not.i.i.i33.7 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !12960

_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not12.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not12.i.i.i, label %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i
  %.014.i.i.i = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.af, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35 ] ; 3 uses
  %.0913.i.i.i = phi ptr [ %i.bf, %_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12966)
  %i.at = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1508, !alias.scope !12966, !noalias !12965 ; 2 uses
  store i64 %i.at, ptr %.014.i.i.i, align 8, !tbaa !1508, !alias.scope !12965, !noalias !12966
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @constinit.7448, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !734, !noalias !12967
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 8 ; 2 uses
  invoke void %i.av(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax)
          to label %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #36
  unreachable

_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  %i.ba = load i64, ptr %.0913.i.i.i, align 8, !tbaa !1508, !alias.scope !12966, !noalias !12965
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @constinit.7451, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !734, !noalias !12967
  invoke void %i.bc(ptr noundef nonnull %i.ax)
          to label %_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #36
  unreachable

_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN2cv4util7variantIJNS0_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEC2EOS8_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0913.i.i.i, i64 56 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 56
  %.not.i.i.i38 = icmp eq ptr %i.bf, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i37, !llvm.loop !538

_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE13_M_deallocateEPS9_m.exit41, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !2488
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #40
  br label %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE13_M_deallocateEPS9_m.exit41

_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE13_M_deallocateEPS9_m.exit41: ; preds = %_ZNSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %bb.g
  store ptr %i.af, ptr %0, align 8, !tbaa !1513
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.ag, i64 %1
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !1512
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.bl, ptr %i.h, align 8, !tbaa !2488
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEEmS9_ET_SB_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE13_M_deallocateEPS9_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1521 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1520   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE15_M_erase_at_endEPS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1516 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !742
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #37, !inline_history !12968
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !737  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !739
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !740
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !742
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37, !inline_history !12969
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !742
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37, !inline_history !12969
  br label %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !743
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !744
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i, !prof !745

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #37
  br label %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i

_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i:          ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.f, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !779 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !743
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #40
  br label %_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i: ; preds = %_ZN2cv4gapi8GBackendD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv4gapi9GNetParamES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !667

_ZSt8_DestroyIPN2cv4gapi9GNetParamES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN2cv4gapi9GNetParamEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !1521
  br label %_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE15_M_erase_at_endEPS2_.exit: ; preds = %_ZSt8_DestroyIPN2cv4gapi9GNetParamES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1521 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1520   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN2cv4gapi9GNetParamESaIS2_EE17_M_default_appendEm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN2cv4gapi9GNetParamEmEET_S6_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq i64 %1, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]  ; 8 uses
  %.01015 = phi i64 [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr %.016, align 8, !tbaa !776
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !780
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 32
  invoke void @_ZN2cv4gapi8GBackendC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = load ptr, ptr %.016, align 8, !tbaa !779 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !743
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #40
  br label %.body

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 48
  store ptr null, ptr %i.i, align 8, !tbaa !2296
  %i.j = add i64 %.01015, -1                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 56 ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12977

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = extractvalue { ptr, i32 } %i.d, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #37 ; 0 uses
  invoke void @_ZSt8_DestroyIPN2cv4gapi9GNetParamEEvT_S4_(ptr noundef %0, ptr noundef nonnull %.016)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #38
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.k, %bb.c ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %.body
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #36
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1524 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1525   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 72                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1516 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !742
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #37, !inline_history !12978
  br label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !733  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.t = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i:         ; preds = %bb.e, %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i
  %i.w = load ptr, ptr %.05.i.i.i, align 8, !tbaa !779 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !743
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #40
  br label %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !87

_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN2cv11GCompileArgEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !1524
  br label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN2cv11GCompileArgES1_EvT_S3_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1524 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1525   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 72                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2615
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 72                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 128102389400760776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 128102389400760775, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.057.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.p, ptr %.08.i.i.i.prol, align 8, !tbaa !776
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !780
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %i.s = add nsw i64 %.057.i.i.i.prol, -1         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !12979

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %.08.i.i.i, align 8, !tbaa !776
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !780
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !776
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store i64 0, ptr %i.aa, align 8, !tbaa !780
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !776
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 152
  store i64 0, ptr %i.ae, align 8, !tbaa !780
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, i8 0, i64 40, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 216
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !776
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 224
  store i64 0, ptr %i.ai, align 8, !tbaa !780
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 40, i1 false)
  %i.ak = add nsw i64 %.057.i.i.i, -4             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !12980

_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1524
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.am = icmp ult i64 %i.n, %1
  br i1 %i.am, label %bb.d, label %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #38
  unreachable

_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.an = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.an, i64 128102389400760775) ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 72
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #39 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f ; 3 uses
  %xtraiter49 = and i64 %1, 3                     ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i30.prol ], [ %i.ar, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.057.i.i.i32.prol = phi i64 [ %i.av, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit ]
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store ptr %i.as, ptr %.08.i.i.i31.prol, align 8, !tbaa !776
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 8
  store i64 0, ptr %i.at, align 8, !tbaa !780
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, i8 0, i64 40, i1 false)
  %i.av = add nsw i64 %.057.i.i.i32.prol, -1      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 72 ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !12981

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN2cv11GCompileArgESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.av, %.lr.ph.i.i.i30.prol ]
  %i.ax = icmp ult i64 %1, 4
  br i1 %i.ax, label %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 17 uses
  %.057.i.i.i32 = phi i64 [ %i.bn, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store ptr %i.ay, ptr %.08.i.i.i31, align 8, !tbaa !776
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !780
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i8 0, i64 40, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 88 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !776
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store i64 0, ptr %i.bd, align 8, !tbaa !780
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, i8 0, i64 40, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !776
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 152
  store i64 0, ptr %i.bh, align 8, !tbaa !780
  %i.bi = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i8 0, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !776
  %i.bl = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 224
  store i64 0, ptr %i.bl, align 8, !tbaa !780
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i8 0, i64 40, i1 false)
  %i.bn = add nsw i64 %.057.i.i.i32, -4           ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 288
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !12980

_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35, %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.cn, %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.cm, %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12987)
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.bp, ptr %.012.i.i.i, align 8, !tbaa !776, !alias.scope !12986, !noalias !12987
  %i.bq = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !779, !alias.scope !12987, !noalias !12986 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i37
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !780, !alias.scope !12987, !noalias !12986 ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 16
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !12988
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i37
  store ptr %i.bq, ptr %.012.i.i.i, align 8, !tbaa !779, !alias.scope !12986, !noalias !12987
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !743, !alias.scope !12987, !noalias !12986
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !743, !alias.scope !12986, !noalias !12987
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !780, !alias.scope !12987, !noalias !12986
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.by = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.bu, %bb.e ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !780, !alias.scope !12986, !noalias !12987
  store ptr %i.br, ptr %.0911.i.i.i, align 8, !tbaa !779, !alias.scope !12987, !noalias !12986
  store i64 0, ptr %i.bz, align 8, !tbaa !780, !alias.scope !12987, !noalias !12986
  store i8 0, ptr %i.br, align 8, !tbaa !743, !alias.scope !12987, !noalias !12986
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i8 0, i64 24, i1 false), !alias.scope !12986, !noalias !12987
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !3386, !alias.scope !12987, !noalias !12986
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !3386, !alias.scope !12986, !noalias !12987
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !733, !alias.scope !12987, !noalias !12986 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i

_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 16, i1 false), !tbaa.struct !802, !alias.scope !12988
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !733, !alias.scope !12986, !noalias !12987
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !alias.scope !12987, !noalias !12986
  br label %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN2cv4util3anyD2Ev.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1516, !alias.scope !12987, !noalias !12986
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !1516, !alias.scope !12986, !noalias !12987
  store ptr null, ptr %i.ck, align 8, !tbaa !1516, !alias.scope !12987, !noalias !12986
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %.not.i.i.i38 = icmp eq ptr %i.cm, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !12985

_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN2cv11GCompileArgES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv11GCompileArgESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !2615
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cq) #40
  br label %_ZNSt12_Vector_baseIN2cv11GCompileArgESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv11GCompileArgESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv11GCompileArgESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.f
  store ptr %i.aq, ptr %0, align 8, !tbaa !1525
  %i.cr = getelementptr inbounds nuw [72 x i8], ptr %i.ar, i64 %1
  store ptr %i.cr, ptr %i.a, align 8, !tbaa !1524
  %i.cs = getelementptr inbounds nuw [72 x i8], ptr %i.aq, i64 %i.ao
  store ptr %i.cs, ptr %i.h, align 8, !tbaa !2615
  br label %bb.g

bb.g:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv11GCompileArgEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv11GCompileArgESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(72) ptr @_ZN2cv11GCompileArgaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::util::any", align 8     ; 5 uses
  %3 = alloca %"class.std::function.1391", align 16 ; 11 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !733  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEC2ERKS9_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !734
  br label %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEC2ERKS9_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !733 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #36
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.h

_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEC2ERKS9_.exit.i: ; preds = %bb.c, %bb.a
  %i.m = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.g, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !802
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !743
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !tbaa !734
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !734  ; 2 uses
  store <2 x ptr> %i.o, ptr %i.b, align 16, !tbaa !734
  store <2 x ptr> %i.m, ptr %i.n, align 8, !tbaa !734
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEC2ERKS9_.exit.i
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #36
  unreachable

_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit: ; preds = %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEC2ERKS9_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1516 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i4, label %_ZN2cv4util3anyC2ERKS1_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !742
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.162") align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.v), !inline_history !713
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !1516
  br label %_ZN2cv4util3anyC2ERKS1_.exit.i

_ZN2cv4util3anyC2ERKS1_.exit.i:                   ; preds = %bb.i, %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit
  %i.y = phi ptr [ %.pre.i, %bb.i ], [ null, %_ZNSt8functionIFvRN2cv4gapi4s11n8IOStreamERKNS0_11GCompileArgEEEaSERKS9_.exit ]
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !1516 ; 4 uses
  store ptr %i.y, ptr %i.t, align 8, !tbaa !1516
  store ptr %i.z, ptr %2, align 8, !tbaa !1516
  %.not.i.i.i5 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i5, label %_ZN2cv4util3anyaSERKS1_.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i: ; preds = %_ZN2cv4util3anyC2ERKS1_.exit.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !742
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #37, !inline_history !714
  br label %_ZN2cv4util3anyaSERKS1_.exit

_ZN2cv4util3anyaSERKS1_.exit:                     ; preds = %_ZN2cv4util3anyC2ERKS1_.exit.i, %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
end_hunk_7
