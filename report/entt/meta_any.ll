Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_any?download=true
begin_hunk_0_@_ZN7testing13PrintToStringIPN7MetaAny12unmanageableEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.f, align 8, !tbaa !64, !alias.scope !2197
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #28
  br label %.body

bb.f:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIPN7MetaAny12unmanageableEE5PrintERKS4_PSo.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.y = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.y, ptr %2, align 8, !tbaa !47
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aa = getelementptr i8, ptr %i.y, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !47
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !91 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !64
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #28
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #26
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !47
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !290
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %bb.e ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJEEES2_jOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.entt::meta_handle", align 8 ; 16 uses
  %5 = alloca %"class.entt::meta_handle", align 8 ; 12 uses
  %6 = alloca %"class.entt::meta_type", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !74, !noalias !2207 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62, !noalias !2207 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !63, !noalias !2207 ; 2 uses
  %switch.selectcmp.i.i.i.i = icmp eq i8 %i.d, 0  ; 3 uses
  %switch.select.i.i.i.i = select i1 %switch.selectcmp.i.i.i.i, i8 0, i8 3
  %switch.selectcmp2.i.i.i.i = icmp eq i8 %i.d, 4 ; 2 uses
  %switch.select3.i.i.i.i = select i1 %switch.selectcmp2.i.i.i.i, i8 4, i8 %switch.select.i.i.i.i ; 2 uses
  %i.i = load ptr, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72, !noalias !2208
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87, !noalias !2208
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !2208 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr null, ptr %i.q, align 8, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.h, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i8 %switch.select3.i.i.i.i, ptr %i.s, align 4, !tbaa !74
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i8 %i.d, 2
  %i.u = select i1 %i.t, ptr %3, ptr %i.i         ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !64
  br label %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit

_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit: ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ null, %bb.a ], [ %i.u, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.b, ptr %i.w, align 8, !tbaa !72
  %i.x = icmp eq ptr %i.b, %i.k
  %spec.select.i.i = select i1 %i.x, ptr %i.m, ptr null ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.y, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.o, ptr %i.z, align 8, !tbaa !86
  %i.aa = load ptr, ptr %1, align 8, !tbaa !145   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.c:                                             ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.aa, %_ZN4entt11meta_handleC2INS_8meta_anyEEERKNS_8meta_ctxERT_Qntsr3stlE7same_asINSt12remove_cvrefIDtfp0_EE4typeES0_E.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !154 ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !255 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !255 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.010.015.i = phi ptr [ %i.am, %bb.e ], [ %i.ah, %bb.d ] ; 4 uses
  %i.al = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !273
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
  %.sroa.095.0134.us151.i.us = load ptr, ptr %.sroa.095.0134.us151.i.in.us, align 8, !tbaa !255 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.036138.us147.i.us, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !275
  %i.aq = and i32 %i.ap, 1
  %.not.i56.us152.i.us = icmp eq i32 %i.aq, 0
  br i1 %.not.i56.us152.i.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.lr.ph139.split.split.us.i.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.036138.us147.i.us, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !276
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.preheader.us165.i.us, label %bb.h

.preheader.us165.i.us:                            ; preds = %bb.f
  %.not54.us153.i.us = icmp eq ptr %.045135.us150.i.us, null
  br i1 %.not54.us153.i.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.us165.i.us
  %i.au = getelementptr inbounds nuw i8, ptr %.045135.us150.i.us, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !275
  %.fr93 = freeze i32 %i.av
  %.not.i68.us155.i.us = trunc i32 %.fr93 to i1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader.us165.i.us, %bb.f, %.lr.ph139.split.split.us.i.us
  %.348.us158.i.us = phi ptr [ %.045135.us150.i.us, %.lr.ph139.split.split.us.i.us ], [ %.045135.us150.i.us, %bb.f ], [ %.045135.us150.i.us, %bb.g ], [ %.036138.us147.i.us, %.preheader.us165.i.us ] ; 2 uses
  %.340.us160.i.us = phi i1 [ %.037137.us148.i.us, %.lr.ph139.split.split.us.i.us ], [ %.037137.us148.i.us, %bb.f ], [ %.not.i68.us155.i.us, %bb.g ], [ false, %.preheader.us165.i.us ] ; 2 uses
  %.not.i70.us161.i.us = icmp eq ptr %.sroa.095.0134.us151.i.us, null
  br i1 %.not.i70.us161.i.us, label %.split.us, label %.lr.ph139.split.split.us.i.us, !llvm.loop !2204

.lr.ph139.split.split.us.i:                       ; preds = %.lr.ph139.i, %bb.j
  %.036138.us147.i = phi ptr [ %.sroa.095.0134.us151.i, %bb.j ], [ %.sroa.010.015.i, %.lr.ph139.i ] ; 5 uses
  %.037137.us148.i = phi i1 [ %.340.us160.i, %bb.j ], [ false, %.lr.ph139.i ]
  %.045135.us150.i = phi ptr [ %.348.us158.i, %bb.j ], [ null, %.lr.ph139.i ] ; 4 uses
  %.sroa.095.0134.us151.i.in = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 56
  %.sroa.095.0134.us151.i = load ptr, ptr %.sroa.095.0134.us151.i.in, align 8, !tbaa !255 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !276
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.preheader.us165.i, label %bb.j

bb.i:                                             ; preds = %.preheader.us165.i
  %i.az = getelementptr inbounds nuw i8, ptr %.036138.us147.i, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !275
  %i.bb = and i32 %i.ba, 1
  %.not.i67.us154.i = icmp eq i32 %i.bb, 0        ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.045135.us150.i, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !275
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
  br i1 %.not.i70.us161.i, label %.split.us, label %.lr.ph139.split.split.us.i, !llvm.loop !2204

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
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !279
  store ptr null, ptr %5, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.bl, align 8, !tbaa !73
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %i.h, ptr %i.bm, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i8 %switch.select3.i.i.i.i, ptr %i.bn, align 4, !tbaa !74
  br i1 %switch.selectcmp.i.i.i.i, label %_ZN4entt11meta_handleC2EOS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %4, align 8, !tbaa !95
  store ptr %i.v, ptr %5, align 8, !tbaa !64
  br label %_ZN4entt11meta_handleC2EOS0_.exit

_ZN4entt11meta_handleC2EOS0_.exit:                ; preds = %bb.k, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.b, ptr %i.bo, align 8, !tbaa !72
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.y, align 8, !tbaa !120
  store ptr %spec.select.i.i, ptr %i.bp, align 8, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr null, ptr %i.z, align 8, !tbaa !95
  store ptr %i.o, ptr %i.bq, align 8, !tbaa !86
  invoke void %i.bj(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZN4entt11meta_handleC2EOS0_.exit
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %.critedge40, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %.critedge40 unwind label %bb.o, !inline_history !0

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #27
  unreachable

bb.p:                                             ; preds = %_ZN4entt11meta_handleC2EOS0_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i45, label %_ZN4entt11meta_handleD2Ev.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.bv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN4entt11meta_handleD2Ev.exit46 unwind label %bb.r, !inline_history !0

bb.r:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27
  unreachable

.critedge:                                        ; preds = %bb.e, %bb.d, %.split.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.by = load ptr, ptr %1, align 8, !tbaa !145, !noalias !2209 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.s:                                             ; preds = %.critedge
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !2209
  %i.cb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ca) #26, !noalias !2209
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.s, %.critedge
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ %i.by, %.critedge ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !154, !noalias !2209
  %.not.i47 = icmp eq ptr %i.ce, null
  br i1 %.not.i47, label %.critedge44, label %bb.t

bb.t:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !2209 ; 3 uses
  %i.cg = load ptr, ptr %1, align 8, !tbaa !145, !noalias !2209 ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, label %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i

_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i: ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !154, !noalias !2209
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !209, !noalias !2209
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit2.i:        ; preds = %bb.t
  %i.cm = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) #26, !noalias !2209
  %.pr.i = load ptr, ptr %1, align 8, !tbaa !145, !noalias !2209 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 120
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !154, !noalias !2209
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !209, !noalias !2209 ; 2 uses
  %i.cr = icmp eq ptr %.pr.i, null
  br i1 %i.cr, label %bb.u, label %_ZNK4entt9meta_type4baseEv.exit

bb.u:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !144, !noalias !2209
  %i.ct = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cs) #26, !noalias !2209
  br label %_ZNK4entt9meta_type4baseEv.exit

_ZNK4entt9meta_type4baseEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i, %bb.u
  %i.cu = phi ptr [ %i.cq, %bb.u ], [ %i.cq, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cl, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ] ; 2 uses
  %i.cv = phi ptr [ %i.ct, %bb.u ], [ %.pr.i, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.i ], [ %i.cg, %_ZNK4entt9meta_type10fetch_nodeEv.exit2.thread.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !154, !noalias !2209
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !209, !noalias !2209 ; 2 uses
  %i.da = icmp eq ptr %i.cu, %i.cz
  br i1 %i.da, label %.critedge44, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4entt9meta_type4baseEv.exit
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN4entt8meta_anyD2Ev.exit
  %.sroa.061.074 = phi ptr [ %i.cu, %.lr.ph ], [ %i.dm, %_ZN4entt8meta_anyD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !211
  %i.dg = call noundef nonnull align 8 dereferenceable(128) ptr %i.df(ptr noundef nonnull align 8 dereferenceable(56) %i.cf) #26, !inline_history !36
  store ptr %i.dg, ptr %6, align 8
  store ptr %i.cf, ptr %i.db, align 8
  invoke void @_ZNK4entt9meta_type6invokeIRNS_8meta_anyEJEEES2_jOT_DpOT0_(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !86
  %.not71 = icmp eq ptr %i.dh, null
  br i1 %.not71, label %bb.y, label %.critedge40

bb.x:                                             ; preds = %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN4entt11meta_handleD2Ev.exit46

bb.y:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZN4entt8meta_anyD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void %i.dj(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN4entt8meta_anyD2Ev.exit unwind label %bb.aa, !inline_history !0

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #27
  unreachable

_ZN4entt8meta_anyD2Ev.exit:                       ; preds = %bb.y, %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.061.074, i64 24 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cz
  br i1 %i.dn, label %.critedge44, label %bb.v

.critedge44:                                      ; preds = %_ZN4entt8meta_anyD2Ev.exit, %_ZNK4entt9meta_type10fetch_nodeEv.exit.i, %_ZNK4entt9meta_type4baseEv.exit
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEvEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.dp, align 8, !tbaa !62
  store i32 1219850847, ptr %i.dr, align 8, !tbaa !63
  store ptr null, ptr %i.dq, align 8, !tbaa !73
  store i8 0, ptr %i.ds, align 4, !tbaa !74
  store ptr null, ptr %0, align 8, !tbaa !64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.do, ptr %i.dt, align 8, !tbaa !72
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false)
  br label %.critedge40

.critedge40:                                      ; preds = %bb.w, %bb.n, %bb.m, %.critedge44
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !73  ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i55, label %_ZN4entt11meta_handleD2Ev.exit56, label %bb.ab

bb.ab:                                            ; preds = %.critedge40
end_hunk_0
begin_hunk_1_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRNS_8meta_anyEJiEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES5_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !150
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !150
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !215
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !215
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !154 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !154
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !154
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !150 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !209 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !209 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !214
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !150
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !154 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !204 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !204 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !206
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !2221

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !275
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !275
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !255
  br label %.lr.ph139.split.us, !llvm.loop !2222

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #27
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #27
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !275
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !276
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !275
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !275
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !255
  br label %.lr.ph139.split.split.us, !llvm.loop !2222

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_any") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.entt::meta_handle", align 8 ; 17 uses
  %6 = alloca %"struct.std::array.360", align 8   ; 14 uses
  %7 = alloca %"class.entt::meta_handle", align 8 ; 12 uses
  %8 = alloca %"struct.std::array.361", align 8   ; 15 uses
  %9 = alloca %"class.entt::meta_type", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !74, !noalias !2229
  %i.e = icmp eq i8 %i.d, 2
  %i.f = load ptr, ptr %3, align 8, !noalias !2229
  %i.g = select i1 %i.e, ptr %3, ptr %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62, !noalias !2229
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !63, !noalias !2229
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72, !noalias !2230
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87, !noalias !2230
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86, !noalias !2230
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.r, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.s, align 8, !tbaa !73
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  store i8 4, ptr %i.u, align 4, !tbaa !74
  store ptr %i.g, ptr %5, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.v, align 8, !tbaa !72
  %i.w = icmp eq ptr %i.b, %i.m
  %spec.select.i.i = select i1 %i.w, ptr %i.o, ptr null
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %spec.select.i.i, ptr %i.x, align 8, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.y, align 8, !tbaa !86
  %i.z = load ptr, ptr %1, align 8, !tbaa !145    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit

_ZNK4entt9meta_type10fetch_nodeEv.exit:           ; preds = %bb.a, %bb.b
  %i.ac = phi ptr [ %i.ab, %bb.b ], [ %i.z, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154 ; 3 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !255 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !255 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %.critedge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.010.015.i = phi ptr [ %i.al, %bb.d ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ak = load i32, ptr %.sroa.010.015.i, align 8, !tbaa !273
  %.not.i = icmp eq i32 %i.ak, %2
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i, i64 88 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %.critedge, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.ao, align 8, !tbaa !62
  store i32 -1779859874, ptr %i.aq, align 8, !tbaa !63
  store ptr null, ptr %i.ap, align 8, !tbaa !73
  store i8 3, ptr %i.ar, align 4, !tbaa !74
  store ptr %4, ptr %6, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.an, ptr %i.as, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.at, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.au, align 8, !tbaa !86
  %i.av = invoke noundef ptr @_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRKNS_8meta_anyEJiEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES6_bT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %6, i64 noundef 1, i1 noundef zeroext true, ptr nonnull %.sroa.010.015.i)
          to label %bb.f unwind label %bb.s       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !73 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit unwind label %bb.h, !inline_history !0

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #27
  unreachable

_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit:   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.not43 = icmp eq ptr %i.av, null
  br i1 %.not43, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZNSt5arrayIN4entt11meta_handleELm1EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !279
  store ptr null, ptr %7, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.r, align 8, !tbaa !95
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !62
  store <2 x ptr> %i.bd, ptr %i.bb, align 8, !tbaa !95
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bg = load i32, ptr %i.t, align 8, !tbaa !63
  store i32 %i.bg, ptr %i.bf, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bi = load i8, ptr %i.u, align 4, !tbaa !74   ; 2 uses
  store i8 %i.bi, ptr %i.bh, align 4, !tbaa !74
  switch i8 %i.bi, label %bb.k [
    i8 2, label %bb.j
    i8 0, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.bj = invoke noundef ptr %i.be(i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.m unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %5, align 8, !tbaa !95
  store ptr null, ptr %5, align 8, !tbaa !95
  store ptr %i.bk, ptr %7, align 8, !tbaa !64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #27
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bo = load <2 x ptr>, ptr %i.v, align 8, !tbaa !95
  store ptr null, ptr %i.x, align 8, !tbaa !120
  store <2 x ptr> %i.bo, ptr %i.bn, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bq = load ptr, ptr %i.y, align 8, !tbaa !95
  store ptr null, ptr %i.y, align 8, !tbaa !95
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !144
  store ptr null, ptr %8, align 8, !tbaa !64
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 36
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.bs, align 8, !tbaa !62
  store i32 -1779859874, ptr %i.bu, align 8, !tbaa !63
  store ptr null, ptr %i.bt, align 8, !tbaa !73
  store i8 2, ptr %i.bv, align 4, !tbaa !74
  %i.bw = load i32, ptr %4, align 4, !tbaa !124
  store i32 %i.bw, ptr %8, align 8, !tbaa !124
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.br, ptr %i.bx, align 8, !tbaa !72
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr null, ptr %i.by, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedEiEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.bz, align 8, !tbaa !86
  invoke void %i.ba(ptr dead_on_unwind writable sret(%"class.entt::meta_any") align 8 %0, ptr nofreeobj noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %8)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
end_hunk_1
begin_hunk_2_@_ZNK4entt9meta_type6lookupImZNKS0_6invokeIRKNS_8meta_anyEJiEEES3_jOT_DpOT0_EUlvE_EEDaPNS_11meta_handleES6_bT0_:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %.pre191 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !150
  br label %_ZNK4entt9meta_type4infoEv.exit58.us

_ZNK4entt9meta_type4infoEv.exit58.us:             ; preds = %bb.x, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us
  %i.cy = phi i32 [ %i.bw, %_ZNK4entt9dense_mapIjSt10unique_ptrINS_8internal14meta_type_nodeESt14default_deleteIS3_EESt8identitySt8equal_toIvESaISt4pairIKjS6_EEE4findERSB_.exit.i80.us ], [ %.pre191, %bb.x ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !150
  %i.db = icmp eq i32 %i.da, %i.cy
  br i1 %i.db, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us
  %i.dc = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit.us

_ZNK4entt9meta_type10fetch_nodeEv.exit.us:        ; preds = %bb.y, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.dd = phi ptr [ %i.cz, %bb.y ], [ %i.bl, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ] ; 2 uses
  %i.de = phi ptr [ %i.dc, %bb.y ], [ %.sroa.0.0.i.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !215
  %.not50.us = icmp eq ptr %i.dg, null
  br i1 %.not50.us, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.y, label %bb.aa, label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

bb.aa:                                            ; preds = %bb.z
  %i.dh = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.n) #26
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us

_ZNK4entt9meta_type10fetch_nodeEv.exit59.us:      ; preds = %bb.aa, %bb.z
  %i.di = phi ptr [ %i.dh, %bb.aa ], [ %i.m, %bb.z ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !215
  %.not51.us = icmp eq ptr %i.dk, null
  br i1 %.not51.us, label %bb.ab, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

bb.ab:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit.us
  br i1 %i.bj, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us: ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.us, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !154 ; 2 uses
  %.not106.us = icmp eq ptr %i.dm, null
  br i1 %.not106.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit60.us:      ; preds = %bb.ab
  %i.dn = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 120
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !154
  %.not107.us = icmp eq ptr %i.dp, null
  br i1 %.not107.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ac

bb.ac:                                            ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us
  %i.dq = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.phi.trans.insert192 = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  %.pre193 = load ptr, ptr %.phi.trans.insert192, align 8, !tbaa !154
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us

_ZNK4entt9meta_type10fetch_nodeEv.exit61.us:      ; preds = %bb.ac, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us
  %i.dr = phi ptr [ %.pre193, %bb.ac ], [ %i.dm, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i32, ptr %i.dd, align 4, !tbaa !150 ; 2 uses
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !209 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !209 ; 2 uses
  %i.dx = icmp eq ptr %i.du, %i.dw
  br i1 %i.dx, label %.loopexit.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us, %bb.ad
  %.sroa.010.015.i.us = phi ptr [ %i.dz, %bb.ad ], [ %i.du, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.010.015.i.us, align 8, !tbaa !214
  %.not.i62.us = icmp eq i32 %i.dy, %i.dt
  br i1 %.not.i62.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.us
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i.us, i64 24 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dw
  br i1 %i.ea, label %.loopexit.us, label %.lr.ph.i.us

.loopexit.us:                                     ; preds = %bb.ad, %_ZNK4entt9meta_type10fetch_nodeEv.exit61.us
  br i1 %i.bj, label %bb.ae, label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

bb.ae:                                            ; preds = %.loopexit.us
  %i.eb = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0.i.us) #26
  %.pre194 = load i32, ptr %i.dd, align 4, !tbaa !150
  br label %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us

_ZNK4entt9meta_type10fetch_nodeEv.exit63.us:      ; preds = %bb.ae, %.loopexit.us
  %i.ec = phi i32 [ %.pre194, %bb.ae ], [ %i.dt, %.loopexit.us ]
  %i.ed = phi ptr [ %i.eb, %bb.ae ], [ %.sroa.0.0.i.us, %.loopexit.us ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !154 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 48
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !204 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !204 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

.lr.ph.i64.us:                                    ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %bb.af
  %.sroa.010.015.i65.us = phi ptr [ %i.em, %bb.af ], [ %i.eh, %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us ] ; 2 uses
  %i.el = load i32, ptr %.sroa.010.015.i65.us, align 8, !tbaa !206
  %.not.i66.us = icmp eq i32 %i.el, %i.ec
  br i1 %.not.i66.us, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i64.us
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.015.i65.us, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ej
  br i1 %i.en, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, label %.lr.ph.i64.us

bb.ag:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit58.us, %_ZNK4entt9meta_type4infoEv.exit58.thread.us
  %i.eo = add i64 %.034123.us, 1
  br label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %.lr.ph.i.us, %.lr.ph.i64.us, %bb.ag, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us
  %.2.ph.us = phi i64 [ %.034123.us, %.lr.ph.i64.us ], [ %.034123.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit59.us ], [ %i.eo, %bb.ag ], [ %.034123.us, %.lr.ph.i.us ] ; 2 uses
  %i.ep = add nuw i64 %.0124.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %2
  br i1 %exitcond.not, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.d, !llvm.loop !2232

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us: ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit63.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.us, %_ZNK4entt9meta_type10fetch_nodeEv.exit60.thread.us, %bb.af
  %i.eq = icmp eq i64 %.0124.us, %2
  br i1 %i.eq, label %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, label %bb.aj

_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread: ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us
  %.034118.us213 = phi i64 [ %.034123.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.2.ph.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_conv_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ] ; 3 uses
  %.not54.us = icmp eq ptr %.045135.us, null
  %i.er = icmp ugt i64 %.034118.us213, %.041136.us
  %or.cond.us = select i1 %.not54.us, i1 true, i1 %i.er
  br i1 %or.cond.us, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread
  %i.es = icmp eq i64 %.034118.us213, %.041136.us
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr inbounds nuw i8, ptr %.036138.us, i64 16
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !275
  %i.ev = and i32 %i.eu, 1
  %.not.i67.us = icmp eq i32 %i.ev, 0             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.045135.us, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !275
  %i.ey = and i32 %i.ex, 1
  %.not.i68.us = icmp eq i32 %i.ey, 0             ; 2 uses
  %i.ez = xor i1 %.not.i67.us, %.not.i68.us
  %i.fa = xor i1 %.not.i68.us, true
  %i.fb = and i1 %.not.i67.us, %i.fa
  %spec.select.us = select i1 %i.fb, ptr %.036138.us, ptr %.045135.us
  %not..us = xor i1 %i.ez, true
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us, %bb.c, %bb.b
  %.348.us = phi ptr [ %.045135.us, %bb.b ], [ %.045135.us, %bb.c ], [ %spec.select.us, %bb.ai ], [ %.045135.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.036138.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.045135.us, %bb.ah ] ; 2 uses
  %.344.us = phi i64 [ %.041136.us, %bb.b ], [ %.041136.us, %bb.c ], [ %.041136.us, %bb.ai ], [ %.041136.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ %.034118.us213, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.041136.us, %bb.ah ]
  %.340.us = phi i1 [ %.037137.us, %bb.b ], [ %.037137.us, %bb.c ], [ %not..us, %bb.ai ], [ %.037137.us, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us ], [ false, %_ZN4entt8internal11find_memberISt6vectorINS0_14meta_base_nodeESaIS3_EEjEEPDaRT_T0_.exit.us.thread ], [ %.037137.us, %bb.ah ] ; 2 uses
  %.not.i70.us = icmp eq ptr %.sroa.095.0134.us, null
  br i1 %.not.i70.us, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us

_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us: ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !255
  br label %.lr.ph139.split.us, !llvm.loop !2233

.preheader.us:                                    ; preds = %bb.c
  %i.fe = getelementptr inbounds nuw i8, ptr %.036138.us, i64 40
  br label %bb.d

.split.us:                                        ; preds = %bb.f
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  tail call void @__clang_call_terminate(ptr %i.fg) #27
  unreachable

.split143.us:                                     ; preds = %bb.h
  %i.fh = landingpad { ptr, i32 }
          catch ptr null
  %i.fi = extractvalue { ptr, i32 } %i.fh, 0
  tail call void @__clang_call_terminate(ptr %i.fi) #27
  unreachable

.lr.ph139.split.split.us:                         ; preds = %.lr.ph139, %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162
  %.036138.us147 = phi ptr [ %.sroa.095.0134.us151, %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %4, %.lr.ph139 ] ; 5 uses
  %.037137.us148 = phi i1 [ %.340.us160, %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ false, %.lr.ph139 ] ; 2 uses
  %.045135.us150 = phi ptr [ %.348.us158, %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ null, %.lr.ph139 ] ; 5 uses
  %.sroa.095.0134.us151 = phi ptr [ %i.fz, %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162 ], [ %i.b, %.lr.ph139 ] ; 3 uses
  br i1 %3, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph139.split.split.us
  %i.fj = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !275
  %i.fl = and i32 %i.fk, 1
  %.not.i56.us152 = icmp eq i32 %i.fl, 0
  br i1 %.not.i56.us152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph139.split.split.us
  %i.fm = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !276
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %.preheader.us165, label %bb.an

bb.am:                                            ; preds = %.preheader.us165
  %i.fp = getelementptr inbounds nuw i8, ptr %.036138.us147, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !275
  %i.fr = and i32 %i.fq, 1
  %.not.i67.us154 = icmp eq i32 %i.fr, 0          ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.045135.us150, i64 16
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !275
  %i.fu = and i32 %i.ft, 1
  %.not.i68.us155 = icmp eq i32 %i.fu, 0          ; 2 uses
  %i.fv = xor i1 %.not.i67.us154, %.not.i68.us155
  %i.fw = xor i1 %.not.i68.us155, true
  %i.fx = and i1 %.not.i67.us154, %i.fw
  %spec.select.us156 = select i1 %i.fx, ptr %.036138.us147, ptr %.045135.us150
  %not..us157 = xor i1 %i.fv, true
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.us165, %bb.al, %bb.ak
  %.348.us158 = phi ptr [ %.045135.us150, %bb.ak ], [ %.045135.us150, %bb.al ], [ %spec.select.us156, %bb.am ], [ %.036138.us147, %.preheader.us165 ] ; 2 uses
  %.340.us160 = phi i1 [ %.037137.us148, %bb.ak ], [ %.037137.us148, %bb.al ], [ %not..us157, %bb.am ], [ false, %.preheader.us165 ] ; 2 uses
  %.not.i70.us161 = icmp eq ptr %.sroa.095.0134.us151, null
  br i1 %.not.i70.us161, label %._crit_edge, label %_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162

_ZZNK4entt9meta_type6invokeIRKNS_8meta_anyEJiEEES2_jOT_DpOT0_ENUlvE_clEv.exit71.us162: ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.095.0134.us151, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !255
  br label %.lr.ph139.split.split.us, !llvm.loop !2233

.preheader.us165:                                 ; preds = %bb.al
  %.not54.us153 = icmp eq ptr %.045135.us150, null
  br i1 %.not54.us153, label %bb.an, label %bb.am

._crit_edge:                                      ; preds = %bb.aj, %bb.an
  %.045.lcssa = phi ptr [ %.348.us158, %bb.an ], [ %.348.us, %bb.aj ]
  %.037.lcssa = phi i1 [ %.340.us160, %bb.an ], [ %.340.us, %bb.aj ]
  %cond.fr = freeze i1 %.037.lcssa
  %spec.select = select i1 %cond.fr, ptr null, ptr %.045.lcssa
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.a
  %i.ga = phi ptr [ null, %bb.a ], [ %spec.select, %._crit_edge ]
  ret ptr %i.ga
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperOpFailureIPKcDnEENS_15AssertionResultES3_S3_RKT_RKT0_S3_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %7 = alloca %"class.testing::Message", align 8  ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 8 uses
  %10 = alloca %"class.testing::Message", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 8 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN7testing16AssertionFailureEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %15, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.468, i64 noundef 11)
          to label %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i unwind label %bb.c ; 0 uses

_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i:     ; preds = %.noexc
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i
  %i.e = load ptr, ptr %15, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(128) %i.e) #26, !inline_history !31
  br label %bb.d

bb.c:                                             ; preds = %_ZN7testing7MessagelsIA12_cEERS0_RKT_.exit.i, %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %15, align 8, !tbaa !93    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #26, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit5.i

_ZN7testing7MessageD2Ev.exit5.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %.noexc15 unwind label %bb.ai

.noexc15:                                         ; preds = %bb.d
  %i.n = icmp eq ptr %1, null
  %i.o = load ptr, ptr %14, align 8, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br i1 %i.n, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc15
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc15
  %i.r = phi ptr [ %1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ @.str.474, %.noexc15 ]
  %i.s = phi i64 [ %i.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i ], [ 6, %.noexc15 ]
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.r, i64 noundef %i.s)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i:       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i
  %i.u = load ptr, ptr %14, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i13, label %bb.g, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14: ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #26, !inline_history !32
  br label %bb.g

bb.f:                                             ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %14, align 8, !tbaa !93    ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.f
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #26, !inline_history !32
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body

bb.g:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i14, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc23 unwind label %bb.ai

.noexc23:                                         ; preds = %bb.g
  %i.ad = load ptr, ptr %13, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) @.str.469, i64 noundef 2)
          to label %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i unwind label %bb.i ; 0 uses

_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i:      ; preds = %.noexc23
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i
  %i.ag = load ptr, ptr %13, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i21, label %bb.j, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22: ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #26, !inline_history !33
  br label %bb.j

bb.i:                                             ; preds = %_ZN7testing7MessagelsIA3_cEERS0_RKT_.exit.i, %.noexc23
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %13, align 8, !tbaa !93   ; 3 uses
  %.not.i.i3.i18 = icmp eq ptr %i.al, null
  br i1 %.not.i.i3.i18, label %_ZN7testing7MessageD2Ev.exit5.i20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19: ; preds = %bb.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #26, !inline_history !33
  br label %_ZN7testing7MessageD2Ev.exit5.i20

_ZN7testing7MessageD2Ev.exit5.i20:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i19, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i22, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %.noexc34 unwind label %bb.ai

.noexc34:                                         ; preds = %bb.j
  %i.ap = icmp eq ptr %5, null
  %i.aq = load ptr, ptr %12, align 8, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  br i1 %i.ap, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26: ; preds = %.noexc34
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #26
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26, %.noexc34
  %i.at = phi ptr [ %5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ @.str.474, %.noexc34 ]
  %i.au = phi i64 [ %i.as, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i26 ], [ 6, %.noexc34 ]
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.at, i64 noundef %i.au)
          to label %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31 unwind label %bb.l ; 0 uses

_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i31:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.invoke.i27
end_hunk_2
