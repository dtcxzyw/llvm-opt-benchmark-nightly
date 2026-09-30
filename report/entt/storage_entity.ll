Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage_entity?download=true
inline.NumInlined: 4731
inline.NumDeleted: 1076
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN27StorageEntity_Generate_Test8TestBodyEv:bb.a
  br i1 %i.aag, label %bb.ky, label %bb.kp

bb.kn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit550, %bb.kb
  %.pn199.pn.pn = phi { ptr, i32 } [ %.pn199.pn, %_ZN7testing7MessageD2Ev.exit550 ], [ %i.zo, %bb.kb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  br label %bb.lf

bb.ko:                                            ; preds = %bb.kl
  %i.aah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #26
  br label %bb.le

bb.kp:                                            ; preds = %bb.km
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.kq unwind label %bb.ku

bb.kq:                                            ; preds = %bb.kp
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  %i.aai = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !72 ; 2 uses
  %.not.i.i.i551 = icmp eq ptr %i.aaj, null
  br i1 %.not.i.i.i551, label %_ZNK7testing15AssertionResult15failure_messageEv.exit552, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit552

_ZNK7testing15AssertionResult15failure_messageEv.exit552: ; preds = %bb.kr, %bb.kq
  %i.aal = phi ptr [ %i.aak, %bb.kr ], [ @.str.49, %bb.kq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %56, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef %i.aal)
          to label %bb.ks unwind label %bb.kv

bb.ks:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit552
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %bb.kt unwind label %bb.kw

bb.kt:                                            ; preds = %bb.ks
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.aam = load ptr, ptr %55, align 8, !tbaa !78  ; 3 uses
  %.not.i.i553 = icmp eq ptr %i.aam, null
  br i1 %.not.i.i553, label %_ZN7testing7MessageD2Ev.exit555, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i554

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i554: ; preds = %bb.kt
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !30
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(128) %i.aam) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit555

_ZN7testing7MessageD2Ev.exit555:                  ; preds = %bb.kt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i554
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  br label %bb.ky

bb.ku:                                            ; preds = %bb.kp
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit558

bb.kv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit552
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ks
  %i.aas = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %56) #26
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %.pn203 = phi { ptr, i32 } [ %i.aas, %bb.kw ], [ %i.aar, %bb.kv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.aat = load ptr, ptr %55, align 8, !tbaa !78  ; 3 uses
  %.not.i.i556 = icmp eq ptr %i.aat, null
  br i1 %.not.i.i556, label %_ZN7testing7MessageD2Ev.exit558, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i557

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i557: ; preds = %bb.kx
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !30
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %i.aaw = load ptr, ptr %i.aav, align 8
  call void %i.aaw(ptr noundef nonnull align 8 dereferenceable(128) %i.aat) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit558

_ZN7testing7MessageD2Ev.exit558:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i557, %bb.kx, %bb.ku
  %.pn203.pn = phi { ptr, i32 } [ %i.aaq, %bb.ku ], [ %.pn203, %bb.kx ], [ %.pn203, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i557 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #26
  br label %bb.le

bb.ky:                                            ; preds = %bb.km, %_ZN7testing7MessageD2Ev.exit555
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %54) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.kz

bb.kz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit547, %_ZN7testing7MessageD2Ev.exit536, %_ZN7testing7MessageD2Ev.exit527, %_ZN7testing7MessageD2Ev.exit519, %_ZN7testing7MessageD2Ev.exit508, %_ZN7testing15AssertionResultD2Ev.exit492, %_ZN7testing15AssertionResultD2Ev.exit471, %_ZN7testing15AssertionResultD2Ev.exit450, %_ZN7testing15AssertionResultD2Ev.exit429, %_ZN7testing15AssertionResultD2Ev.exit408, %_ZN7testing15AssertionResultD2Ev.exit387, %_ZN7testing15AssertionResultD2Ev.exit367, %_ZN7testing15AssertionResultD2Ev.exit346, %_ZN7testing15AssertionResultD2Ev.exit325, %_ZN7testing15AssertionResultD2Ev.exit304, %_ZN7testing15AssertionResultD2Ev.exit265, %_ZN7testing15AssertionResultD2Ev.exit, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt16basic_sparse_setINS_6entityESaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !30
  %i.aax = load ptr, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !92 ; 2 uses
  %i.aba = icmp eq ptr %i.aax, %i.aaz
  br i1 %i.aba, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i559

.lr.ph.i.i559:                                    ; preds = %bb.kz, %bb.lb
  %.sroa.08.012.i.i = phi ptr [ %i.abc, %bb.lb ], [ %i.aax, %bb.kz ] ; 3 uses
  %i.abb = load ptr, ptr %.sroa.08.012.i.i, align 8, !tbaa !90 ; 2 uses
  %.not.i.i560 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i560, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i.i559
  call void @_ZdlPvm(ptr noundef nonnull %i.abb, i64 noundef 16384) #27, !inline_history !91
  store ptr null, ptr %.sroa.08.012.i.i, align 8, !tbaa !90
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %.lr.ph.i.i559
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8 ; 2 uses
  %i.abd = icmp eq ptr %i.abc, %i.aaz
  br i1 %i.abd, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i, label %.lr.ph.i.i559

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i: ; preds = %bb.lb, %bb.kz
  %i.abe = load ptr, ptr %i.ar, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i.i561 = icmp eq ptr %i.abe, null
  br i1 %.not.i.i.i.i561, label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, label %bb.lc

bb.lc:                                            ; preds = %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !86
  %i.abh = ptrtoint ptr %i.abg to i64
  %i.abi = ptrtoint ptr %i.abe to i64
  %i.abj = sub i64 %i.abh, %i.abi
  call void @_ZdlPvm(ptr noundef nonnull %i.abe, i64 noundef %i.abj) #27, !inline_history !91
  br label %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i:   ; preds = %bb.lc, %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE20release_sparse_pagesEv.exit.i
  %i.abk = load ptr, ptr %i.am, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.abk, null
  br i1 %.not.i.i.i1.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit, label %bb.ld

bb.ld:                                            ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !84
  %i.abn = ptrtoint ptr %i.abm to i64
  %i.abo = ptrtoint ptr %i.abk to i64
  %i.abp = sub i64 %i.abn, %i.abo
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %i.abp) #27, !inline_history !91
  br label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit

_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4entt6entityESaIS1_EED2Ev.exit.i, %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.le:                                            ; preds = %_ZN7testing7MessageD2Ev.exit558, %bb.ko
  %.pn203.pn.pn = phi { ptr, i32 } [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit558 ], [ %i.aah, %bb.ko ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.kn, %bb.ka, %bb.jk, %bb.jj, %bb.it, %bb.id, %bb.ho, %bb.gy, %bb.gh, %bb.fr, %bb.fb, %bb.el, %bb.dv, %bb.dd, %bb.ck, %bb.br, %bb.ay, %bb.ac
  %.pn203.pn.pn.pn = phi { ptr, i32 } [ %.pn203.pn.pn, %bb.le ], [ %.pn199.pn.pn, %bb.kn ], [ %i.yj, %bb.jk ], [ %.pn195.pn.pn, %bb.ka ], [ %.pn189.pn.pn, %bb.jj ], [ %.pn183.pn.pn, %bb.it ], [ %.pn177.pn.pn, %bb.id ], [ %.pn173.pn.pn, %bb.ho ], [ %.pn169.pn.pn, %bb.gy ], [ %.pn165.pn.pn, %bb.gh ], [ %.pn161.pn.pn, %bb.fr ], [ %.pn157.pn.pn, %bb.fb ], [ %.pn153.pn.pn, %bb.el ], [ %.pn149.pn.pn, %bb.dv ], [ %.pn143.pn.pn, %bb.dd ], [ %.pn137.pn.pn, %bb.ck ], [ %.pn131.pn.pn, %bb.br ], [ %.pn125.pn.pn, %bb.ay ], [ %.pn119.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn203.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal11CmpHelperLTImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %3, align 8, !tbaa !89
  %i.b = load i64, ptr %4, align 8, !tbaa !89
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7testing8internal18CmpHelperOpFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.265)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateITkSt15output_iteratorIT_EPS1_EEvS6_S6_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.not13 = icmp eq ptr %1, %2
  br i1 %.not13, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %i.x, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not9 = icmp eq i64 %i.j, %i.h
  br i1 %.not9, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.x, %bb.b ], [ %.014, %.lr.ph ] ; 2 uses
  %.not1017 = icmp eq ptr %.0.lcssa, %2
  br i1 %.not1017, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101
  %i.q = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.p, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !85
  %i.u = getelementptr [4 x i8], ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !101
  store i32 %i.w, ptr %.014, align 4, !tbaa !101
  %i.x = getelementptr inbounds nuw i8, ptr %.014, i64 4 ; 3 uses
  %.not = icmp eq ptr %i.x, %2
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !214

bb.c:                                             ; preds = %.lr.ph19, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit
  %.118 = phi ptr [ %.0.lcssa, %.lr.ph19 ], [ %i.bk, %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit ] ; 2 uses
  %i.y = load i64, ptr %i.k, align 8, !tbaa !59   ; 3 uses
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp ne i32 %i.aa, 1048575
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add i64 %i.y, %i.ac                     ; 2 uses
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !82  ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = and i64 %i.y, 1048575                   ; 2 uses
  %i.al = lshr i64 %i.ak, 12                      ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %i.an = phi i64 [ %i.bb, %bb.d ], [ %i.al, %bb.c ]
  %i.ao = phi i64 [ %i.ba, %bb.d ], [ %i.ak, %bb.c ]
  %.05.i = phi i32 [ %i.aw, %bb.d ], [ %i.aa, %bb.c ] ; 3 uses
  %storemerge4.i = phi i64 [ %i.az, %bb.d ], [ %i.ad, %bb.c ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i: ; preds = %.lr.ph.i
  %i.ar = and i64 %i.ao, 4095
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !101
  %.not.i = icmp ugt i32 %i.at, -1048577
  %i.au = icmp eq i32 %.05.i, 1048575
  %or.cond.i = or i1 %i.au, %.not.i
  br i1 %or.cond.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i
  %i.av = trunc i64 %storemerge4.i to i32
  %i.aw = and i32 %i.av, 1048575                  ; 3 uses
  %i.ax = icmp ne i32 %i.aw, 1048575
  %i.ay = zext i1 %i.ax to i64
  %i.az = add i64 %storemerge4.i, %i.ay           ; 2 uses
  %i.ba = and i64 %storemerge4.i, 1048575         ; 2 uses
  %i.bb = lshr i64 %i.ba, 12                      ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.aj
  br i1 %i.bc, label %.lr.ph.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, !llvm.loop !1

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit: ; preds = %.lr.ph.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i, %bb.d, %bb.c
  %storemerge.lcssa.i = phi i64 [ %i.ad, %bb.c ], [ %storemerge4.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.az, %bb.d ], [ %storemerge4.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %i.aa, %bb.c ], [ %.05.i, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE7currentES1_.exit.i ], [ %i.aw, %bb.d ], [ %.05.i, %.lr.ph.i ]
  store i64 %storemerge.lcssa.i, ptr %i.k, align 8, !tbaa !59
  %i.bd = tail call { ptr, i64 } @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE11try_emplaceES1_bPKv(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.lcssa.i, i1 noundef zeroext true, ptr noundef null) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !85
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !101
  store i32 %i.bj, ptr %.118, align 4, !tbaa !101
  %i.bk = getelementptr inbounds nuw i8, ptr %.118, i64 4 ; 2 uses
  %.not10 = icmp eq ptr %i.bk, %2
  br i1 %.not10, label %._crit_edge, label %bb.c, !llvm.loop !215

._crit_edge:                                      ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE4nextEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN32StorageEntity_GenerateRange_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::basic_storage", align 8 ; 23 uses
  %2 = alloca %"struct.std::array", align 8       ; 11 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %47 = alloca %"class.testing::Message", align 8 ; 7 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.m = load atomic i8, ptr @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4entt9type_infoC2IvEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  %i.p = tail call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIvEERKNS_9type_infoEvE8instance) #26
  br label %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit

_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  store ptr @_ZZN4entt7type_idIvEERKNS_9type_infoEvE8instance, ptr %i.r, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i8 2, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !57
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4entt13basic_storageINS_6entityES1_SaIS1_EEE, i64 16), ptr %1, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i64 0, ptr %i.u, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 0, ptr %2, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN4entt13basic_storageINS_6entityES1_SaIS1_EE8generateITkSt15output_iteratorIT_EPS1_EEvS6_S6_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.w = load i32, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.x = and i32 %i.w, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !82  ; 3 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp ult i64 %i.z, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, label %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread: ; preds = %bb.d, %bb.e
  store i8 0, ptr %3, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8, !tbaa !99
  br label %bb.f

_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit: ; preds = %bb.e
  %i.al = and i64 %i.y, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = and i32 %i.w, -1048576
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ap = xor i32 %i.ao, %i.an
  %i.aq = icmp ult i32 %i.ap, 1048575             ; 2 uses
  %i.ar = zext i1 %i.aq to i8
  store i8 %i.ar, ptr %3, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !99
  br i1 %i.aq, label %bb.q, label %bb.f

.loopexit:                                        ; preds = %.noexc252, %bb.bu
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

.loopexit.split-lp:                               ; preds = %_ZN4entt13basic_storageINS_6entityES1_SaIS1_EEC2Ev.exit, %bb.dm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.f:                                             ; preds = %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit
  %i.at = phi ptr [ %i.ak, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit.thread ], [ %i.as, %_ZNK4entt16basic_sparse_setINS_6entityESaIS1_EE8containsES1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %6, align 8, !tbaa !76
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 190, ptr noundef %i.au)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #26
  %i.av = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !79
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ba = load ptr, ptr %4, align 8, !tbaa !78    ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #26, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
end_hunk_0
