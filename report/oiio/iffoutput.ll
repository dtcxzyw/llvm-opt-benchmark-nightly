inline.NumInlined: 3235
inline.NumDeleted: 854
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %.not.i.i759 = icmp eq i8 %i.ajw, 0
  %i.ajx = load i8, ptr %i.ag, align 1
  %i.ajy = lshr i8 %i.ajx, 3
  %narrow.i.i760 = select i1 %.not.i.i759, i8 0, i8 %i.ajy
  %i.ajz = zext nneg i8 %narrow.i.i760 to i64
  %i.aka = add nuw nsw i64 %i.ajv, %i.ajz
  %i.akb = mul i32 %i.ajp, %storemerge4892058
  %i.akc = zext i32 %i.akb to i64
  %i.akd = mul nuw nsw i64 %i.aka, %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %i.akd
  br i1 %.not4922050, label %._crit_edge2055, label %.lr.ph2054

.lr.ph2054:                                       ; preds = %bb.eb, %._crit_edge2048
  %.74282052 = phi ptr [ %.8429.lcssa, %._crit_edge2048 ], [ %.64272059, %bb.eb ] ; 2 uses
  %storemerge4912051 = phi i32 [ %i.amc, %._crit_edge2048 ], [ %i.ey, %bb.eb ] ; 3 uses
  %i.akf = load i8, ptr %i.w, align 8, !tbaa !76
  %i.akg = lshr i8 %i.akf, 3
  %i.akh = zext nneg i8 %i.akg to i64
  %i.aki = load i8, ptr %i.aa, align 1, !tbaa !77 ; 2 uses
  %i.akj = zext i8 %i.aki to i64                  ; 2 uses
  %i.akk = mul nuw nsw i64 %i.akh, %i.akj
  %i.akl = load i8, ptr %i.ae, align 8, !tbaa !78
  %.not.i.i761 = icmp eq i8 %i.akl, 0
  %i.akm = load i8, ptr %i.ag, align 1
  %i.akn = lshr i8 %i.akm, 3
  %narrow.i.i762 = select i1 %.not.i.i761, i8 0, i8 %i.akn
  %i.ako = zext nneg i8 %narrow.i.i762 to i64
  %i.akp = add nuw nsw i64 %i.akk, %i.ako
  %i.akq = zext i32 %storemerge4912051 to i64
  %i.akr = mul nuw nsw i64 %i.akp, %i.akq
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ake, i64 %i.akr
  %i.akt = icmp eq i8 %i.aki, 0
  br i1 %i.akt, label %._crit_edge2048, label %.lr.ph2047

.lr.ph2047:                                       ; preds = %.lr.ph2054, %bb.em
  %indvars.iv2402 = phi i64 [ %indvars.iv.next2403, %bb.em ], [ %i.akj, %.lr.ph2054 ]
  %.84292044 = phi ptr [ %i.aku, %bb.em ], [ %.74282052, %.lr.ph2054 ] ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.84292044, i64 2 ; 3 uses
  %.not496 = icmp ugt ptr %i.aku, %.sroa.30.71571
  br i1 %.not496, label %bb.ec, label %bb.em

bb.ec:                                            ; preds = %.lr.ph2047
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !192
  store i32 %storemerge4912051, ptr %16, align 16, !tbaa !16, !alias.scope !195, !noalias !192
  store i32 %storemerge4892058, ptr %i.bs, align 16, !tbaa !16, !alias.scope !195, !noalias !192
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !198
  store i64 0, ptr %i.bv, align 8, !noalias !198
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bu, align 8, !tbaa !130, !noalias !198
  store ptr %i.bw, ptr %7, align 8, !tbaa !132, !noalias !198
  store i64 500, ptr %i.bt, align 8, !tbaa !133, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !198
  store ptr @.str.29, ptr %2, align 8, !tbaa !134, !noalias !198
  store i64 64, ptr %.sroa.2.0..sroa_idx.i16.i1027, align 8, !tbaa !135, !noalias !198
  store i32 0, ptr %i.bx, align 8, !tbaa !136, !noalias !198
  store ptr %7, ptr %i.by, align 8, !tbaa !139, !noalias !198
  store i64 34, ptr %i.bz, align 8, !tbaa !141, !noalias !198
  store ptr %16, ptr %.sroa.2.0..sroa_idx.i17.i1028, align 8, !tbaa !16, !noalias !198
  store ptr null, ptr %i.ca, align 8, !tbaa !143, !noalias !198
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.29, i64 64, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %.noexc1033 unwind label %.loopexit1717

.noexc1033:                                       ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !198
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.akv = load i64, ptr %i.bv, align 8, !tbaa !147, !noalias !204 ; 6 uses
  %i.akw = icmp ult i64 %i.akv, 4611686018427387903
  call void @llvm.assume(i1 %i.akw)
  %i.akx = load ptr, ptr %7, align 8, !tbaa !132, !noalias !204 ; 3 uses
  store ptr %i.cb, ptr %18, align 8, !tbaa !9, !alias.scope !204
  %i.aky = icmp eq ptr %i.akx, null
  %i.akz = icmp ne i64 %i.akv, 0
  %or.cond.i.i.i987 = and i1 %i.akz, %i.aky
  br i1 %or.cond.i.i.i987, label %.noexc.i.i992, label %bb.ed

.noexc.i.i992:                                    ; preds = %.noexc1033
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i993 unwind label %.loopexit.split-lp1718

.noexc.i993:                                      ; preds = %.noexc.i.i992
  unreachable

bb.ed:                                            ; preds = %.noexc1033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !204
  store i64 %i.akv, ptr %i.b, align 8, !tbaa !135, !noalias !204
  %i.ala = icmp samesign ugt i64 %i.akv, 15
  br i1 %i.ala, label %.noexc.i.i.i990, label %._crit_edge.i.i.i.i988

.noexc.i.i.i990:                                  ; preds = %bb.ed
  %i.alb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc7.i991 unwind label %.loopexit1717 ; 2 uses

.noexc7.i991:                                     ; preds = %.noexc.i.i.i990
  store ptr %i.alb, ptr %18, align 8, !tbaa !17, !alias.scope !204
  %i.alc = load i64, ptr %i.b, align 8, !tbaa !135, !noalias !204
  store i64 %i.alc, ptr %i.cb, align 8, !tbaa !16, !alias.scope !204
  br label %._crit_edge.i.i.i.i988

._crit_edge.i.i.i.i988:                           ; preds = %.noexc7.i991, %bb.ed
  %i.ald = phi ptr [ %i.alb, %.noexc7.i991 ], [ %i.cb, %bb.ed ] ; 2 uses
  switch i64 %i.akv, label %bb.ef [
    i64 1, label %bb.ee
    i64 0, label %bb.eg
  ]

bb.ee:                                            ; preds = %._crit_edge.i.i.i.i988
  %i.ale = load i8, ptr %i.akx, align 1, !tbaa !16
  store i8 %i.ale, ptr %i.ald, align 1, !tbaa !16
  br label %bb.eg

bb.ef:                                            ; preds = %._crit_edge.i.i.i.i988
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ald, ptr align 1 %i.akx, i64 %i.akv, i1 false)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %._crit_edge.i.i.i.i988
  %i.alf = load i64, ptr %i.b, align 8, !tbaa !135, !noalias !204 ; 2 uses
  store i64 %i.alf, ptr %i.cc, align 8, !tbaa !13, !alias.scope !204
  %i.alg = load ptr, ptr %18, align 8, !tbaa !17, !alias.scope !204
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.alf
  store i8 0, ptr %i.alh, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !204
  %i.ali = load ptr, ptr %7, align 8, !tbaa !132, !noalias !198 ; 2 uses
  %.not.i.i.i989 = icmp eq ptr %i.ali, %i.bw
  br i1 %.not.i.i.i989, label %.noexc769, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  call void @free(ptr noundef %i.ali) #29
  br label %.noexc769

.loopexit1717:                                    ; preds = %.noexc.i.i.i990, %bb.ec
  %lpad.loopexit1719 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit.split-lp1718:                           ; preds = %.noexc.i.i992
  %lpad.loopexit.split-lp1720 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.ei:                                            ; preds = %.loopexit.split-lp1718, %.loopexit1717
  %lpad.phi1721 = phi { ptr, i32 } [ %lpad.loopexit1719, %.loopexit1717 ], [ %lpad.loopexit.split-lp1720, %.loopexit.split-lp1718 ]
  %i.alj = load ptr, ptr %7, align 8, !tbaa !132, !noalias !198 ; 2 uses
  %.not.i.i8.i985 = icmp eq ptr %i.alj, %i.bw
  br i1 %.not.i.i8.i985, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @free(ptr noundef %i.alj) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !198
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

.noexc769:                                        ; preds = %bb.eh, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29, !noalias !192
  %i.alk = load ptr, ptr %18, align 8, !tbaa !17
  store ptr %i.alk, ptr %17, align 8, !tbaa !21
  %i.all = load i64, ptr %i.cc, align 8, !tbaa !13
  store i64 %i.all, ptr %i.cd, align 8, !tbaa !23
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %17)
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %.noexc769
  %i.alm = load ptr, ptr %18, align 8, !tbaa !17  ; 2 uses
  %i.aln = icmp eq ptr %i.alm, %i.cb
  br i1 %i.aln, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767: ; preds = %bb.ek
  %i.alo = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768

bb.el:                                            ; preds = %.noexc769
  %i.alq = landingpad { ptr, i32 }
          cleanup
  %i.alr = load ptr, ptr %18, align 8, !tbaa !17  ; 2 uses
  %i.als = icmp eq ptr %i.alr, %i.cb
  br i1 %i.als, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764: ; preds = %bb.el
  %i.alt = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.alu = add i64 %i.alt, 1
  call void @_ZdlPvm(ptr noundef %i.alr, i64 noundef %i.alu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i764
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

bb.em:                                            ; preds = %.lr.ph2047
  %indvars.iv.next2403 = add nsw i64 %indvars.iv2402, -1 ; 3 uses
  %i.alv = shl i64 %indvars.iv.next2403, 1
  %i.alw = and i64 %i.alv, 4294967294
  %i.alx = getelementptr inbounds nuw i8, ptr %i.aks, i64 %i.alw
  %i.aly = load i16, ptr %i.alx, align 1
  %i.alz = call noundef i16 @llvm.bswap.i16(i16 %i.aly) ; 2 uses
  %30 = trunc i16 %i.alz to i8
  %31 = getelementptr inbounds nuw i8, ptr %.84292044, i64 1
  store i8 %30, ptr %.84292044, align 1, !tbaa !16
  %32 = lshr i16 %i.alz, 8
  %33 = trunc nuw i16 %32 to i8
  store i8 %33, ptr %31, align 1, !tbaa !16
  %i.ama = and i64 %indvars.iv.next2403, 4294967295
  %i.amb = icmp eq i64 %i.ama, 0
  br i1 %i.amb, label %._crit_edge2048, label %.lr.ph2047

._crit_edge2048:                                  ; preds = %bb.em, %.lr.ph2054
  %.8429.lcssa = phi ptr [ %.74282052, %.lr.ph2054 ], [ %i.aku, %bb.em ] ; 2 uses
  %i.amc = add i32 %storemerge4912051, 1          ; 2 uses
  %.not492 = icmp ugt i32 %i.amc, %i.fa
  br i1 %.not492, label %._crit_edge2055, label %.lr.ph2054, !llvm.loop !205

._crit_edge2055:                                  ; preds = %._crit_edge2048, %bb.eb
  %.7428.lcssa = phi ptr [ %.64272059, %bb.eb ], [ %.8429.lcssa, %._crit_edge2048 ]
  %i.amd = add i32 %storemerge4892058, 1          ; 2 uses
  %.not490 = icmp ugt i32 %i.amd, %i.fc
  br i1 %.not490, label %.thread1488, label %bb.eb, !llvm.loop !206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  br label %bb.ey

.thread1488:                                      ; preds = %._crit_edge2055, %._crit_edge2093, %.thread1559, %.thread1458, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.ea, %bb.bm
  %.sroa.55.13 = phi ptr [ %.sroa.55.2, %bb.bm ], [ %.sroa.55.51465, %.thread1458 ], [ %.sroa.55.8, %bb.ea ], [ %.sroa.55.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.55.121566, %.thread1559 ], [ %.sroa.55.51465, %._crit_edge2093 ], [ %.sroa.55.121566, %._crit_edge2055 ] ; 7 uses
  %.sroa.01375.13 = phi ptr [ %.sroa.01375.2, %bb.bm ], [ %.sroa.01375.51470, %.thread1458 ], [ %.sroa.01375.8, %bb.ea ], [ %.sroa.01375.16, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.sroa.01375.121572, %.thread1559 ], [ %.sroa.01375.51470, %._crit_edge2093 ], [ %.sroa.01375.121572, %._crit_edge2055 ] ; 8 uses
  %.4 = phi i32 [ %.0, %bb.bm ], [ %.11474, %.thread1458 ], [ %.2, %bb.ea ], [ %i.gg, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.31577, %.thread1559 ], [ %.11474, %._crit_edge2093 ], [ %.31577, %._crit_edge2055 ]
  %.8414 = phi i32 [ %.2408, %bb.bm ], [ %.34091475, %.thread1458 ], [ %.6412, %bb.ea ], [ %i.gc, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread ], [ %.74131578, %.thread1559 ], [ %.34091475, %._crit_edge2093 ], [ %.74131578, %._crit_edge2055 ]
  %savedstack = call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ame = call noundef i32 @llvm.bswap.i32(i32 %.4)
  store i32 %i.ame, ptr %i.q, align 16, !tbaa !3
  %i.amf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.q, i64 noundef 4, i64 noundef 1)
          to label %bb.en unwind label %bb.eo

bb.en:                                            ; preds = %.thread1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  br i1 %i.amf, label %bb.ep, label %bb.ey

bb.eo:                                            ; preds = %bb.ev, %bb.et, %bb.er, %bb.ep, %.thread1488, %bb.ex
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

bb.ep:                                            ; preds = %bb.en
  %i.amh = trunc i32 %i.ey to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ami = call noundef i16 @llvm.bswap.i16(i16 %i.amh)
  store i16 %i.ami, ptr %i.p, align 16, !tbaa !94
  %i.amj = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.p, i64 noundef 2, i64 noundef 1)
          to label %bb.eq unwind label %bb.eo

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.amj, label %bb.er, label %bb.ey

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 %i.es, ptr %i.o, align 16, !tbaa !94
  %i.amk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.o, i64 noundef 2, i64 noundef 1)
          to label %bb.es unwind label %bb.eo

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.amk, label %bb.et, label %bb.ey

bb.et:                                            ; preds = %bb.es
  %i.aml = trunc i32 %i.fa to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.amm = call noundef i16 @llvm.bswap.i16(i16 %i.aml)
  store i16 %i.amm, ptr %i.n, align 16, !tbaa !94
  %i.amn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.n, i64 noundef 2, i64 noundef 1)
          to label %bb.eu unwind label %bb.eo

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br i1 %i.amn, label %bb.ev, label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  %i.amo = trunc i32 %i.fc to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.amp = call noundef i16 @llvm.bswap.i16(i16 %i.amo)
  store i16 %i.amp, ptr %i.m, align 16, !tbaa !94
  %i.amq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %i.m, i64 noundef 2, i64 noundef 1)
          to label %bb.ew unwind label %bb.eo

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.amq, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.amr = zext i32 %.8414 to i64
  %i.ams = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %.sroa.01375.13, i64 noundef %i.amr, i64 noundef 1)
          to label %bb.ey unwind label %bb.eo

bb.ey:                                            ; preds = %bb.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617, %bb.eq, %bb.es, %bb.eu, %bb.ew, %bb.en, %_ZNSt6vectorIhSaIhEED2Ev.exit606, %_ZNSt6vectorIhSaIhEED2Ev.exit752
  %.sroa.55.14 = phi ptr [ %.sroa.55.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.55.13, %bb.ew ], [ %.sroa.55.13, %bb.eu ], [ %.sroa.55.13, %bb.es ], [ %.sroa.55.13, %bb.eq ], [ %.sroa.55.13, %bb.en ], [ %.sroa.55.51465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.55.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.55.121566, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.55.13, %bb.ex ]
  %.sroa.01375.14 = phi ptr [ %.sroa.01375.8, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ %.sroa.01375.13, %bb.ew ], [ %.sroa.01375.13, %bb.eu ], [ %.sroa.01375.13, %bb.es ], [ %.sroa.01375.13, %bb.eq ], [ %.sroa.01375.13, %bb.en ], [ %.sroa.01375.51470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ %.sroa.01375.2, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ %.sroa.01375.121572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %.sroa.01375.13, %bb.ex ] ; 3 uses
  %.20379 = phi i1 [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit752 ], [ false, %bb.ew ], [ false, %bb.eu ], [ false, %bb.es ], [ false, %bb.eq ], [ false, %bb.en ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i617 ], [ false, %_ZNSt6vectorIhSaIhEED2Ev.exit606 ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i768 ], [ %i.ams, %bb.ex ]
  %.not.i.i.i785 = icmp eq ptr %.sroa.01375.14, null
  br i1 %.not.i.i.i785, label %_ZNSt6vectorIhSaIhEED2Ev.exit787, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.amt = ptrtoint ptr %.sroa.55.14 to i64
  %i.amu = ptrtoint ptr %.sroa.01375.14 to i64
  %i.amv = sub i64 %i.amt, %i.amu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.14, i64 noundef %i.amv) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit787

_ZNSt6vectorIhSaIhEED2Ev.exit787:                 ; preds = %bb.ey, %bb.ez
  br i1 %.20379, label %bb.fa, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

_ZNSt6vectorIhSaIhEED2Ev.exit608:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986, %.body626.thread, %.body626.thread1521, %_ZNSt6vectorIhSaIhEED2Ev.exit755, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit580, %bb.bl, %bb.eo
  %.sroa.55.15 = phi ptr [ %.sroa.55.111556, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.55.13, %bb.eo ], [ %.sroa.55.3, %bb.bl ], [ %.sroa.55.51465, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.55.16, %bb.r ], [ %.sroa.55.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.55.16, %.body626.thread ], [ %.sroa.55.51465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.55.16, %.body626.thread1521 ], [ %.sroa.55.121566, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.55.121566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ]
  %.sroa.01375.15 = phi ptr [ %.sroa.01375.111557, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %.sroa.01375.13, %bb.eo ], [ %.sroa.01375.3, %bb.bl ], [ %.sroa.01375.51470, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %.sroa.01375.16, %bb.r ], [ %.sroa.01375.3, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %.sroa.01375.16, %.body626.thread ], [ %.sroa.01375.51470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %.sroa.01375.16, %.body626.thread1521 ], [ %.sroa.01375.121572, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %.sroa.01375.121572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 3 uses
  %.pn518 = phi { ptr, i32 } [ %.pn484.pn.pn.pn1558, %_ZNSt6vectorIhSaIhEED2Ev.exit755 ], [ %i.amg, %bb.eo ], [ %.pn507.pn, %bb.bl ], [ %lpad.phi1726, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i962 ], [ %i.hv, %bb.r ], [ %.pn507.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit580 ], [ %i.wg, %.body626.thread ], [ %i.vf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i614 ], [ %i.wi, %.body626.thread1521 ], [ %lpad.phi1721, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i986 ], [ %i.alq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i765 ] ; 2 uses
  %.not.i.i.i788 = icmp eq ptr %.sroa.01375.15, null
  br i1 %.not.i.i.i788, label %.body, label %_ZNSt6vectorIhSaIhEED2Ev.exit608.thread

_ZNSt6vectorIhSaIhEED2Ev.exit608.thread:          ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit608
  %i.amw = ptrtoint ptr %.sroa.55.15 to i64
  %i.amx = ptrtoint ptr %.sroa.01375.15 to i64
  %i.amy = sub i64 %i.amw, %i.amx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01375.15, i64 noundef %i.amy) #30
  br label %.body

bb.fa:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit787, %bb.e
  %i.amz = load i8, ptr %i.ae, align 8, !tbaa !74
  %.not522 = icmp eq i8 %i.amz, 0
  br i1 %.not522, label %bb.hh, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !207
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull align 1 dereferenceable(5) @.str.30, i64 4, i64 0, ptr nonnull %14)
          to label %.noexc796 unwind label %bb.i

.noexc796:                                        ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !207
  %i.ana = load ptr, ptr %15, align 8, !tbaa !17
  %i.anb = load i64, ptr %i.dc, align 8, !tbaa !13
  %i.anc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.ana, i64 noundef %i.anb, i64 noundef 1)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %.noexc796
  %i.and = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.ane = icmp eq ptr %i.and, %i.dd
  br i1 %i.ane, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794: ; preds = %bb.fc
  %i.anf = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.ang = add i64 %i.anf, 1
  call void @_ZdlPvm(ptr noundef %i.and, i64 noundef %i.ang) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795

bb.fd:                                            ; preds = %.noexc796
  %i.anh = landingpad { ptr, i32 }
          cleanup
  %i.ani = load ptr, ptr %15, align 8, !tbaa !17  ; 2 uses
  %i.anj = icmp eq ptr %i.ani, %i.dd
  br i1 %i.anj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791: ; preds = %bb.fd
  %i.ank = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.anl = add i64 %i.ank, 1
  call void @_ZdlPvm(ptr noundef %i.ani, i64 noundef %i.anl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i792: ; preds = %bb.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i791
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795: ; preds = %bb.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i794
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br i1 %i.anc, label %bb.fe, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i795
  %i.anm = mul i32 %i.ff, %i.fe                   ; 5 uses
  %i.ann = zext i32 %i.anm to i64                 ; 3 uses
  %i.ano = load i8, ptr %i.ae, align 8, !tbaa !78
  %.not.i800 = icmp eq i8 %i.ano, 0               ; 2 uses
  %i.anp = load i8, ptr %i.ag, align 1
  %i.anq = lshr i8 %i.anp, 3                      ; 3 uses
  %narrow.i = select i1 %.not.i800, i8 0, i8 %i.anq
  %i.anr = zext nneg i8 %narrow.i to i32
  %i.ans = mul i32 %i.anm, %i.anr                 ; 8 uses
  %i.ant = and i32 %i.ans, 3                      ; 2 uses
  %.not.i801 = icmp eq i32 %i.ant, 0
  %i.anu = sub nuw nsw i32 4, %i.ant
  %i.anv = select i1 %.not.i801, i32 0, i32 %i.anu
  %.0.i802 = add i32 %i.ans, 8
  %i.anw = add i32 %.0.i802, %i.anv               ; 2 uses
  %i.anx = load i32, ptr %i.bc, align 4, !tbaa !70
  %i.any = icmp eq i32 %i.anx, 1
  %i.anz = zext i32 %i.ans to i64                 ; 3 uses
  %.not.i.i.i.i803 = icmp eq i32 %i.ans, 0
  br i1 %.not.i.i.i.i803, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aoa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.anz) #31
          to label %.noexc805 unwind label %bb.fh ; 3 uses
end_hunk_0
