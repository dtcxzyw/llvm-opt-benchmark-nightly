Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/index_read?download=true
inline.NumInlined: 10836
inline.NumDeleted: 4102
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5faiss13read_index_upEPNS_8IOReaderEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #29
  br label %bb.on

bb.ny:                                            ; preds = %bb.oa, %bb.nx, %bb.nw
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.nz:                                            ; preds = %bb.nx, %bb.nv
  %i.ams = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ams, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13read_index_upEPNS_8IOReaderEi, ptr noundef nonnull @.str.2, i32 noundef 1780)
          to label %bb.oa unwind label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  invoke void @__cxa_throw(ptr nonnull %i.ams, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.eiu unwind label %bb.ny

bb.ob:                                            ; preds = %bb.nz
  %i.amt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ams) #29
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.ny
  %.pn4139 = phi { ptr, i32 } [ %i.amr, %bb.ny ], [ %i.amt, %bb.ob ]
  %i.amu = load ptr, ptr %47, align 8, !tbaa !40  ; 2 uses
  %i.amv = icmp eq ptr %i.amu, %i.ame
  br i1 %i.amv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4357: ; preds = %bb.oc
  %i.amw = load i64, ptr %i.ame, align 8, !tbaa !39
  %i.amx = add i64 %i.amw, 1
  call void @_ZdlPvm(ptr noundef %i.amu, i64 noundef %i.amx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4359: ; preds = %bb.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4357
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #29
  br label %bb.on

bb.od:                                            ; preds = %bb.nu
  %i.amy = getelementptr inbounds nuw i8, ptr %i.alt, i64 120
  %i.amz = load i64, ptr %i.amy, align 8, !tbaa !127
  %i.ana = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.anb = load i64, ptr %i.ana, align 8, !tbaa !214
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alt, i64 40
  %i.and = load i64, ptr %i.anc, align 8, !tbaa !660
  %i.ane = invoke noundef i64 @_ZN5faiss15mul_no_overflowEmmPKc(i64 noundef %i.anb, i64 noundef %i.and, ptr noundef nonnull @.str.221)
          to label %bb.oe unwind label %bb.mz

bb.oe:                                            ; preds = %bb.od
  %i.anf = icmp eq i64 %i.amz, %i.ane
  br i1 %i.anf, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EEaSINS0_8IndexLSHES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit, label %bb.of

bb.of:                                            ; preds = %bb.oe
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #29
  %i.ang = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  store ptr %i.ang, ptr %48, align 8, !tbaa !36
  %i.anh = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  store i64 0, ptr %i.anh, align 8, !tbaa !38
  store i8 0, ptr %i.ang, align 8, !tbaa !39
  %i.ani = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.222) #29 ; 2 uses
  %i.anj = icmp sgt i32 %i.ani, 0
  br i1 %i.anj, label %bb.og, label %bb.oj

bb.og:                                            ; preds = %bb.of
  %i.ank = zext nneg i32 %i.ani to i64            ; 2 uses
  %i.anl = add nuw nsw i64 %i.ank, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.anl)
          to label %bb.oh unwind label %bb.oi

bb.oh:                                            ; preds = %bb.og
  %i.anm = load ptr, ptr %48, align 8, !tbaa !40
  %i.ann = load i64, ptr %i.anh, align 8, !tbaa !38
  %i.ano = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.anm, i64 noundef %i.ann, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.222) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef %i.ank)
          to label %bb.oj unwind label %bb.oi

bb.oi:                                            ; preds = %bb.ok, %bb.oh, %bb.og
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.oj:                                            ; preds = %bb.oh, %bb.of
  %i.anq = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.anq, ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13read_index_upEPNS_8IOReaderEi, ptr noundef nonnull @.str.2, i32 noundef 1786)
          to label %bb.ok unwind label %bb.ol

bb.ok:                                            ; preds = %bb.oj
  invoke void @__cxa_throw(ptr nonnull %i.anq, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.eiu unwind label %bb.oi

bb.ol:                                            ; preds = %bb.oj
  %i.anr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anq) #29
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.oi
  %.pn4141 = phi { ptr, i32 } [ %i.anp, %bb.oi ], [ %i.anr, %bb.ol ]
  %i.ans = load ptr, ptr %48, align 8, !tbaa !40  ; 2 uses
  %i.ant = icmp eq ptr %i.ans, %i.ang
  br i1 %i.ant, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4362, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4360: ; preds = %bb.om
  %i.anu = load i64, ptr %i.ang, align 8, !tbaa !39
  %i.anv = add i64 %i.anu, 1
  call void @_ZdlPvm(ptr noundef %i.ans, i64 noundef %i.anv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4362

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4362: ; preds = %bb.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4360
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #29
  br label %bb.on

_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EEaSINS0_8IndexLSHES2_IS6_EEENSt9enable_ifIXsr6__and_ISt6__and_IJSt14is_convertibleINS_IT_T0_E7pointerEPS1_ESt6__not_ISt8is_arrayISB_EEEESt13is_assignableIRS3_OSC_EEE5valueERS4_E4typeEOSD_.exit: ; preds = %bb.oe
  %i.anw = load ptr, ptr %33, align 8, !tbaa !221
  store ptr %i.anw, ptr %0, align 8, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %_ZNSt10unique_ptrIN5faiss30IndexAdditiveQuantizerFastScanESt14default_deleteIS1_EED2Ev.exit

bb.on:                                            ; preds = %bb.me, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4359, %_ZNSt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS1_EED2Ev.exit4356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4349, %bb.mz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4346
  %.pn4141.pn = phi { ptr, i32 } [ %.pn4141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4362 ], [ %i.akb, %bb.mz ], [ %.pn4139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4359 ], [ %.pn4136.pn, %_ZNSt10unique_ptrIN5faiss15VectorTransformESt14default_deleteIS1_EED2Ev.exit4356 ], [ %.pn4131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4349 ], [ %.pn4129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4346 ], [ %.pn4126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4343 ], [ %i.aie, %bb.me ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  br label %bb.oo

bb.oo:                                            ; preds = %bb.iv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4316, %bb.on, %bb.md, %bb.kv, %bb.ka, %bb.iu
  %.pn4141.pn.pn = phi { ptr, i32 } [ %.pn4141.pn, %bb.on ], [ %.pn4122.pn.pn, %bb.md ], [ %.pn4112.pn, %bb.kv ], [ %.pn4106.pn, %bb.ka ], [ %i.zn, %bb.iu ], [ %.pn4100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4316 ], [ %i.zo, %bb.iv ] ; 2 uses
  %i.anx = load ptr, ptr %33, align 8, !tbaa !221 ; 3 uses
  %.not.i4366 = icmp eq ptr %i.anx, null
  br i1 %.not.i4366, label %_ZNSt10unique_ptrIN5faiss8IndexLSHESt14default_deleteIS1_EED2Ev.exit4368, label %_ZNKSt14default_deleteIN5faiss8IndexLSHEEclEPS1_.exit.i4367

_ZNKSt14default_deleteIN5faiss8IndexLSHEEclEPS1_.exit.i4367: ; preds = %bb.oo
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !32
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8
  call void %i.aoa(ptr noundef nonnull align 8 dereferenceable(240) %i.anx) #29, !inline_history !596
  br label %_ZNSt10unique_ptrIN5faiss8IndexLSHESt14default_deleteIS1_EED2Ev.exit4368

_ZNSt10unique_ptrIN5faiss8IndexLSHESt14default_deleteIS1_EED2Ev.exit4368: ; preds = %_ZNKSt14default_deleteIN5faiss8IndexLSHEEclEPS1_.exit.i4367, %bb.oo, %bb.it
  %.pn4141.pn.pn.pn = phi { ptr, i32 } [ %i.zm, %bb.it ], [ %.pn4141.pn.pn, %bb.oo ], [ %.pn4141.pn.pn, %_ZNKSt14default_deleteIN5faiss8IndexLSHEEclEPS1_.exit.i4367 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  br label %_ZNSt10unique_ptrIN5faiss9IndexFlatESt14default_deleteIS1_EED2Ev.exit4313

bb.op:                                            ; preds = %bb.il
  %i.aob = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aoc = invoke noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.223)
          to label %bb.oq unwind label %bb.n

bb.oq:                                            ; preds = %bb.op
  %i.aod = icmp eq i32 %i.aob, %i.aoc
  br i1 %i.aod, label %bb.ov, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.aoe = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aof = invoke noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.224)
          to label %bb.os unwind label %bb.n

bb.os:                                            ; preds = %bb.or
  %i.aog = icmp eq i32 %i.aoe, %i.aof
  br i1 %i.aog, label %bb.ov, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.aoh = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aoi = invoke noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.225)
          to label %bb.ou unwind label %bb.n

bb.ou:                                            ; preds = %bb.ot
  %i.aoj = icmp eq i32 %i.aoh, %i.aoi
  br i1 %i.aoj, label %bb.ov, label %bb.ru

bb.ov:                                            ; preds = %bb.ou, %bb.os, %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #29
  invoke void @_ZSt11make_uniqueIN5faiss7IndexPQEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.287") align 8 %49)
          to label %bb.ow unwind label %bb.pd

bb.ow:                                            ; preds = %bb.ov
  %i.aok = load ptr, ptr %49, align 8, !tbaa !223
  invoke fastcc void @_ZN5faissL17read_index_headerERNS_5IndexEPNS_8IOReaderE(ptr noundef nonnull align 8 dereferenceable(36) %i.aok, ptr noundef nonnull %1)
          to label %bb.ox unwind label %bb.pe

bb.ox:                                            ; preds = %bb.ow
  %i.aol = load ptr, ptr %49, align 8, !tbaa !223
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 128
  invoke void @_ZN5faiss21read_ProductQuantizerEPNS_16ProductQuantizerEPNS_8IOReaderE(ptr noundef nonnull %i.aom, ptr noundef nonnull %1)
          to label %bb.oy unwind label %bb.pe

bb.oy:                                            ; preds = %bb.ox
  %i.aon = load ptr, ptr %49, align 8, !tbaa !223 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 144
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !671
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aon, i64 40
  store i64 %i.aop, ptr %i.aoq, align 8, !tbaa !660
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aon, i64 48
  invoke void @_ZN5faiss11read_vectorINS_16MaybeOwnedVectorIhEEEEvRT_PNS_8IOReaderE(ptr noundef nonnull align 8 dereferenceable(80) %i.aor, ptr noundef nonnull %1)
          to label %bb.oz unwind label %bb.pe

bb.oz:                                            ; preds = %bb.oy
  %i.aos = load ptr, ptr %49, align 8, !tbaa !223 ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 40
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !660 ; 2 uses
  %.not4080 = icmp ne i64 %i.aou, 0
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aos, i64 16
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !214 ; 2 uses
  %365 = icmp eq i64 %i.aow, 0
  %or.cond7307 = select i1 %.not4080, i1 true, i1 %365
  br i1 %or.cond7307, label %._crit_edge6020, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #29
  %i.aox = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 4 uses
  store ptr %i.aox, ptr %50, align 8, !tbaa !36
  %i.aoy = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  store i64 0, ptr %i.aoy, align 8, !tbaa !38
  store i8 0, ptr %i.aox, align 8, !tbaa !39
  %i.aoz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.227) #29 ; 2 uses
  %i.apa = icmp sgt i32 %i.aoz, 0
  br i1 %i.apa, label %bb.pb, label %bb.pg

bb.pb:                                            ; preds = %bb.pa
  %i.apb = zext nneg i32 %i.aoz to i64            ; 2 uses
  %i.apc = add nuw nsw i64 %i.apb, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef %i.apc)
          to label %bb.pc unwind label %bb.pf

bb.pc:                                            ; preds = %bb.pb
  %i.apd = load ptr, ptr %50, align 8, !tbaa !40
  %i.ape = load i64, ptr %i.aoy, align 8, !tbaa !38
  %i.apf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.apd, i64 noundef %i.ape, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.227) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %50, i64 noundef %i.apb)
          to label %bb.pg unwind label %bb.pf

bb.pd:                                            ; preds = %bb.ov
  %i.apg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss7IndexPQESt14default_deleteIS1_EED2Ev.exit4392

bb.pe:                                            ; preds = %bb.rq, %bb.ro, %bb.pv, %bb.pt, %._crit_edge6020, %bb.oy, %bb.ox, %bb.ow
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %bb.rt

bb.pf:                                            ; preds = %bb.ph, %bb.pc, %bb.pb
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %bb.pj

bb.pg:                                            ; preds = %bb.pc, %bb.pa
  %i.apj = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.apj, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13read_index_upEPNS_8IOReaderEi, ptr noundef nonnull @.str.2, i32 noundef 1799)
          to label %bb.ph unwind label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  invoke void @__cxa_throw(ptr nonnull %i.apj, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.eiu unwind label %bb.pf

bb.pi:                                            ; preds = %bb.pg
  %i.apk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apj) #29
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.pf
  %.pn4081 = phi { ptr, i32 } [ %i.api, %bb.pf ], [ %i.apk, %bb.pi ]
  %i.apl = load ptr, ptr %50, align 8, !tbaa !40  ; 2 uses
  %i.apm = icmp eq ptr %i.apl, %i.aox
  br i1 %i.apm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4369: ; preds = %bb.pj
  %i.apn = load i64, ptr %i.aox, align 8, !tbaa !39
  %i.apo = add i64 %i.apn, 1
  call void @_ZdlPvm(ptr noundef %i.apl, i64 noundef %i.apo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4371: ; preds = %bb.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4369
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #29
  br label %bb.rt

._crit_edge6020:                                  ; preds = %bb.oz
  %i.app = getelementptr inbounds nuw i8, ptr %i.aos, i64 120
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !127
  %i.apr = invoke noundef i64 @_ZN5faiss15mul_no_overflowEmmPKc(i64 noundef %i.aow, i64 noundef %i.aou, ptr noundef nonnull @.str.228)
          to label %bb.pk unwind label %bb.pe

bb.pk:                                            ; preds = %._crit_edge6020
  %i.aps = icmp eq i64 %i.apq, %i.apr
  br i1 %i.aps, label %bb.pt, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #29
  %i.apt = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 4 uses
  store ptr %i.apt, ptr %51, align 8, !tbaa !36
  %i.apu = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  store i64 0, ptr %i.apu, align 8, !tbaa !38
  store i8 0, ptr %i.apt, align 8, !tbaa !39
  %i.apv = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.229) #29 ; 2 uses
  %i.apw = icmp sgt i32 %i.apv, 0
  br i1 %i.apw, label %bb.pm, label %bb.pp

bb.pm:                                            ; preds = %bb.pl
  %i.apx = zext nneg i32 %i.apv to i64            ; 2 uses
  %i.apy = add nuw nsw i64 %i.apx, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %51, i64 noundef %i.apy)
          to label %bb.pn unwind label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.apz = load ptr, ptr %51, align 8, !tbaa !40
  %i.aqa = load i64, ptr %i.apu, align 8, !tbaa !38
  %i.aqb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.apz, i64 noundef %i.aqa, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.229) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %51, i64 noundef %i.apx)
          to label %bb.pp unwind label %bb.po

bb.po:                                            ; preds = %bb.pq, %bb.pn, %bb.pm
  %i.aqc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

bb.pp:                                            ; preds = %bb.pn, %bb.pl
  %i.aqd = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aqd, ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13read_index_upEPNS_8IOReaderEi, ptr noundef nonnull @.str.2, i32 noundef 1805)
          to label %bb.pq unwind label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  invoke void @__cxa_throw(ptr nonnull %i.aqd, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.eiu unwind label %bb.po

bb.pr:                                            ; preds = %bb.pp
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aqd) #29
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.po
  %.pn4083 = phi { ptr, i32 } [ %i.aqc, %bb.po ], [ %i.aqe, %bb.pr ]
  %i.aqf = load ptr, ptr %51, align 8, !tbaa !40  ; 2 uses
  %i.aqg = icmp eq ptr %i.aqf, %i.apt
  br i1 %i.aqg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4372: ; preds = %bb.ps
  %i.aqh = load i64, ptr %i.apt, align 8, !tbaa !39
  %i.aqi = add i64 %i.aqh, 1
  call void @_ZdlPvm(ptr noundef %i.aqf, i64 noundef %i.aqi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4374: ; preds = %bb.ps, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4372
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #29
  br label %bb.rt

bb.pt:                                            ; preds = %bb.pk
  %i.aqj = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aqk = invoke noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.224)
          to label %bb.pu unwind label %bb.pe

bb.pu:                                            ; preds = %bb.pt
  %i.aql = icmp eq i32 %i.aqj, %i.aqk
  br i1 %i.aql, label %bb.px, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.aqm = load i32, ptr %i.a, align 4, !tbaa !41
  %i.aqn = invoke noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.225)
          to label %bb.pw unwind label %bb.pe

bb.pw:                                            ; preds = %bb.pv
  %i.aqo = icmp eq i32 %i.aqm, %i.aqn
  br i1 %i.aqo, label %bb.px, label %bb.ro

bb.px:                                            ; preds = %bb.pw, %bb.pu
  %i.aqp = load ptr, ptr %49, align 8, !tbaa !223
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 456
  %i.aqr = load ptr, ptr %1, align 8, !tbaa !32
  %i.aqs = load ptr, ptr %i.aqr, align 8
  %i.aqt = invoke noundef i64 %i.aqs(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.aqq, i64 noundef 4, i64 noundef 1)
          to label %bb.py unwind label %bb.qc     ; 3 uses

bb.py:                                            ; preds = %bb.px
  %i.aqu = icmp eq i64 %i.aqt, 1
  br i1 %i.aqu, label %bb.qi, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #29
  %i.aqv = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  store ptr %i.aqv, ptr %52, align 8, !tbaa !36
  %i.aqw = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  store i64 0, ptr %i.aqw, align 8, !tbaa !38
  store i8 0, ptr %i.aqv, align 8, !tbaa !39
  %i.aqx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !40
  %i.aqz = tail call ptr @__errno_location() #30  ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !41
  %i.arb = call ptr @strerror(i32 noundef %i.ara) #29
  %i.arc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.aqy, i64 noundef %i.aqt, i64 noundef 1, ptr noundef %i.arb) #29 ; 2 uses
  %i.ard = icmp sgt i32 %i.arc, 0
  br i1 %i.ard, label %bb.qa, label %bb.qe

bb.qa:                                            ; preds = %bb.pz
  %i.are = zext nneg i32 %i.arc to i64            ; 2 uses
  %i.arf = add nuw nsw i64 %i.are, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %52, i64 noundef %i.arf)
          to label %bb.qb unwind label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.arg = load ptr, ptr %52, align 8, !tbaa !40
  %i.arh = load i64, ptr %i.aqw, align 8, !tbaa !38
  %i.ari = load ptr, ptr %i.aqx, align 8, !tbaa !40
  %i.arj = load i32, ptr %i.aqz, align 4, !tbaa !41
  %i.ark = call ptr @strerror(i32 noundef %i.arj) #29
  %i.arl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.arg, i64 noundef %i.arh, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.ari, i64 noundef %i.aqt, i64 noundef 1, ptr noundef %i.ark) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %52, i64 noundef %i.are)
          to label %bb.qe unwind label %bb.qd

bb.qc:                                            ; preds = %bb.px
  %i.arm = landingpad { ptr, i32 }
          cleanup
  br label %bb.rt

bb.qd:                                            ; preds = %bb.qf, %bb.qb, %bb.qa
  %i.arn = landingpad { ptr, i32 }
          cleanup
  br label %bb.qh

bb.qe:                                            ; preds = %bb.qb, %bb.pz
  %i.aro = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.aro, ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss13read_index_upEPNS_8IOReaderEi, ptr noundef nonnull @.str.2, i32 noundef 1807)
          to label %bb.qf unwind label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  invoke void @__cxa_throw(ptr nonnull %i.aro, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.eiu unwind label %bb.qd

bb.qg:                                            ; preds = %bb.qe
  %i.arp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aro) #29
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qd
  %.pn4085 = phi { ptr, i32 } [ %i.arn, %bb.qd ], [ %i.arp, %bb.qg ]
  %i.arq = load ptr, ptr %52, align 8, !tbaa !40  ; 2 uses
  %i.arr = icmp eq ptr %i.arq, %i.aqv
  br i1 %i.arr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4375: ; preds = %bb.qh
  %i.ars = load i64, ptr %i.aqv, align 8, !tbaa !39
  %i.art = add i64 %i.ars, 1
  call void @_ZdlPvm(ptr noundef %i.arq, i64 noundef %i.art) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4377: ; preds = %bb.qh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4375
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #29
  br label %bb.rt

bb.qi:                                            ; preds = %bb.py
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  %i.aru = load ptr, ptr %1, align 8, !tbaa !32
  %i.arv = load ptr, ptr %i.aru, align 8
  %i.arw = invoke noundef i64 %i.arv(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 1)
          to label %bb.qj unwind label %bb.qn     ; 3 uses

bb.qj:                                            ; preds = %bb.qi
  %i.arx = icmp eq i64 %i.arw, 1
  br i1 %i.arx, label %bb.qt, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #29
  %i.ary = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  store ptr %i.ary, ptr %53, align 8, !tbaa !36
  %i.arz = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  store i64 0, ptr %i.arz, align 8, !tbaa !38
  store i8 0, ptr %i.ary, align 8, !tbaa !39
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !40
  %i.asc = tail call ptr @__errno_location() #30  ; 2 uses
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !41
  %i.ase = call ptr @strerror(i32 noundef %i.asd) #29
  %i.asf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %i.asb, i64 noundef %i.arw, i64 noundef 1, ptr noundef %i.ase) #29 ; 2 uses
  %i.asg = icmp sgt i32 %i.asf, 0
  br i1 %i.asg, label %bb.ql, label %bb.qp

bb.ql:                                            ; preds = %bb.qk
  %i.ash = zext nneg i32 %i.asf to i64            ; 2 uses
  %i.asi = add nuw nsw i64 %i.ash, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %53, i64 noundef %i.asi)
end_hunk_0
begin_hunk_1_@"_ZZN5faiss13read_index_upEPNS_8IOReaderEiENK3$_0clEm":bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %0
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.j
  br i1 %i.q, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !38
  store i8 0, ptr %i.r, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %0
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !114
  %i.y = load ptr, ptr %.8.val, align 8, !tbaa !268
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !181
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.563, ptr noundef nonnull @.str.564, i64 noundef %0, i64 noundef %i.p, i64 noundef %i.x, i64 noundef %i.aa, i64 noundef %i.j) #29 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ae)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %1, align 8, !tbaa !40
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !38
  %i.ah = load ptr, ptr %.0.val, align 8, !tbaa !270 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !117
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.aj, i64 %0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load i64, ptr %i.al, align 8, !tbaa !127
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.ao, i64 %0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !114
  %i.as = load ptr, ptr %.8.val, align 8, !tbaa !268
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 168
  %i.au = load i64, ptr %i.at, align 8, !tbaa !181
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.563, ptr noundef nonnull @.str.564, i64 noundef %0, i64 noundef %i.am, i64 noundef %i.ar, i64 noundef %i.au, i64 noundef %i.j) #29 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ad)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.ax = call ptr @__cxa_allocate_exception(i64 40) #29 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN5faiss13read_index_upEPNS_8IOReaderEiENK3$_0clEm", ptr noundef nonnull @.str.2, i32 noundef 2097)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #31
          to label %bb.k unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ax) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %i.ay, %bb.h ]
  %i.az = load ptr, ptr %1, align 8, !tbaa !40    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.r
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.bb = load i64, ptr %i.r, align 8, !tbaa !39
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %bb.a
  ret void

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !213    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !112 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !217
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss17IndexIVFFlatDedupEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.428") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #33 ; 11 uses
  invoke void @_ZN5faiss12IndexIVFFlatC2Ev(ptr noundef nonnull align 8 dereferenceable(336) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTVN5faiss17IndexIVFFlatDedupE, i64 16), ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5faiss17IndexIVFFlatDedupE, i64 368), ptr %i.b, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr %i.d, ptr %i.c, align 8, !tbaa !395
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store i64 1, ptr %i.e, align 8, !tbaa !396
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !199
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !272
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 336) #32
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt18unordered_multimapIllSt4hashIlESt8equal_toIlESaISt4pairIKllEEE6insertIRS4_IllEEENSt9enable_ifIXsr16is_constructibleIS6_OT_EE5valueENSt8__detail14_Node_iteratorIS6_Lb0ELb0EEEE4typeESE_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !203
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load <2 x i64>, ptr %1, align 8, !tbaa !30
  %i.d = load i64, ptr %1, align 8, !tbaa !274    ; 2 uses
  store <2 x i64> %i.c, ptr %i.b, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !397
  %.not.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i.i, label %bb.b, label %.loopexit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.0.0.i.i.i.i, %bb.d ]
  %.sroa.0.0.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i, align 8, !tbaa !203 ; 5 uses
  %i.h = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.h, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp eq i64 %i.d, %i.j
  br i1 %i.k, label %.loopexit.i.i.i, label %bb.c, !llvm.loop !816

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.019.3.i.i.i.i = phi ptr [ null, %bb.a ], [ %.sroa.0.0.i.i.i.i, %bb.c ], [ %.sroa.0.0.i.i.i.i, %bb.d ]
  %i.l = invoke ptr @_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNS4_10_Hash_nodeIS2_Lb0EEEmSI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %.sroa.019.3.i.i.i.i, i64 noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE7emplaceIJRS0_IllEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEDpOT_.exit unwind label %_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit8.i.i.i

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE12_Scoped_nodeD2Ev.exit8.i.i.i: ; preds = %.loopexit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #32
  resume { ptr, i32 } %i.m

_ZNSt10_HashtableIlSt4pairIKllESaIS2_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE7emplaceIJRS0_IllEEEENS4_14_Node_iteratorIS2_Lb0ELb0EEEDpOT_.exit: ; preds = %.loopexit.i.i.i
  ret ptr %i.l
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss20IndexIVFFlatPanoramaEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.443") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #33 ; 3 uses
  invoke void @_ZN5faiss20IndexIVFFlatPanoramaC1Ev(ptr noundef nonnull align 8 dereferenceable(320) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !276
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 320) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss20IndexScalarQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.451") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #33 ; 3 uses
  invoke void @_ZN5faiss20IndexScalarQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(288) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !278
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 288) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss12IndexLatticeEJRiS2_S2_S2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.459") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #33 ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !41
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !41
  %i.e = load i32, ptr %3, align 4, !tbaa !41
  %i.f = load i32, ptr %4, align 4, !tbaa !41
  invoke void @_ZN5faiss12IndexLatticeC1Eliii(ptr noundef nonnull align 8 dereferenceable(400) %i.a, i64 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !280
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 400) #32
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss23IndexIVFScalarQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.477") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #33 ; 3 uses
  invoke void @_ZN5faiss23IndexIVFScalarQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(440) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !282
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 440) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss28IndexIVFLocalSearchQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.493") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #33 ; 3 uses
  invoke void @_ZN5faiss28IndexIVFLocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(800) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !284
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 800) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss25IndexIVFResidualQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.501") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #33 ; 3 uses
  invoke void @_ZN5faiss25IndexIVFResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(800) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !286
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 800) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss35IndexIVFProductLocalSearchQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.509") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(744) ptr @_Znwm(i64 noundef 744) #33 ; 3 uses
  invoke void @_ZN5faiss35IndexIVFProductLocalSearchQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(744) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !288
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 744) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss32IndexIVFProductResidualQuantizerEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.517") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(744) ptr @_Znwm(i64 noundef 744) #33 ; 3 uses
  invoke void @_ZN5faiss32IndexIVFProductResidualQuantizerC1Ev(ptr noundef nonnull align 8 dereferenceable(744) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !290
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 744) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5faiss20IndexIVFSpectralHashEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.525") align 8 %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #33 ; 3 uses
  invoke void @_ZN5faiss20IndexIVFSpectralHashC1Ev(ptr noundef nonnull align 8 dereferenceable(328) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !292
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 328) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5faissL10read_ivfpqEPNS_8IOReaderEji(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.218", align 8   ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = tail call noundef i32 @_ZN5faiss6fourccEPKc(ptr noundef nonnull @.str.338)
end_hunk_1
