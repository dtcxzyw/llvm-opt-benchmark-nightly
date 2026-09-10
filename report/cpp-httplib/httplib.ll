Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpp-httplib/original/httplib?download=true
inline.NumInlined: 21623
inline.NumDeleted: 6597
loop-unroll.NumCompletelyUnrolled: 55
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store ptr %i.r, ptr %.0911.i.i.i.i, align 8, !tbaa !189, !alias.scope !1660, !noalias !1659
  store i64 0, ptr %i.z, align 8, !tbaa !176, !alias.scope !1660, !noalias !1659
  store i8 0, ptr %i.r, align 8, !tbaa !177, !alias.scope !1660, !noalias !1659
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.o
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc41
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %i.ad = load ptr, ptr %i.j, align 16, !tbaa !480
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.n to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ag) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.m, ptr %3, align 16, !tbaa !470
  store ptr %i.m, ptr %i.k, align 8, !tbaa !471
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.h
  store ptr %i.ah, ptr %i.j, align 16, !tbaa !480
  %.pre = load ptr, ptr %1, align 8, !tbaa !486
  %.pre252.a = load ptr, ptr %i.a, align 8, !tbaa !486
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %i.ai = phi ptr [ %.pre252.a, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i ], [ %i.c, %bb.c ] ; 2 uses
  %.not217 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7httplib6detail35serialize_multipart_formdata_finishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.w

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

bb.g:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0163.0218 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7httplib6detail39serialize_multipart_formdata_item_beginINS_14UploadFormDataEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0163.0218, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !471 ; 7 uses
  %i.ap = load ptr, ptr %i.j, align 16, !tbaa !480
  %.not.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !175
  %i.ar = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.al
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.at = load i64, ptr %i.am, align 8, !tbaa !176 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.av, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !189
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !177
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !177
  %.pre253.a = load i64, ptr %i.am, align 8, !tbaa !176
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ax = phi i64 [ %.pre253.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.at, %bb.j ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !176
  store ptr %i.al, ptr %4, align 8, !tbaa !189
  store i64 0, ptr %i.am, align 8, !tbaa !176
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.az, ptr %i.ak, align 8, !tbaa !471
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.k
  %.pre254.a = load ptr, ptr %4, align 8, !tbaa !189 ; 2 uses
  %i.ba = icmp eq ptr %.pre254.a, %i.al
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.bb = load i64, ptr %i.al, align 8, !tbaa !177
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %.pre254.a, i64 noundef %i.bc) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0163.0218, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.g

bb.l:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.m:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !189   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.m
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !177
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.l
  %.pn31 = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

bb.n:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !471 ; 7 uses
  %i.bm = load ptr, ptr %i.j, align 16, !tbaa !480
  %.not.i.i46 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i46, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !175
  %i.bo = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !176 ; 3 uses
  %i.bt = icmp ult i64 %i.bs, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.bp, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.o
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !189
  %i.bv = load i64, ptr %i.bp, align 8, !tbaa !177
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre255.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !176
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  %i.bw = phi i64 [ %.pre255.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ %i.bs, %bb.p ]
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !176
  store ptr %i.bp, ptr %5, align 8, !tbaa !189
  store i64 0, ptr %i.bx, align 8, !tbaa !176
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr %i.bz, ptr %i.bk, align 8, !tbaa !471
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50 unwind label %bb.x

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50: ; preds = %bb.q
  %.pre256.a = load ptr, ptr %5, align 8, !tbaa !189 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %.pre256.a, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !177
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %.pre256.a, i64 noundef %i.cd) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !1657
  %i.cf = load ptr, ptr %1, align 8, !tbaa !1658
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 7
  %i.ck = mul nsw i64 %i.cj, 3
  %i.cl = add nsw i64 %i.ck, 1                    ; 3 uses
  %i.cm = icmp ugt i64 %i.cl, 576460752303423487
  br i1 %i.cm, label %bb.r, label %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.348) #47
          to label %.noexc55 unwind label %bb.y

.noexc55:                                         ; preds = %bb.r
  unreachable

_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.cn = shl nuw nsw i64 %i.cl, 4
  %i.co = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #50
          to label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit unwind label %bb.y ; 5 uses

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i
  %6 = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cl ; 2 uses
  %7 = load ptr, ptr %i.a, align 8, !tbaa !1657
  %8 = load ptr, ptr %1, align 8, !tbaa !1658     ; 2 uses
  %.not227 = icmp eq ptr %7, %8
  br i1 %.not227, label %._crit_edge224, label %.lr.ph223

._crit_edge224:                                   ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit
  %.sroa.0131.0.lcssa = phi ptr [ %i.co, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.0131.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 5 uses
  %.sroa.19.0.lcssa = phi ptr [ %i.co, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.19.5, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 6 uses
  %.sroa.39.0.lcssa = phi ptr [ %6, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.39.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 2 uses
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !261 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !189 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !176 ; 2 uses
  %.not.i.i57 = icmp eq ptr %.sroa.19.0.lcssa, %.sroa.39.0.lcssa
  br i1 %.not.i.i57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge224
  store ptr %i.cr, ptr %.sroa.19.0.lcssa, align 8, !tbaa !310
  %.sroa.6113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.0.lcssa, i64 8
  store i64 %i.ct, ptr %.sroa.6113.0..sroa_idx, align 8, !tbaa !190
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit

bb.t:                                             ; preds = %._crit_edge224
  %i.cu = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.cv = ptrtoint ptr %.sroa.0131.0.lcssa to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775792
  br i1 %i.cx, label %bb.u, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
          to label %.noexc59 unwind label %bb.ax

.noexc59:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.cy = ashr exact i64 %i.cw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 576460752303423487)
  %i.dc = select i1 %i.da, i64 576460752303423487, i64 %i.db ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.dd = shl nuw nsw i64 %i.dc, 4
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #50
          to label %.noexc60 unwind label %bb.ax  ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 3 uses
  store ptr %i.cr, ptr %i.df, align 8, !tbaa !310
  %.sroa.6113.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %i.ct, ptr %.sroa.6113.0..sroa_idx114, align 8, !tbaa !190
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.v, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

bb.v:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %.sroa.0131.0.lcssa, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.v, %.noexc60
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0.lcssa, i64 noundef %i.cw) #46
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dc
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit

bb.w:                                             ; preds = %._crit_edge
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.x:                                             ; preds = %bb.q
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %5, align 8, !tbaa !189   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.x
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !177
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.w
  %.pn = phi { ptr, i32 } [ %i.di, %bb.w ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.dj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i, %bb.r
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

.lr.ph223:                                        ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93
  %i.dq = phi ptr [ %i.fv, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %8, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ]
  %.0222 = phi i64 [ %i.ft, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ 0, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 3 uses
  %.sroa.39.0221 = phi ptr [ %.sroa.39.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %6, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 5 uses
  %.sroa.19.0220 = phi ptr [ %.sroa.19.5, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %i.co, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 4 uses
  %.sroa.0131.0219 = phi ptr [ %.sroa.0131.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %i.co, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 6 uses
  %i.dr = load ptr, ptr %3, align 16, !tbaa !470
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dr, i64 %.0222 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !189 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !176 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.sroa.19.0220, %.sroa.39.0221
  br i1 %.not.i.i64, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph223
  store ptr %i.dt, ptr %.sroa.19.0220, align 8, !tbaa !310
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.0220, i64 8
  store i64 %i.dv, ptr %.sroa.6128.0..sroa_idx, align 8, !tbaa !190
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73

bb.aa:                                            ; preds = %.lr.ph223
  %i.dw = ptrtoint ptr %.sroa.39.0221 to i64
  %i.dx = ptrtoint ptr %.sroa.0131.0219 to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775792
  br i1 %i.dz, label %bb.ab, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
          to label %.noexc71 unwind label %.loopexit.split-lp

.noexc71:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.aa
  %i.ea = ashr exact i64 %i.dy, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 576460752303423487)
  %i.ee = select i1 %i.ec, i64 576460752303423487, i64 %i.ed ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.ef = shl nuw nsw i64 %i.ee, 4
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #50
          to label %.noexc72 unwind label %.loopexit ; 4 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 %i.dy ; 3 uses
  store ptr %i.dt, ptr %i.eh, align 8, !tbaa !310
  %.sroa.6128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i64 %i.dv, ptr %.sroa.6128.0..sroa_idx129, align 8, !tbaa !190
  %i.ei = icmp sgt i64 %i.dy, 0
  br i1 %i.ei, label %bb.ac, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70

bb.ac:                                            ; preds = %.noexc72
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %.sroa.0131.0219, i64 %i.dy, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70: ; preds = %bb.ac, %.noexc72
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.0219, i64 noundef %i.dy) #46
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.ee
  %.pre259 = load ptr, ptr %1, align 8, !tbaa !1658
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70, %bb.z
  %i.ek = phi ptr [ %.pre259, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %i.dq, %bb.z ]
  %.sroa.0131.5 = phi ptr [ %i.eg, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.0131.0219, %bb.z ] ; 6 uses
  %.pn173.a = phi ptr [ %i.eh, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.19.0220, %bb.z ] ; 3 uses
  %.sroa.39.5 = phi ptr [ %i.ej, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.39.0221, %bb.z ] ; 5 uses
  %.sroa.19.3 = getelementptr inbounds nuw i8, ptr %.pn173.a, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw [128 x i8], ptr %i.ek, i64 %.0222 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !189 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !176 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.sroa.19.3, %.sroa.39.5
  br i1 %.not.i.i74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73
  store ptr %i.en, ptr %.sroa.19.3, align 8, !tbaa !310
  %.sroa.6123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn173.a, i64 24
  store i64 %i.ep, ptr %.sroa.6123.0..sroa_idx, align 8, !tbaa !190
  %i.eq = getelementptr inbounds nuw i8, ptr %.pn173.a, i64 32
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83

bb.ae:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73
  %i.er = ptrtoint ptr %.sroa.39.5 to i64
  %i.es = ptrtoint ptr %.sroa.0131.5 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 6 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775792
  br i1 %i.eu, label %bb.af, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
          to label %.noexc81 unwind label %.loopexit.split-lp176

.noexc81:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.ae
  %i.ev = ashr exact i64 %i.et, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i76 = call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i.i76, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = call i64 @llvm.umin.i64(i64 %i.ew, i64 576460752303423487)
  %i.ez = select i1 %i.ex, i64 576460752303423487, i64 %i.ey ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.ez, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.fa = shl nuw nsw i64 %i.ez, 4
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #50
          to label %.noexc82 unwind label %.loopexit175 ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 3 uses
  store ptr %i.en, ptr %i.fc, align 8, !tbaa !310
  %.sroa.6123.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 %i.ep, ptr %.sroa.6123.0..sroa_idx124, align 8, !tbaa !190
  %i.fd = icmp sgt i64 %i.et, 0
  br i1 %i.fd, label %bb.ag, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78

bb.ag:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %.sroa.0131.5, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78: ; preds = %bb.ag, %.noexc82
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.5, i64 noundef %i.et) #46
  %9 = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ez
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78, %bb.ad
  %.sroa.0131.6 = phi ptr [ %i.fb, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78 ], [ %.sroa.0131.5, %bb.ad ] ; 6 uses
  %.sroa.19.4 = phi ptr [ %i.fe, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78 ], [ %i.eq, %bb.ad ] ; 7 uses
  %.sroa.39.6 = phi ptr [ %9, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78 ], [ %.sroa.39.5, %bb.ad ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.19.4, %.sroa.39.6
  br i1 %.not.i.i84, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83
  store ptr @"__const._ZZN7httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEE3$_0NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE_clESZ_.crlf", ptr %.sroa.19.4, align 8, !tbaa !310
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19.4, i64 8
  store i64 2, ptr %.sroa.6118.0..sroa_idx, align 8, !tbaa !190
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93

bb.ai:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83
  %i.ff = ptrtoint ptr %.sroa.19.4 to i64
  %i.fg = ptrtoint ptr %.sroa.0131.6 to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 6 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775792
  br i1 %i.fi, label %bb.aj, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.349) #47
          to label %.noexc91 unwind label %.loopexit.split-lp181

.noexc91:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.ai
  %i.fj = ashr exact i64 %i.fh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 576460752303423487)
  %i.fn = select i1 %i.fl, i64 576460752303423487, i64 %i.fm ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.fo = shl nuw nsw i64 %i.fn, 4
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #50
          to label %.noexc92 unwind label %.loopexit180 ; 4 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fh ; 3 uses
  store ptr @"__const._ZZN7httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEE3$_0NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE_clESZ_.crlf", ptr %i.fq, align 8, !tbaa !310
  %.sroa.6118.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 2, ptr %.sroa.6118.0..sroa_idx119, align 8, !tbaa !190
  %i.fr = icmp sgt i64 %i.fh, 0
  br i1 %i.fr, label %bb.ak, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90

bb.ak:                                            ; preds = %.noexc92
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr align 8 %.sroa.0131.6, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90: ; preds = %bb.ak, %.noexc92
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.6, i64 noundef %i.fh) #46
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fp, i64 %i.fn
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90, %bb.ah
  %.sroa.0131.7 = phi ptr [ %i.fp, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.0131.6, %bb.ah ] ; 2 uses
  %.pn174 = phi ptr [ %i.fq, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.19.4, %bb.ah ]
  %.sroa.39.7 = phi ptr [ %i.fs, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.39.6, %bb.ah ] ; 2 uses
  %.sroa.19.5 = getelementptr inbounds nuw i8, ptr %.pn174, i64 16 ; 2 uses
  %i.ft = add nuw i64 %.0222, 1                   ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !1657
  %i.fv = load ptr, ptr %1, align 8, !tbaa !1658  ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 7
  %i.ga = icmp ult i64 %i.ft, %i.fz
  br i1 %i.ga, label %.lr.ph223, label %._crit_edge224, !llvm.loop !1653

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit175:                                     ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75
  %lpad.loopexit177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp176:                            ; preds = %bb.af
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit180:                                     ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  %lpad.loopexit182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp181:                            ; preds = %bb.aj
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.s
  %.sroa.0131.4 = phi ptr [ %i.de, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0131.0.lcssa, %bb.s ] ; 3 uses
  %.pn172 = phi ptr [ %i.df, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.0.lcssa, %bb.s ]
  %.sroa.39.4 = phi ptr [ %i.dh, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.39.0.lcssa, %bb.s ] ; 3 uses
  %.sroa.19.2 = getelementptr inbounds nuw i8, ptr %.pn172, i64 16
  %i.gb = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #50
          to label %.noexc94 unwind label %bb.ay  ; 21 uses

.noexc94:                                         ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 8 uses
  store i32 1, ptr %i.gc, align 8, !tbaa !318, !noalias !1662
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 12 ; 2 uses
  store i32 1, ptr %i.gd, align 4, !tbaa !319, !noalias !1662
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gb, align 8, !tbaa !194, !noalias !1662
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ge, i8 0, i64 72, i1 false), !noalias !1662
  %i.gf = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #50
          to label %bb.al unwind label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, !noalias !1662 ; 3 uses

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc94
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(72) %i.ge) #23, !noalias !1662
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef 88) #46, !noalias !1662
  br label %bb.az

bb.al:                                            ; preds = %.noexc94
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  store ptr %i.gf, ptr %i.gh, align 8, !tbaa !488, !noalias !1662
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16384 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 80
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !489, !noalias !1662
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.gf, i8 0, i64 16384, i1 false), !noalias !1662
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !490, !noalias !1662
  %i.gl = load ptr, ptr %i.ge, align 8, !tbaa !470 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !471 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 32 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !480
  %i.gq = load <2 x ptr>, ptr %3, align 16, !tbaa !261
  store <2 x ptr> %i.gq, ptr %i.ge, align 8, !tbaa !261
  %i.gr = load ptr, ptr %i.j, align 16, !tbaa !480
  store ptr %i.gr, ptr %i.go, align 8, !tbaa !480
  %.not4.i.i.i.i.i = icmp eq ptr %i.gl, %i.gn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.al, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.gl, %bb.al ] ; 3 uses
  %i.gs = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !189 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !177
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gx, %i.gn
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.al
  %.not.i.i1.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.gy = ptrtoint ptr %i.gp to i64
  %i.gz = ptrtoint ptr %i.gl to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.ha) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.am
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 40 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !493 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.he = getelementptr inbounds nuw i8, ptr %i.gb, i64 56 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !494
  store ptr %.sroa.0131.4, ptr %i.hb, align 8, !tbaa !493
  store ptr %.sroa.19.2, ptr %i.hd, align 8, !tbaa !495
  store ptr %.sroa.39.4, ptr %i.he, align 8, !tbaa !494
  %.not.i.i.i.i.i95 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i.i95, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %i.hc to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hi) #46
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit: ; preds = %bb.an, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.hj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i.i96 = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i.i96, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit
  %i.hk = load i32, ptr %i.gc, align 8, !tbaa !266
  %i.hl = add nsw i32 %i.hk, 1
  store i32 %i.hl, ptr %i.gc, align 8, !tbaa !266
  br label %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit

bb.ap:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit
  %i.hm = atomicrmw volatile add ptr %i.gc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit

_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit: ; preds = %bb.ao, %bb.ap
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.hn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #50
          to label %bb.aq unwind label %.body98   ; 3 uses

bb.aq:                                            ; preds = %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ge, ptr %i.hn, align 8, !tbaa !498
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.gb, ptr %i.hq, align 8, !tbaa !316
  store ptr %i.hn, ptr %0, align 8, !tbaa !183
  store ptr @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOmSO_S2_", ptr %i.hp, align 8, !tbaa !499
  store ptr @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.ho, align 8, !tbaa !256
  %i.hr = load atomic i64, ptr %i.gc acquire, align 8 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 4294967297
  %i.ht = trunc i64 %i.hr to i32                  ; 2 uses
  br i1 %i.hs, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.gc, align 8, !tbaa !318
  store i32 0, ptr %i.gd, align 4, !tbaa !319
  %i.hu = load ptr, ptr %i.gb, align 8, !tbaa !194
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23, !inline_history !39
  %i.hx = load ptr, ptr %i.gb, align 8, !tbaa !194
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23, !inline_history !39
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i103 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i103, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ib = add nsw i32 %i.ht, -1
  store i32 %i.ib, ptr %i.gc, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.ic = atomicrmw volatile add ptr %i.gc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i = phi i32 [ %i.ht, %bb.at ], [ %i.ic, %bb.au ]
  %i.id = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.id, label %bb.av, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit, !prof !195

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ar
  %i.ie = load ptr, ptr %3, align 16, !tbaa !470  ; 3 uses
  %i.if = load ptr, ptr %i.bk, align 8, !tbaa !471 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ie, %i.if
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.il, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ie, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit ] ; 3 uses
  %i.ig = load ptr, ptr %.05.i.i.i, align 8, !tbaa !189 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i105: ; preds = %.lr.ph.i.i.i
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !177
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i105
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.il, %i.if
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i107 = load ptr, ptr %3, align 16, !tbaa !470
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit
  %i.im = phi ptr [ %.pr.i107, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ie, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.in = load ptr, ptr %i.j, align 16, !tbaa !480
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.im to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.iq) #46
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.ax:                                            ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.u
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.body98:                                          ; preds = %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit
  %i.it = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev"(ptr nonnull %i.gb) #23
  call fastcc void @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.gb) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

bb.az:                                            ; preds = %bb.ax, %bb.ay, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, %.loopexit.split-lp, %.loopexit, %.loopexit.split-lp176, %.loopexit175, %.loopexit.split-lp181, %.loopexit180
  %.sroa.0131.2 = phi ptr [ %.sroa.0131.4, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %.sroa.0131.4, %bb.ay ], [ %.sroa.0131.0219, %.loopexit.split-lp ], [ %.sroa.0131.5, %.loopexit.split-lp176 ], [ %.sroa.0131.0.lcssa, %bb.ax ], [ %.sroa.0131.0219, %.loopexit ], [ %.sroa.0131.5, %.loopexit175 ], [ %.sroa.0131.6, %.loopexit180 ], [ %.sroa.0131.6, %.loopexit.split-lp181 ] ; 2 uses
  %.sroa.39.2 = phi ptr [ %.sroa.39.4, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %.sroa.39.4, %bb.ay ], [ %.sroa.39.0221, %.loopexit.split-lp ], [ %.sroa.39.5, %.loopexit.split-lp176 ], [ %.sroa.19.0.lcssa, %bb.ax ], [ %.sroa.39.0221, %.loopexit ], [ %.sroa.39.5, %.loopexit175 ], [ %.sroa.19.4, %.loopexit180 ], [ %.sroa.19.4, %.loopexit.split-lp181 ]
  %.pn28.pn = phi { ptr, i32 } [ %i.gg, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %i.is, %bb.ay ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp176 ], [ %i.ir, %bb.ax ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit177, %.loopexit175 ], [ %lpad.loopexit182, %.loopexit180 ], [ %lpad.loopexit.split-lp183, %.loopexit.split-lp181 ]
  %i.iu = ptrtoint ptr %.sroa.39.2 to i64
  %i.iv = ptrtoint ptr %.sroa.0131.2 to i64
  %i.iw = sub i64 %i.iu, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0131.2, i64 noundef %i.iw) #46
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit109: ; preds = %.body98, %bb.y, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.f
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.an, %bb.f ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn28.pn, %bb.az ], [ %i.dp, %bb.y ], [ %i.it, %.body98 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn31.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !318
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !319
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !39
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !39
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !318
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !319
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !194
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !40
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !194
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !195

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !470    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !471  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !189 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !177
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #46
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !35

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !470
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !480
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #46
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail15coalesce_rangesERSt6vectorISt4pairIllESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !501  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !502    ; 14 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEEZN7httplib6detail15coalesce_rangesERS7_mE3$_0EvT_SD_T0_.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIllESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7httplib6detail15coalesce_rangesERS7_mE3$_0EEEvT_SG_T0_T1_"(ptr %i.c, ptr %i.b, i64 noundef %i.k)
  %i.l = icmp sgt i64 %i.f, 256
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %.preheader.i23.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.f ], [ 16, %.lr.ph.i.i.i.i ] ; 3 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i ] ; 4 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.08.020.i.idx.i.i.i ; 6 uses
  %.val.i.i.i.i.i = load i64, ptr %.sroa.08.020.i.ptr.i.i.i, align 8, !tbaa !504 ; 5 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !504
  %i.n = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
end_hunk_0
