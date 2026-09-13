Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/objective_function?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1027
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZNK8LightGBM13MulticlassOVA8ToStringB5cxx11Ev:bb.a
          to label %_ZNSolsEd.exit unwind label %bb.i ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
  call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !92, !alias.scope !751
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !95, !alias.scope !751
  store i8 0, ptr %i.y, align 8, !tbaa !96, !alias.scope !751
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !234, !noalias !751 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !751 ; 2 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %.08.i.i.i = select i1 %i.ae, ptr %i.ab, ptr %i.ad ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNSolsEd.exit
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235, !noalias !751 ; 2 uses
  %i.ah = ptrtoint ptr %.08.i.i.i to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.aj)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !97, !alias.scope !751 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.y
  br i1 %i.an, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !96, !alias.scope !751
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #35
  br label %.body

bb.h:                                             ; preds = %_ZNSolsEd.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.ar = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !99
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !99
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !97 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !96
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ax, align 8, !tbaa !99
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.be) #12
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !99
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bh = getelementptr i8, ptr %i.bf, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.bi
  store ptr %i.bg, ptr %i.bj, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bk, align 8, !tbaa !237
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit4, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6, %bb.a
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.al, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbfEZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E9_M_invokeERKSt9_Any_dataOf(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !170
  %i.b = fptosi float %i.a to i32
  %i.c = load i32, ptr %0, align 8, !tbaa !753
  %i.d = icmp eq i32 %i.c, %i.b
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbfEZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8LightGBM13MulticlassOVAC1ERKNS_6ConfigEEUlfE_, ptr %0, align 8, !tbaa !258
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !186
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !205
  store i32 %i.a, ptr %0, align 8, !tbaa !205
  br label %_ZNSt14_Function_base13_Base_managerIZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8LightGBM13MulticlassOVAC1ERKNS1_6ConfigEEUlfE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM12CrossEntropyD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12CrossEntropy4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.97, align 8             ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !321
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !322
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.m = icmp eq ptr %i.j, %i.l
  %spec.select.i = select i1 %i.m, ptr null, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %spec.select.i, ptr %i.n, align 8, !tbaa !323
  %i.o = icmp eq ptr %i.g, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 61)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !322
  %.pre10.a = load i32, ptr %i.e, align 8, !tbaa !321
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i32 [ %.pre10.a, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.pre12 = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(33) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre12, ptr %i.a, align 8, !tbaa !221
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !170
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !170
  store ptr %i.t, ptr %i.d, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.a, ptr %3, align 8, !tbaa !326
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.u, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.v, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.w, align 8, !tbaa !328
  %i.x = icmp sgt i32 %i.p, 1
  br i1 %i.x, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %4 = zext nneg i32 %i.p to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %i.y = phi ptr [ %.pre12, %bb.c ], [ %i.aq, %bb.h ]
  %i.z = and i32 %i.p, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, label %bb.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.aa = phi ptr [ %.pre12, %.lr.ph.preheader.i ], [ %i.aq, %bb.h ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %i.ab = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !170 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !170 ; 3 uses
  %i.ag = fcmp olt float %i.ad, %i.af
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = load float, ptr %i.b, align 4, !tbaa !170
  %i.ai = fcmp olt float %i.ad, %i.ah
  br i1 %i.ai, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load float, ptr %i.c, align 4, !tbaa !170
  %i.ak = fcmp ogt float %i.af, %i.aj
  br i1 %i.ak, label %.sink.split.i, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.al = load float, ptr %i.c, align 4, !tbaa !170
  %i.am = fcmp ogt float %i.ad, %i.al
  br i1 %i.am, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load float, ptr %i.b, align 4, !tbaa !170
  %i.ao = fcmp olt float %i.af, %i.an
  br i1 %i.ao, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.sink.i = phi i64 [ %i.ab, %bb.d ], [ %indvars.iv.i, %bb.e ], [ %i.ab, %bb.f ], [ %indvars.iv.i, %bb.g ]
  %i.ap = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.ap)
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !221
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.g, %bb.e
  %i.aq = phi ptr [ %.pre11, %.sink.split.i ], [ %i.aa, %bb.g ], [ %i.aa, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next.i, %4
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !58

bb.i:                                             ; preds = %._crit_edge.i
  %i.ar = add nsw i32 %i.p, -1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !170 ; 2 uses
  %i.av = load float, ptr %i.b, align 4, !tbaa !170
  %i.aw = fcmp olt float %i.au, %i.av
  %i.ax = load float, ptr %i.c, align 4
  %i.ay = fcmp ogt float %i.au, %i.ax
  %or.cond.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond.i, label %bb.j, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.ar)
  br label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit: ; preds = %._crit_edge.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = load ptr, ptr %0, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(33) %0)
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.65, ptr noundef %i.bc, ptr noundef nonnull @__func__._ZN8LightGBM12CrossEntropy4InitERKNS_8MetadataEi)
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !323 ; 4 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.q, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.be = load i32, ptr %i.e, align 8, !tbaa !321 ; 3 uses
  %i.bf = and i32 %i.be, 1
  %.not.i3 = icmp eq i32 %i.bf, 0
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !170 ; 5 uses
  br i1 %.not.i3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !170 ; 3 uses
  %i.bj = fcmp olt float %i.bg, %i.bi
  %..i = select i1 %i.bj, float %i.bg, float %i.bi
  %i.bk = fadd float %i.bg, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.08.i = phi float [ %..i, %bb.l ], [ %i.bg, %bb.k ] ; 2 uses
  %.038.i = phi float [ %i.bk, %bb.l ], [ %i.bg, %bb.k ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.l ], [ 2, %bb.k ]      ; 2 uses
  %i.bl = icmp slt i32 %.0.i, %i.be
  br i1 %i.bl, label %.lr.ph.preheader.i5, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i5:                              ; preds = %bb.m
  %i.bm = zext nneg i32 %.0.i to i64
  %i.bn = zext nneg i32 %i.be to i64
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6, %.lr.ph.preheader.i5
  %indvars.iv.i7 = phi i64 [ %i.bm, %.lr.ph.preheader.i5 ], [ %indvars.iv.next.i8, %.lr.ph.i6 ] ; 2 uses
  %.13914.i = phi float [ %.038.i, %.lr.ph.preheader.i5 ], [ %i.bv, %.lr.ph.i6 ]
  %.1913.i = phi float [ %.08.i, %.lr.ph.preheader.i5 ], [ %.sroa.speculated.i, %.lr.ph.i6 ] ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv.i7 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 -4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !170 ; 3 uses
  %i.br = load float, ptr %i.bo, align 4, !tbaa !170 ; 3 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %.28.i = select i1 %i.bs, float %i.bq, float %i.br ; 2 uses
  %i.bt = fcmp olt float %.28.i, %.1913.i
  %.sroa.speculated.i = select i1 %i.bt, float %.28.i, float %.1913.i ; 2 uses
  %i.bu = fadd float %i.bq, %i.br
  %i.bv = fadd float %.13914.i, %i.bu             ; 2 uses
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next.i8, %i.bn
  br i1 %i.bw, label %.lr.ph.i6, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !47

_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i6, %bb.m
  %.19.lcssa.i = phi float [ %.08.i, %bb.m ], [ %.sroa.speculated.i, %.lr.ph.i6 ]
  %.139.lcssa.i = phi float [ %.038.i, %bb.m ], [ %i.bv, %.lr.ph.i6 ]
  %i.bx = fcmp olt float %.19.lcssa.i, 0.000000e+00
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(33) %0)
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.66, ptr noundef %i.cb)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIfdEEvPKT_iPS2_S5_PT0_.exit
  %i.cc = fcmp oeq float %.139.lcssa.i, 0.000000e+00
  br i1 %i.cc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %0, align 8, !tbaa !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = call noundef ptr %i.cf(ptr noundef nonnull align 8 dereferenceable(33) %0)
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.67, ptr noundef %i.cg)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !223
  store ptr %2, ptr %i.b, align 8, !tbaa !221
  store ptr %3, ptr %i.c, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323
  %i.g = icmp eq ptr %i.f, null
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.h)
  %_ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined.72 = select i1 %i.g, ptr @_ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined, ptr @_ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined.72
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull %_ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM12CrossEntropy12GetGradientsEPKdPfS3_.omp_outlined.72, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM12CrossEntropy7GetNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !323
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !167, !range !134, !noundef !135
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.c, align 4, !tbaa !205
  call void @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #12
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !321
  %i.n = sitofp i32 %i.m to double
  store double %i.n, ptr %i.b, align 8, !tbaa !192
  %i.o = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !167, !range !134, !noundef !135
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined.73, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !205
  call void @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined.73(ptr nonnull %i.d, ptr nonnull poison, ptr nonnull %0, ptr %i.a) #12
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.s = load double, ptr %i.a, align 8, !tbaa !192
  %i.t = load double, ptr %i.b, align 8, !tbaa !192
  %i.u = fdiv double %i.s, %i.t                   ; 2 uses
  %i.v = fcmp ogt double %i.u, f0x3FEFFFFFFFFFFFF7
  %.sroa.speculated5 = select i1 %i.v, double f0x3FEFFFFFFFFFFFF7, double %i.u ; 2 uses
  %i.w = fcmp olt double %.sroa.speculated5, f0x3CD203AFA0000000
end_hunk_0
begin_hunk_1_@_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined.73:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.j, ptr %i.b, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !192
  %i.k = load i32, ptr %0, align 4, !tbaa !205    ; 4 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !205
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 5 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !205
  %i.n = load i32, ptr %i.a, align 4, !tbaa !205  ; 4 uses
  %.not13 = icmp sgt i32 %i.n, %i.m
  br i1 %.not13, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !322  ; 5 uses
  %i.q = sext i32 %i.n to i64                     ; 2 uses
  %i.r = add nsw i32 %i.m, 1
  %i.s = add i32 %i.m, 1
  %i.t = sub i32 %i.s, %i.n
  %i.u = sub i32 %i.m, %i.n
  %xtraiter = and i32 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.prol.preheader ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.v = phi double [ %i.z, %.prol.preheader ], [ 0.000000e+00, %.lr.ph ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.w = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.prol
  %i.x = load float, ptr %i.w, align 4, !tbaa !170
  %i.y = fpext float %i.x to double
  %i.z = fadd double %i.v, %i.y                   ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !774

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.lcssa.unr = phi double [ poison, %.lr.ph ], [ %i.z, %.prol.preheader ]
  %indvars.iv.unr = phi i64 [ %i.q, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.preheader ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %i.z, %.prol.preheader ]
  %i.aa = icmp ult i32 %i.u, 3
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %i.ab = phi double [ %i.au, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !170
  %i.ae = fpext float %i.ad to double
  %i.af = fadd double %i.ab, %i.ae
  %i.ag = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !170
  %i.aj = fpext float %i.ai to double
  %i.ak = fadd double %i.af, %i.aj
  %i.al = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !170
  %i.ao = fpext float %i.an to double
  %i.ap = fadd double %i.ak, %i.ao
  %i.aq = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  %i.as = load float, ptr %i.ar, align 4, !tbaa !170
  %i.at = fpext float %i.as to double
  %i.au = fadd double %i.ap, %i.at                ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.r, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.au, %.lr.ph.new ]
  store double %.lcssa, ptr %i.e, align 8, !tbaa !192
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  store ptr %i.e, ptr %i.f, align 8
  %i.av = call i32 @__kmpc_reduce_nowait(ptr nonnull @3, i32 %i.k, i32 1, i64 8, ptr nonnull %i.f, ptr nonnull @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined.73.omp.reduction.reduction_func, ptr nonnull @.gomp_critical_user_.reduction.var)
  switch i32 %i.av, label %bb.f [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.aw = load double, ptr %3, align 8, !tbaa !192
  %i.ax = load double, ptr %i.e, align 8, !tbaa !192
  %i.ay = fadd double %i.aw, %i.ax
  store double %i.ay, ptr %3, align 8, !tbaa !192
  call void @__kmpc_end_reduce_nowait(ptr nonnull @3, i32 %i.k, ptr nonnull @.gomp_critical_user_.reduction.var)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.az = load double, ptr %i.e, align 8, !tbaa !192
  %i.ba = atomicrmw fadd ptr %3, double %i.az monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZNK8LightGBM12CrossEntropy14BoostFromScoreEi.omp_outlined.73.omp.reduction.reduction_func(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #15 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !192
  %i.d = load double, ptr %i.a, align 8, !tbaa !192
  %i.e = fadd double %i.c, %i.d
  store double %i.e, ptr %i.b, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM17ObjectiveFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM18CrossEntropyLambdaD0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM18CrossEntropyLambda4InitERKNS_8MetadataEi(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(300) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca float, align 4                    ; 7 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.anon.97, align 8             ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !329
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !330
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !221
  %i.m = icmp eq ptr %i.j, %i.l
  %spec.select.i = select i1 %i.m, ptr null, ptr %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %spec.select.i, ptr %i.n, align 8, !tbaa !331
  %i.o = icmp eq ptr %i.g, null
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 203)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !330
  %.pre10.a = load i32, ptr %i.e, align 8, !tbaa !329
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i32 [ %.pre10.a, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.pre12.a = phi ptr [ %.pre, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(41) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.pre12.a, ptr %i.a, align 8, !tbaa !221
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !170
  store float 1.000000e+00, ptr %i.c, align 4, !tbaa !170
  store ptr %i.t, ptr %i.d, align 8, !tbaa !324
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %i.a, ptr %3, align 8, !tbaa !326
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.u, align 8, !tbaa !221
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.v, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.w, align 8, !tbaa !328
  %i.x = icmp sgt i32 %i.p, 1
  br i1 %i.x, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %4 = zext nneg i32 %i.p to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %i.y = phi ptr [ %.pre12.a, %bb.c ], [ %i.aq, %bb.h ]
  %i.z = and i32 %i.p, 1
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, label %bb.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.aa = phi ptr [ %.pre12.a, %.lr.ph.preheader.i ], [ %i.aq, %bb.h ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %i.ab = add nsw i64 %indvars.iv.i, -1           ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !170 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !170 ; 3 uses
  %i.ag = fcmp olt float %i.ad, %i.af
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.ah = load float, ptr %i.b, align 4, !tbaa !170
  %i.ai = fcmp olt float %i.ad, %i.ah
  br i1 %i.ai, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load float, ptr %i.c, align 4, !tbaa !170
  %i.ak = fcmp ogt float %i.af, %i.aj
  br i1 %i.ak, label %.sink.split.i, label %bb.h

bb.f:                                             ; preds = %.lr.ph.i
  %i.al = load float, ptr %i.c, align 4, !tbaa !170
  %i.am = fcmp ogt float %i.ad, %i.al
  br i1 %i.am, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load float, ptr %i.b, align 4, !tbaa !170
  %i.ao = fcmp olt float %i.af, %i.an
  br i1 %i.ao, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.sink.i = phi i64 [ %i.ab, %bb.d ], [ %indvars.iv.i, %bb.e ], [ %i.ab, %bb.f ], [ %indvars.iv.i, %bb.g ]
  %i.ap = trunc nuw nsw i64 %indvars.iv.sink.i to i32
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.ap)
  %.pre11 = load ptr, ptr %i.a, align 8, !tbaa !221
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.g, %bb.e
  %i.aq = phi ptr [ %.pre11, %.sink.split.i ], [ %i.aa, %bb.g ], [ %i.aa, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next.i, %4
  br i1 %5, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !58

bb.i:                                             ; preds = %._crit_edge.i
  %i.ar = add nsw i32 %i.p, -1                    ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !170 ; 2 uses
  %i.av = load float, ptr %i.b, align 4, !tbaa !170
  %i.aw = fcmp olt float %i.au, %i.av
  %i.ax = load float, ptr %i.c, align 4
  %i.ay = fcmp ogt float %i.au, %i.ax
  %or.cond.i = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond.i, label %bb.j, label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKcENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.ar)
  br label %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit

_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit: ; preds = %._crit_edge.i, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = load ptr, ptr %0, align 8, !tbaa !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(41) %0)
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.65, ptr noundef %i.bc, ptr noundef nonnull @__func__._ZN8LightGBM12CrossEntropy4InitERKNS_8MetadataEi)
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !331 ; 4 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit
  %i.be = load i32, ptr %i.e, align 8, !tbaa !329 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bh = and i32 %i.be, 1
  %.not.i4 = icmp eq i32 %i.bh, 0
  %i.bi = load float, ptr %i.bd, align 4, !tbaa !170 ; 5 uses
  br i1 %.not.i4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !170 ; 3 uses
  %i.bl = fcmp olt float %i.bi, %i.bk             ; 2 uses
  %..i = select i1 %i.bl, float %i.bi, float %i.bk
  %storemerge.i = select i1 %i.bl, float %i.bk, float %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %storemerge11.i = phi float [ %storemerge.i, %bb.l ], [ %i.bi, %bb.k ] ; 2 uses
  %.09.i = phi float [ %..i, %bb.l ], [ %i.bi, %bb.k ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.l ], [ 2, %bb.k ]      ; 2 uses
  %i.bm = icmp slt i32 %.0.i, %i.be
  br i1 %i.bm, label %.lr.ph.preheader.i6, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit

.lr.ph.preheader.i6:                              ; preds = %bb.m
  %i.bn = zext nneg i32 %.0.i to i64
  %i.bo = zext nneg i32 %i.be to i64
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %.lr.ph.i7, %.lr.ph.preheader.i6
  %.0 = phi float [ %storemerge11.i, %.lr.ph.preheader.i6 ], [ %storemerge46.i, %.lr.ph.i7 ] ; 2 uses
  %indvars.iv.i8 = phi i64 [ %i.bn, %.lr.ph.preheader.i6 ], [ %indvars.iv.next.i9, %.lr.ph.i7 ] ; 2 uses
  %.11015.i = phi float [ %.09.i, %.lr.ph.preheader.i6 ], [ %.sroa.speculated.i, %.lr.ph.i7 ] ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bd, i64 %indvars.iv.i8 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !170 ; 3 uses
  %i.bs = load float, ptr %i.bp, align 4, !tbaa !170 ; 3 uses
  %i.bt = fcmp olt float %i.br, %i.bs             ; 2 uses
  %.27.i = select i1 %i.bt, float %i.br, float %i.bs ; 2 uses
  %.28.i = select i1 %i.bt, float %i.bs, float %i.br ; 2 uses
  %i.bu = fcmp olt float %.27.i, %.11015.i
  %.sroa.speculated.i = select i1 %i.bu, float %.27.i, float %.11015.i ; 2 uses
  %i.bv = fcmp olt float %.0, %.28.i
  %storemerge46.i = select i1 %i.bv, float %.28.i, float %.0 ; 2 uses
  %indvars.iv.next.i9 = add nuw nsw i64 %indvars.iv.i8, 2 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next.i9, %i.bo
  br i1 %i.bw, label %.lr.ph.i7, label %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit, !llvm.loop !775

_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit: ; preds = %.lr.ph.i7, %bb.m
  %.0..0..i = phi float [ %storemerge11.i, %bb.m ], [ %storemerge46.i, %.lr.ph.i7 ] ; 2 uses
  %.110.lcssa.i = phi float [ %.09.i, %bb.m ], [ %.sroa.speculated.i, %.lr.ph.i7 ] ; 3 uses
  store float %.110.lcssa.i, ptr %i.bf, align 8, !tbaa !170
  store float %.0..0..i, ptr %i.bg, align 4, !tbaa !170
  %i.bx = fcmp ugt float %.110.lcssa.i, 0.000000e+00
  br i1 %i.bx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call noundef ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(41) %0)
  call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.75, ptr noundef %i.cb)
  %.pre13.a = load float, ptr %i.bg, align 4, !tbaa !776
  %.pre14 = load float, ptr %i.bf, align 8, !tbaa !777
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit
  %i.cc = phi float [ %.pre14, %bb.n ], [ %.110.lcssa.i, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit ]
  %i.cd = phi float [ %.pre13.a, %bb.n ], [ %.0..0..i, %_ZN8LightGBM6CommonL15ObtainMinMaxSumIffEEvPKT_iPS2_S5_PT0_.exit ]
  %i.ce = fdiv float %i.cd, %i.cc
  %i.cf = fpext float %i.ce to double
  %i.cg = load ptr, ptr %0, align 8, !tbaa !99
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(41) %0)
  %i.ck = load <2 x float>, ptr %i.bf, align 8, !tbaa !170
  %i.cl = fpext <2 x float> %i.ck to <2 x double> ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = extractelement <2 x double> %i.cl, i64 1
  call void (ptr, ...) @_ZN8LightGBM3Log4InfoEPKcz(ptr noundef nonnull @.str.76, ptr noundef %i.cj, ptr noundef nonnull @__func__._ZN8LightGBM12CrossEntropy4InitERKNS_8MetadataEi, double noundef %i.cm, double noundef %i.cn, double noundef %i.cf)
  br label %bb.p

bb.p:                                             ; preds = %_ZN8LightGBM6CommonL27CheckElementsIntervalClosedIfEEvPKT_S2_S2_iPKc.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.a, align 8, !tbaa !223
  store ptr %2, ptr %i.b, align 8, !tbaa !221
  store ptr %3, ptr %i.c, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.g = icmp eq ptr %i.f, null
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.d, i32 %i.h)
  %_ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined.77 = select i1 %i.g, ptr @_ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined, ptr @_ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined.77
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull %_ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined._ZNK8LightGBM18CrossEntropyLambda12GetGradientsEPKdPfS3_.omp_outlined.77, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM18CrossEntropyLambda7GetNameEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str.12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK8LightGBM18CrossEntropyLambda14BoostFromScoreEi(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !331
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i8, ptr %i.i, align 8, !tbaa !169, !range !134, !noundef !135
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM18CrossEntropyLambda14BoostFromScoreEi.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.c, align 4, !tbaa !205
  call void @_ZNK8LightGBM18CrossEntropyLambda14BoostFromScoreEi.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #12
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !329
  %i.n = sitofp i32 %i.m to double
  store double %i.n, ptr %i.b, align 8, !tbaa !192
  %i.o = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !169, !range !134, !noundef !135
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZNK8LightGBM18CrossEntropyLambda14BoostFromScoreEi.omp_outlined.78, ptr nonnull %0, ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !205
end_hunk_1
