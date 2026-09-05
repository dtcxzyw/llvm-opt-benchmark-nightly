Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_handle?download=true
begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:bb.a
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #26
  br label %_ZNSt16allocator_traitsISaIvEE7destroyIN4entt8meta_ctxEEEvRS0_PT_.exit

_ZNSt16allocator_traitsISaIvEE7destroyIN4entt8meta_ctxEEEvRS0_PT_.exit: ; preds = %bb.d, %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeIjSt10unique_ptrINS0_14meta_type_nodeESt14default_deleteIS5_EEEESaIS9_EELm0EED2Ev.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN4entt8meta_ctxESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !44
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJEEES2_jOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.entt::meta_handle", align 8 ; 16 uses
  %5 = alloca %"class.entt::meta_handle", align 8 ; 12 uses
  %6 = alloca %"class.entt::meta_type", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !72, !noalias !372 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42, !noalias !372 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !43, !noalias !372 ; 2 uses
  %switch.selectcmp.i.i.i.i = icmp eq i8 %i.d, 0  ; 3 uses
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 0, i8 3
  %switch.selectcmp2.i.i.i.i = icmp eq i8 %i.d, 4 ; 2 uses
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i8 4, i8 %switch.select.i.i.i.i ; 2 uses
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53, !noalias !373
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73, !noalias !373
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54, !noalias !373 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.h, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 %switch.select3.i.i.i.i, ptr %i.s, align 4, !tbaa !72
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i8 %i.d, 2
  %i.u = select i1 %i.t, ptr %3, ptr %i.i         ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !44
  br label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit

_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit: ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ null, %bb.a ], [ %i.u, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.b, ptr %i.w, align 8, !tbaa !53
  %i.x = icmp eq ptr %i.b, %i.k
  %spec.select.i.i = select i1 %i.x, ptr %i.m, ptr null ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.y, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.z, align 8, !tbaa !54
  %i.aa = load ptr, ptr %1, align 8, !tbaa !374   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.c:                                             ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #24
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.aa, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !148 ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !154 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.010.015.i = phi ptr [ %i.am, %bb.e ], [ %i.ah, %bb.d ] ; 4 uses
  %i.al = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !163
  %.not.i = icmp eq i32 %i.al, %2
  br i1 %.not.i, label %.lr.ph139.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 88 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.aj
  br i1 %i.an, label %.critedge, label %.lr.ph.i

.lr.ph139.i:                                      ; preds = %.lr.ph.i
  br i1 %switch.selectcmp2.i.i.i.i, label %.lr.ph139.split.split.us.i.us, label %.lr.ph139.split.split.us.i

.lr.ph139.split.split.us.i.us:                    ; preds = %.lr.ph139.i, %bb.h
  %.036138.us147.i.us = phi ptr [ %.sroa.095.0134.us151.i.us, %bb.h ], [ %.sroa.010.015.i, %.lr.ph139.i ] ; 4 uses
  %.037137.us148.i.us = phi i1 [ %.340.us160.i.us, %bb.h ], [ false, %.lr.ph139.i ] ; 2 uses
  %.045135.us150.i.us = phi ptr [ %.348.us158.i.us, %bb.h ], [ null, %.lr.ph139.i ] ; 5 uses
  %.sroa.095.0134.us151.i.in.us = getelementptr inbounds nuw i8, ptr %.036138.us147.i.us, i64 56
  %.sroa.095.0134.us151.i.us = load ptr, ptr %.sroa.095.0134.us151.i.in.us, align 8, !tbaa !154 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.036138.us147.i.us, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !165
  %i.aq = and i32 %i.ap, 1
  %.not.i56.us152.i.us = icmp eq i32 %i.aq, 0
  br i1 %.not.i56.us152.i.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph139.split.split.us.i.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.036138.us147.i.us, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !166
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.preheader.us165.i.us, label %bb.h

.preheader.us165.i.us:                            ; preds = %bb.f
  %.not54.us153.i.us = icmp eq ptr %.045135.us150.i.us, null
  br i1 %.not54.us153.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us165.i.us
  %i.au = getelementptr inbounds nuw i8, ptr %.045135.us150.i.us, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !165
  %.fr93 = freeze i32 %i.av
  %.not.i68.us155.i.us = trunc i32 %.fr93 to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us165.i.us, %bb.f, %.lr.ph139.split.split.us.i.us
  %.348.us158.i.us = phi ptr [ %.045135.us150.i.us, %.lr.ph139.split.split.us.i.us ], [ %.045135.us150.i.us, %bb.f ], [ %.045135.us150.i.us, %bb.g ], [ %.036138.us147.i.us, %.preheader.us165.i.us ] ; 2 uses
  %.340.us160.i.us = phi i1 [ %.037137.us148.i.us, %.lr.ph139.split.split.us.i.us ], [ %.037137.us148.i.us, %bb.f ], [ %.not.i68.us155.i.us, %bb.g ], [ false, %.preheader.us165.i.us ] ; 2 uses
  %.not.i70.us161.i.us = icmp eq ptr %.sroa.095.0134.us151.i.us, null
  br i1 %.not.i70.us161.i.us, label %.split.us, label %.lr.ph139.split.split.us.i.us, !llvm.loop !366

.lr.ph139.split.split.us.i:                       ; preds = %.lr.ph139.i, %bb.j
  %.036138.us147.i = phi ptr [ %.sroa.095.0134.us151.i, %bb.j ], [ %.sroa.010.015.i, %.lr.ph139.i ] ; 5 uses
  %.037137.us148.i = phi i1 [ %.340.us160.i, %bb.j ], [ false, %.lr.ph139.i ]
  %.045135.us150.i = phi ptr [ %.348.us158.i, %bb.j ], [ null, %.lr.ph139.i ] ; 4 uses
  %.sroa.095.0134.us151.i.in = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 56
  %.sroa.095.0134.us151.i = load ptr, ptr %.sroa.095.0134.us151.i.in, align 8, !tbaa !154 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !166
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.preheader.us165.i, label %bb.j

bb.i:                                             ; preds = %.preheader.us165.i
  %i.az = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !165
  %i.bb = and i32 %i.ba, 1
  %.not.i67.us154.i = icmp eq i32 %i.bb, 0        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.045135.us150.i, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !165
  %i.be = and i32 %i.bd, 1
  %.not.i68.us155.i = icmp eq i32 %i.be, 0        ; 2 uses
  %i.bf = xor i1 %.not.i67.us154.i, %.not.i68.us155.i
  %i.bg = xor i1 %.not.i68.us155.i, true
  %i.bh = and i1 %.not.i67.us154.i, %i.bg
  %spec.select.us156.i = select i1 %i.bh, ptr %.036138.us147.i, ptr %.045135.us150.i
  %.fr = freeze i1 %i.bf
  %not..us157.i = xor i1 %.fr, true
  br label %bb.j

bb.j:                                             ; preds = %.preheader.us165.i, %bb.i, %.lr.ph139.split.split.us.i
  %.348.us158.i = phi ptr [ %.036138.us147.i, %.preheader.us165.i ], [ %.045135.us150.i, %.lr.ph139.split.split.us.i ], [ %spec.select.us156.i, %bb.i ] ; 2 uses
  %.340.us160.i = phi i1 [ false, %.preheader.us165.i ], [ %.037137.us148.i, %.lr.ph139.split.split.us.i ], [ %not..us157.i, %bb.i ] ; 2 uses
  %.not.i70.us161.i = icmp eq ptr %.sroa.095.0134.us151.i, null
  br i1 %.not.i70.us161.i, label %.split.us, label %.lr.ph139.split.split.us.i, !llvm.loop !366

.preheader.us165.i:                               ; preds = %.lr.ph139.split.split.us.i
  %.not54.us153.i = icmp eq ptr %.045135.us150.i, null
  br i1 %.not54.us153.i, label %bb.j, label %bb.i

.split.us:                                        ; preds = %bb.j, %bb.h
  %.us-phi = phi ptr [ %.348.us158.i.us, %bb.h ], [ %.348.us158.i, %bb.j ] ; 2 uses
  %.us-phi73 = phi i1 [ %.340.us160.i.us, %bb.h ], [ %.340.us160.i, %bb.j ]
  %.not3370 = icmp eq ptr %.us-phi, null
  %.not33 = select i1 %.us-phi73, i1 true, i1 %.not3370
  br i1 %.not33, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.split.us
  %i.bi = getelementptr inbounds nuw i8, ptr %.us-phi, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !169
  store ptr null, ptr %5, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.h, ptr %i.bm, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i8 %switch.select3.i.i.i.i, ptr %i.bn, align 4, !tbaa !72
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2EOS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %4, align 8, !tbaa !74
  store ptr %i.v, ptr %5, align 8, !tbaa !44
  br label %_ZN4entt11meta_handleC2EOS0_.exit

_ZN4entt11meta_handleC2EOS0_.exit:                ; preds = %bb.k, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.b, ptr %i.bo, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.y, align 8, !tbaa !75
  store ptr %spec.select.i.i, ptr %i.bp, align 8, !tbaa !73
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.z, align 8, !tbaa !74
  store ptr %i.o, ptr %i.bq, align 8, !tbaa !54
  invoke void %i.bj(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZN4entt11meta_handleC2EOS0_.exit
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %.critedge40, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.critedge40 unwind label %bb.o, !inline_history !0

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #25
  unreachable

bb.p:                                             ; preds = %_ZN4entt11meta_handleC2EOS0_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i45, label %_ZN4entt11meta_handleD2Ev.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt11meta_handleD2Ev.exit46 unwind label %bb.r, !inline_history !0

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #25
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.d, %.split.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !374, !noalias !375 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.s:                                             ; preds = %.critedge
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !371, !noalias !375
  %i.cb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ca) #24, !noalias !375
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.s, %.critedge
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ %i.by, %.critedge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !148, !noalias !375
  %.not.i47 = icmp eq ptr %i.ce, null
  br i1 %.not.i47, label %.critedge44, label %bb.t

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !371, !noalias !375 ; 3 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !374, !noalias !375 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i: ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !148, !noalias !375
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !177, !noalias !375
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit2.i:        ; preds = %bb.t
  %i.cm = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) #24, !noalias !375
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !374, !noalias !375 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !148, !noalias !375
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !177, !noalias !375 ; 2 uses
  %i.cr = icmp eq ptr %.pr.i, null
  br i1 %i.cr, label %bb.u, label %_ZNK4entt9meta_type4baseEv.exit

bb.u:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !371, !noalias !375
  %i.ct = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cs) #24, !noalias !375
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type4baseEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, %bb.u
  %i.cu = phi ptr [ %i.cq, %bb.u ], [ %i.cq, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cl, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ] ; 2 uses
  %i.cv = phi ptr [ %i.ct, %bb.u ], [ %.pr.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cg, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !148, !noalias !375
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !177, !noalias !375 ; 2 uses
  %i.da = icmp eq ptr %i.cu, %i.cz
  br i1 %i.da, label %.critedge44, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt9meta_type4baseEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4entt8meta_anyD2Ev.exit
  %.sroa.061.074 = phi ptr [ %i.cu, %.lr.ph ], [ %i.dm, %_ZN4entt8meta_anyD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !179
  %i.dg = call noundef nonnull align 8 dereferenceable(128) ptr %i.df(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) #24, !inline_history !369
  store ptr %i.dg, ptr %6, align 8
  store ptr %i.cf, ptr %i.db, align 8
  invoke void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJEEES2_jOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !54
  %.not71 = icmp eq ptr %i.dh, null
  br i1 %.not71, label %bb.y, label %.critedge40

bb.x:                                             ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN4entt11meta_handleD2Ev.exit46

bb.y:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aa, !inline_history !0

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #25
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %bb.y, %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 24 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cz
  br i1 %i.dn, label %.critedge44, label %bb.v

.critedge44:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i, %_ZNK4entt9meta_type4baseEv.exit
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !371
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.dp, align 8, !tbaa !42
  store i32 1219850847, ptr %i.dr, align 8, !tbaa !43
  store ptr null, ptr %i.dq, align 8, !tbaa !50
  store i8 0, ptr %i.ds, align 4, !tbaa !72
  store ptr null, ptr %0, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.do, ptr %i.dt, align 8, !tbaa !53
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  br label %.critedge40

.critedge40:                                      ; preds = %bb.w, %bb.n, %bb.m, %.critedge44
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !50  ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i55, label %_ZN4entt11meta_handleD2Ev.exit56, label %bb.ab

bb.ab:                                            ; preds = %.critedge40
end_hunk_0
