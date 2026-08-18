inline.NumInlined: 546
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN23PQEncoder16_encode_Test8TestBodyEv:bb.a
  br label %_ZN7testing7MessageD2Ev.exit20

_ZN7testing7MessageD2Ev.exit20:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !68  ; 4 uses
  %.not.i.i21 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i21, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !42
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d, !llvm.loop !82

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZN7testing7MessageD2Ev.exit20, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit20 ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit26

_ZNSt6vectorImSaImEED2Ev.exit26:                  ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24 ], [ %i.j, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 800) #18
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN34PQFastScan_set_packed_element_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34PQFastScan_set_packed_element_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.faiss::IndexPQFastScan", align 8 ; 33 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(80000) ptr @_Znwm(i64 noundef 80000) #19, !noalias !83 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80000) %i.d, i8 0, i64 80000, i1 false), !tbaa !86, !noalias !83
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ]  ; 2 uses
  %i.e = tail call i32 @rand() #17, !noalias !83
  %i.f = sitofp i32 %i.e to float
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.07.i
  store float %i.f, ptr %i.g, align 4, !tbaa !86, !noalias !83
  %i.h = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, 20000
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_119random_vector_floatEm.exit, label %bb.b, !llvm.loop !88

_ZN12_GLOBAL__N_119random_vector_floatEm.exit:    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZN5faiss15IndexPQFastScanC1EimmNS_10MetricTypeEi(ptr noundef nonnull align 8 dereferenceable(360) %5, i32 noundef 20, i64 noundef 5, i64 noundef 4, i32 noundef 1, i32 noundef 32)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_119random_vector_floatEm.exit
  invoke void @_ZN5faiss15IndexPQFastScan5trainElPKf(ptr noundef nonnull align 8 dereferenceable(360) %5, i64 noundef 1000, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5faiss13IndexFastScan3addElPKf(ptr noundef nonnull align 8 dereferenceable(136) %5, i64 noundef 1000, ptr noundef nonnull %i.d)
          to label %.preheader167 unwind label %bb.k

.preheader167:                                    ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.l

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit86
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN5faiss15IndexPQFastScanE, i64 16), ptr %5, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5faiss16ProductQuantizerE, i64 16), ptr %i.q, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 336
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 352
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i:                ; preds = %bb.f, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 312
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 328
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i:               ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i3.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit4.i.i:               ; preds = %bb.h, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i5.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 280
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !92
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit4.i.i, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 280) (i8, ptr @_ZTVN5faiss13IndexFastScanE, i64 16), ptr %5, align 8, !tbaa !17
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !93
  call void @free(ptr noundef %i.at) #17
  call void @_ZN5faiss5IndexD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(360) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 80000) #18
  ret void

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_119random_vector_floatEm.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit131

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.l:                                             ; preds = %.preheader167, %_ZNSt6vectorIhSaIhEED2Ev.exit86
  %.053214 = phi i32 [ 0, %.preheader167 ], [ %i.fm, %_ZNSt6vectorIhSaIhEED2Ev.exit86 ]
  %i.aw = call i32 @rand() #17
  %i.ax = srem i32 %i.aw, 1000                    ; 2 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(5000) ptr @_Znwm(i64 noundef 5000) #19
          to label %bb.m unwind label %bb.n       ; 14 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5000) %i.ay, i8 0, i64 5000, i1 false)
  br label %.preheader164

.preheader166:                                    ; preds = %bb.s
  %i.az = mul nsw i32 %i.ax, 5
  %12 = zext i32 %i.ax to i64                     ; 6 uses
  %i.ba = sext i32 %i.az to i64                   ; 5 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !42
  %i.be = add i8 %i.bd, 3
  %i.bf = and i8 %i.be, 15
  %i.bg = load i32, ptr %i.j, align 4, !tbaa !95
  %i.bh = sext i32 %i.bg to i64
  invoke void @_ZN5faiss22pq4_set_packed_elementEPhhmmmm(ptr noundef %i.bb, i8 noundef zeroext %i.bf, i64 noundef %i.bh, i64 noundef 5, i64 noundef %12, i64 noundef 0)
          to label %bb.u unwind label %bb.y

.preheader164:                                    ; preds = %bb.m, %bb.s
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %i.bi = mul nuw nsw i64 %indvars.iv, 5          ; 5 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.bk = load i32, ptr %i.j, align 4, !tbaa !95
  %i.bl = sext i32 %i.bk to i64
  %i.bm = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.bj, i64 noundef %i.bl, i64 noundef 5, i64 noundef %indvars.iv, i64 noundef 0)
          to label %bb.o unwind label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.o:                                             ; preds = %.preheader164
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !42
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.bq = load i32, ptr %i.j, align 4, !tbaa !95
  %i.br = sext i32 %i.bq to i64
  %i.bs = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.bp, i64 noundef %i.br, i64 noundef 5, i64 noundef %indvars.iv, i64 noundef 1)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !42
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !95
  %i.bx = sext i32 %i.bw to i64
  %i.by = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.bv, i64 noundef %i.bx, i64 noundef 5, i64 noundef %indvars.iv, i64 noundef 2)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !42
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.cc = load i32, ptr %i.j, align 4, !tbaa !95
  %i.cd = sext i32 %i.cc to i64
  %i.ce = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.cb, i64 noundef %i.cd, i64 noundef 5, i64 noundef %indvars.iv, i64 noundef 3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !42
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !95
  %i.cj = sext i32 %i.ci to i64
  %i.ck = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.ch, i64 noundef %i.cj, i64 noundef 5, i64 noundef %indvars.iv, i64 noundef 4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bi
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i8 %i.ck, ptr %i.cm, align 1, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1000
  br i1 %exitcond.not, label %.preheader166, label %.preheader164, !llvm.loop !100

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %.preheader164
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit121

bb.u:                                             ; preds = %.preheader166
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.cp = getelementptr i8, ptr %i.ay, i64 %i.ba
  %i.cq = getelementptr i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !42
  %i.cs = add i8 %i.cr, 3
  %i.ct = and i8 %i.cs, 15
  %i.cu = load i32, ptr %i.j, align 4, !tbaa !95
  %i.cv = sext i32 %i.cu to i64
  invoke void @_ZN5faiss22pq4_set_packed_elementEPhhmmmm(ptr noundef %i.co, i8 noundef zeroext %i.ct, i64 noundef %i.cv, i64 noundef 5, i64 noundef %12, i64 noundef 1)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.cx = getelementptr i8, ptr %i.ay, i64 %i.ba
  %i.cy = getelementptr i8, ptr %i.cx, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !42
  %i.da = add i8 %i.cz, 3
  %i.db = and i8 %i.da, 15
  %i.dc = load i32, ptr %i.j, align 4, !tbaa !95
  %i.dd = sext i32 %i.dc to i64
  invoke void @_ZN5faiss22pq4_set_packed_elementEPhhmmmm(ptr noundef %i.cw, i8 noundef zeroext %i.db, i64 noundef %i.dd, i64 noundef 5, i64 noundef %12, i64 noundef 2)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.df = getelementptr i8, ptr %i.ay, i64 %i.ba
  %i.dg = getelementptr i8, ptr %i.df, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !42
  %i.di = add i8 %i.dh, 3
  %i.dj = and i8 %i.di, 15
  %i.dk = load i32, ptr %i.j, align 4, !tbaa !95
  %i.dl = sext i32 %i.dk to i64
  invoke void @_ZN5faiss22pq4_set_packed_elementEPhhmmmm(ptr noundef %i.de, i8 noundef zeroext %i.dj, i64 noundef %i.dl, i64 noundef 5, i64 noundef %12, i64 noundef 3)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.dn = getelementptr i8, ptr %i.ay, i64 %i.ba
  %i.do = getelementptr i8, ptr %i.dn, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !42
  %i.dq = add i8 %i.dp, 3
  %i.dr = and i8 %i.dq, 15
  %i.ds = load i32, ptr %i.j, align 4, !tbaa !95
  %i.dt = sext i32 %i.ds to i64
  invoke void @_ZN5faiss22pq4_set_packed_elementEPhhmmmm(ptr noundef %i.dm, i8 noundef zeroext %i.dr, i64 noundef %i.dt, i64 noundef 5, i64 noundef %12, i64 noundef 4)
          to label %.preheader unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %.preheader166
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit121

.preheader:                                       ; preds = %bb.x, %.split212.us
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %.split212.us ], [ 0, %bb.x ] ; 5 uses
  %i.dv = mul nuw nsw i64 %indvars.iv246, 5
  %i.dw = icmp eq i64 %indvars.iv246, %12
  %invariant.gep309 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dv ; 2 uses
  br i1 %i.dw, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit97.us
  %indvars.iv242 = phi i64 [ %indvars.iv.next243, %_ZN7testing15AssertionResultD2Ev.exit97.us ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.dx = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.dy = load i32, ptr %i.j, align 4, !tbaa !95
  %i.dz = sext i32 %i.dy to i64
  %i.ea = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.dx, i64 noundef %i.dz, i64 noundef 5, i64 noundef %indvars.iv246, i64 noundef %indvars.iv242)
          to label %bb.z unwind label %.split.us  ; 2 uses

bb.z:                                             ; preds = %.preheader.split.us
  store i8 %i.ea, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %gep310 = getelementptr inbounds nuw i8, ptr %invariant.gep309, i64 %indvars.iv242
  %i.eb = load i8, ptr %gep310, align 1, !tbaa !42 ; 2 uses
  store i8 %i.eb, ptr %i.b, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ec = add i8 %i.eb, 3
  %i.ed = and i8 %i.ec, 15                        ; 2 uses
  %i.ee = zext nneg i8 %i.ed to i32
  store i32 %i.ee, ptr %i.c, align 4, !tbaa !101
  %i.ef = icmp eq i8 %i.ed, %i.ea
  br i1 %i.ef, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !102
  invoke void @_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc132.us unwind label %.split188.us

.noexc132.us:                                     ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !102
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIihEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.us unwind label %.split192.us, !noalias !102

_ZN7testing8internal33FormatForComparisonFailureMessageIihEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.us: ; preds = %.noexc132.us
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.ab unwind label %.split196.us

bb.ab:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIihEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.us
  %i.eg = load ptr, ptr %4, align 8, !tbaa !53, !noalias !102 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.n
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us: ; preds = %bb.ab
  %i.ei = load i64, ptr %i.n, align 8, !tbaa !42, !noalias !102
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !102
  %i.ek = load ptr, ptr %3, align 8, !tbaa !53, !noalias !102 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.o
  br i1 %i.el, label %.noexc87.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us
  %i.em = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !102
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #18
  br label %.noexc87.us

.noexc87.us:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !102
  br label %_ZN7testing8internal8EqHelper7CompareIhiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.us

bb.ac:                                            ; preds = %bb.z
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
          to label %_ZN7testing8internal8EqHelper7CompareIhiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.us unwind label %.split188.us

_ZN7testing8internal8EqHelper7CompareIhiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.us: ; preds = %bb.ac, %.noexc87.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.eo = load i8, ptr %6, align 8, !tbaa !57, !range !66, !noundef !67
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ae unwind label %.split200.us

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.eq = load ptr, ptr %i.p, align 8, !tbaa !68  ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.us, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.us

_ZNK7testing15AssertionResult15failure_messageEv.exit.us: ; preds = %bb.af, %bb.ae
  %i.es = phi ptr [ %i.er, %bb.af ], [ @.str.17, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef %i.es)
          to label %bb.ag unwind label %.split204.us

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.us
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ah unwind label %.split208.us

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.et = load ptr, ptr %7, align 8, !tbaa !69    ; 3 uses
  %.not.i.i88.us = icmp eq ptr %i.et, null
  br i1 %.not.i.i88.us, label %_ZN7testing7MessageD2Ev.exit.us, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.us

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.us: ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #17, !inline_history !71
  br label %_ZN7testing7MessageD2Ev.exit.us

_ZN7testing7MessageD2Ev.exit.us:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.us, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.us, %_ZN7testing8internal8EqHelper7CompareIhiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.us
  %i.ex = load ptr, ptr %i.p, align 8, !tbaa !68  ; 4 uses
  %.not.i.i93.us = icmp eq ptr %i.ex, null
  br i1 %.not.i.i93.us, label %_ZN7testing15AssertionResultD2Ev.exit97.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !53 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94.us: ; preds = %bb.aj
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !42
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.us

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.us: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i94.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit97.us

_ZN7testing15AssertionResultD2Ev.exit97.us:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95.us, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next243, 5
  br i1 %exitcond245.not, label %.split212.us, label %.preheader.split.us, !llvm.loop !105

.split.us:                                        ; preds = %.preheader.split.us
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.split188.us:                                     ; preds = %bb.ac, %bb.aa
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split192.us:                                     ; preds = %.noexc132.us
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

.split196.us:                                     ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIihEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.us
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %4, align 8, !tbaa !53, !noalias !102 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.n
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

.split200.us:                                     ; preds = %bb.ad
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

.split204.us:                                     ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.us
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split208.us:                                     ; preds = %bb.ag
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #17
  br label %bb.al

_ZNSt6vectorIhSaIhEED2Ev.exit86:                  ; preds = %.split212.us
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 5000) #18
  %i.fm = add nuw nsw i32 %.053214, 1             ; 2 uses
  %exitcond250.not = icmp eq i32 %i.fm, 10
  br i1 %exitcond250.not, label %bb.e, label %bb.l, !llvm.loop !106

.split212.us:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit117, %_ZN7testing15AssertionResultD2Ev.exit97.us
  %indvars.iv.next247 = add i64 %indvars.iv246, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next247, 1000
  br i1 %exitcond249.not, label %_ZNSt6vectorIhSaIhEED2Ev.exit86, label %.preheader, !llvm.loop !107

.preheader.split:                                 ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit117
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %_ZN7testing15AssertionResultD2Ev.exit117 ], [ 0, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.fo = load i32, ptr %i.j, align 4, !tbaa !95
  %i.fp = sext i32 %i.fo to i64
  %i.fq = invoke noundef zeroext i8 @_ZN5faiss22pq4_get_packed_elementEPKhmmmm(ptr noundef %i.fn, i64 noundef %i.fp, i64 noundef 5, i64 noundef %indvars.iv246, i64 noundef %indvars.iv238)
          to label %bb.ak unwind label %.split    ; 2 uses

bb.ak:                                            ; preds = %.preheader.split
  store i8 %i.fq, ptr %i.a, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep309, i64 %indvars.iv238
  %i.fr = load i8, ptr %gep, align 1, !tbaa !42   ; 2 uses
  store i8 %i.fr, ptr %i.b, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.fs = icmp eq i8 %i.fq, %i.fr
  br i1 %i.fs, label %bb.an, label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %.split196.us
  %i.ft = load i64, ptr %i.n, align 8, !tbaa !42, !noalias !102
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %.split196.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %.split192.us
  %.pn.i = phi { ptr, i32 } [ %i.ff, %.split192.us ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.fg, %.split196.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !102
  %i.fv = load ptr, ptr %3, align 8, !tbaa !53, !noalias !102 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.o
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.fx = load i64, ptr %i.o, align 8, !tbaa !42, !noalias !102
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !102
  br label %.body

.split:                                           ; preds = %.preheader.split
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %.split188.us
  %eh.lpad-body = phi { ptr, i32 } [ %i.fe, %.split188.us ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit

bb.al:                                            ; preds = %.split208.us, %.split204.us
  %.pn71 = phi { ptr, i32 } [ %i.fl, %.split208.us ], [ %i.fk, %.split204.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.ga = load ptr, ptr %7, align 8, !tbaa !69    ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.al
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #17, !inline_history !71
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.al, %.split200.us
  %.pn71.pn = phi { ptr, i32 } [ %i.fj, %.split200.us ], [ %.pn71, %bb.al ], [ %.pn71, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ge = load ptr, ptr %i.p, align 8, !tbaa !68  ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit91
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !53 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.am
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !42
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit91, %.body
  %.pn71.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn71.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %.pn71.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bf

bb.an:                                            ; preds = %bb.ak
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.as

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !108
  invoke void @_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %.noexc145 unwind label %bb.as

.noexc145:                                        ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !108
  invoke void @_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.aq, !noalias !108

_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc145
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.gk = load ptr, ptr %2, align 8, !tbaa !53, !noalias !108 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.k
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140: ; preds = %bb.ap
  %i.gm = load i64, ptr %i.k, align 8, !tbaa !42, !noalias !108
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !108
  %i.go = load ptr, ptr %1, align 8, !tbaa !53, !noalias !108 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.l
  br i1 %i.gp, label %.noexc99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141
  %i.gq = load i64, ptr %i.l, align 8, !tbaa !42, !noalias !108
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #18
  br label %.noexc99

bb.aq:                                            ; preds = %.noexc145
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133

bb.ar:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIhhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gu = load ptr, ptr %2, align 8, !tbaa !53, !noalias !108 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.k
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i138: ; preds = %bb.ar
  %i.gw = load i64, ptr %i.k, align 8, !tbaa !42, !noalias !108
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i138, %bb.aq
  %.pn.i134 = phi { ptr, i32 } [ %i.gs, %bb.aq ], [ %i.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i138 ], [ %i.gt, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !108
  %i.gy = load ptr, ptr %1, align 8, !tbaa !53, !noalias !108 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.l
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133
  %i.ha = load i64, ptr %i.l, align 8, !tbaa !42, !noalias !108
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !108
  br label %.body146

.noexc99:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !108
  br label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc99, %bb.an
  %i.hc = load i8, ptr %9, align 8, !tbaa !57, !range !66, !noundef !67
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.bd, label %bb.at

bb.as:                                            ; preds = %bb.ao, %bb.an
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body146

bb.at:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.hf = load ptr, ptr %i.m, align 8, !tbaa !68  ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i100, label %_ZNK7testing15AssertionResult15failure_messageEv.exit101, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !53
end_hunk_0
