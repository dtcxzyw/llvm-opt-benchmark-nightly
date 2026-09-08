Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.345) #48
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %.not284 = icmp eq i64 %i.h, 0
  br i1 %.not284, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.h, 5
  %i.l = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #51
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i unwind label %bb.d ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.l, ptr %3, align 16, !tbaa !454
  store ptr %i.l, ptr %i.m, align 8, !tbaa !455
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.h
  store ptr %i.n, ptr %i.j, align 16, !tbaa !464
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i, %bb.c
  %.not207 = icmp eq ptr %i.c, %i.b
  br i1 %.not207, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7httplib6detail35serialize_multipart_formdata_finishERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.u

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0153.0208 = phi ptr [ %i.c, %.lr.ph ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7httplib6detail39serialize_multipart_formdata_item_beginINS_14UploadFormDataEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0153.0208, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !455  ; 7 uses
  %i.t = load ptr, ptr %i.j, align 16, !tbaa !464
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !182
  %i.v = load ptr, ptr %4, align 8, !tbaa !196    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.q, align 8, !tbaa !183  ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.z, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.v, ptr %i.s, align 8, !tbaa !196
  %i.aa = load i64, ptr %i.p, align 8, !tbaa !184
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !184
  %.pre = load i64, ptr %i.q, align 8, !tbaa !183
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ab = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.x, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !183
  store ptr %i.p, ptr %4, align 8, !tbaa !196
  store i64 0, ptr %i.q, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.ad, ptr %i.o, align 8, !tbaa !455
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre242 = load ptr, ptr %4, align 8, !tbaa !196 ; 2 uses
  %i.ae = icmp eq ptr %.pre242, %i.p
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.af = load i64, ptr %i.p, align 8, !tbaa !184
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %.pre242, i64 noundef %i.ag) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0153.0208, i64 128 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.b
  br i1 %.not, label %._crit_edge, label %bb.e

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.k:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %4, align 8, !tbaa !196   ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.p
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.k
  %i.am = load i64, ptr %i.p, align 8, !tbaa !184
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.j
  %.pn31 = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

bb.l:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !455 ; 7 uses
  %i.aq = load ptr, ptr %i.j, align 16, !tbaa !464
  %.not.i.i46 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i46, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !182
  %i.as = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !183 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.m
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !196
  %i.az = load i64, ptr %i.at, align 8, !tbaa !184
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !184
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre243 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !183
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  %i.ba = phi i64 [ %.pre243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47 ], [ %i.aw, %bb.n ]
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !183
  store ptr %i.at, ptr %5, align 8, !tbaa !196
  store i64 0, ptr %i.bb, align 8, !tbaa !183
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store ptr %i.bd, ptr %i.ao, align 8, !tbaa !455
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.o:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50 unwind label %bb.v

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50: ; preds = %bb.o
  %.pre244 = load ptr, ptr %5, align 8, !tbaa !196 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %.pre244, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !184
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %.pre244, i64 noundef %i.bh) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit50.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1569 ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !1570  ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 7
  %i.bo = mul nsw i64 %i.bn, 3
  %i.bp = add nsw i64 %i.bo, 1                    ; 4 uses
  %i.bq = icmp ugt i64 %i.bp, 576460752303423487
  br i1 %i.bq, label %bb.p, label %6

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.345) #48
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.p
  unreachable

6:                                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %.not161 = icmp eq i64 %i.bp, 0
  br i1 %.not161, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i: ; preds = %6
  %i.br = shl nuw nsw i64 %i.bp, 4
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #51
          to label %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE13_M_deallocateEPS2_m.exit.i unwind label %bb.w ; 2 uses

_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i
  %7 = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bp
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit: ; preds = %6, %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.sroa.0128.3 = phi ptr [ %i.bs, %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %6 ] ; 4 uses
  %.sroa.37.3 = phi ptr [ %7, %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ null, %6 ] ; 2 uses
  %.not217 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not217, label %._crit_edge214, label %.lr.ph213

._crit_edge214:                                   ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit
  %.sroa.0128.0.lcssa = phi ptr [ %.sroa.0128.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.0128.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 6 uses
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.0128.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.18.5, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 6 uses
  %.sroa.37.0.lcssa = phi ptr [ %.sroa.37.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ], [ %.sroa.37.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ] ; 2 uses
  %i.bt = load ptr, ptr %i.ao, align 8, !tbaa !269 ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !196 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !183 ; 2 uses
  %.not.i.i57 = icmp eq ptr %.sroa.18.0.lcssa, %.sroa.37.0.lcssa
  br i1 %.not.i.i57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge214
  store ptr %i.bv, ptr %.sroa.18.0.lcssa, align 8, !tbaa !312
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.0.lcssa, i64 8
  store i64 %i.bx, ptr %.sroa.6110.0..sroa_idx, align 8, !tbaa !197
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit

bb.r:                                             ; preds = %._crit_edge214
  %i.by = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.bz = ptrtoint ptr %.sroa.0128.0.lcssa to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775792
  br i1 %i.cb, label %bb.s, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #48
          to label %.noexc59 unwind label %bb.as

.noexc59:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.cc = ashr exact i64 %i.ca, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 576460752303423487)
  %i.cg = select i1 %i.ce, i64 576460752303423487, i64 %i.cf ; 3 uses
  %.not.i.i.i.i58 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i58)
  %i.ch = shl nuw nsw i64 %i.cg, 4
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #51
          to label %.noexc60 unwind label %bb.as  ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 3 uses
  store ptr %i.bv, ptr %i.cj, align 8, !tbaa !312
  %.sroa.6110.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.bx, ptr %.sroa.6110.0..sroa_idx111, align 8, !tbaa !197
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.t, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.t:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %.sroa.0128.0.lcssa, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.t, %.noexc60
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0128.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %8

8:                                                ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0.lcssa, i64 noundef %i.ca) #47
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %8, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit

bb.u:                                             ; preds = %._crit_edge
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.v:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %5, align 8, !tbaa !196   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.v
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !184
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.u ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.cn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

bb.w:                                             ; preds = %_ZNSt12_Vector_baseIN7httplib6detail16MultipartSegmentESaIS2_EE11_M_allocateEm.exit.i, %bb.p
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

.lr.ph213:                                        ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93
  %.0212 = phi i64 [ %i.ew, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ 0, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 3 uses
  %.sroa.37.0211 = phi ptr [ %.sroa.37.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %.sroa.37.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 5 uses
  %.sroa.18.0210 = phi ptr [ %.sroa.18.5, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %.sroa.0128.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 4 uses
  %.sroa.0128.0209 = phi ptr [ %.sroa.0128.7, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93 ], [ %.sroa.0128.3, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE7reserveEm.exit ] ; 7 uses
  %i.cu = load ptr, ptr %3, align 16, !tbaa !454
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.cu, i64 %.0212 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !196 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !183 ; 2 uses
  %.not.i.i64 = icmp eq ptr %.sroa.18.0210, %.sroa.37.0211
  br i1 %.not.i.i64, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph213
  store ptr %i.cw, ptr %.sroa.18.0210, align 8, !tbaa !312
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.0210, i64 8
  store i64 %i.cy, ptr %.sroa.6125.0..sroa_idx, align 8, !tbaa !197
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73

bb.y:                                             ; preds = %.lr.ph213
  %i.cz = ptrtoint ptr %.sroa.37.0211 to i64
  %i.da = ptrtoint ptr %.sroa.0128.0209 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 6 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775792
  br i1 %i.dc, label %bb.z, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #48
          to label %.noexc71 unwind label %.loopexit.split-lp

.noexc71:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.y
  %i.dd = ashr exact i64 %i.db, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 576460752303423487)
  %i.dh = select i1 %i.df, i64 576460752303423487, i64 %i.dg ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.di = shl nuw nsw i64 %i.dh, 4
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #51
          to label %.noexc72 unwind label %.loopexit ; 4 uses

.noexc72:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.db ; 3 uses
  store ptr %i.cw, ptr %i.dk, align 8, !tbaa !312
  %.sroa.6125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.cy, ptr %.sroa.6125.0..sroa_idx126, align 8, !tbaa !197
  %i.dl = icmp sgt i64 %i.db, 0
  br i1 %i.dl, label %bb.aa, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i68

bb.aa:                                            ; preds = %.noexc72
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr align 8 %.sroa.0128.0209, i64 %i.db, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i68

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i68: ; preds = %bb.aa, %.noexc72
  %.not.i17.i.i.i69 = icmp eq ptr %.sroa.0128.0209, null
  br i1 %.not.i17.i.i.i69, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70, label %9

9:                                                ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.0209, i64 noundef %i.db) #47
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70: ; preds = %9, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i68
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dh
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70, %bb.x
  %.sroa.0128.5 = phi ptr [ %i.dj, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.0128.0209, %bb.x ] ; 7 uses
  %.pn163 = phi ptr [ %i.dk, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.18.0210, %bb.x ] ; 3 uses
  %.sroa.37.5 = phi ptr [ %i.dm, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i70 ], [ %.sroa.37.0211, %bb.x ] ; 5 uses
  %.sroa.18.3 = getelementptr inbounds nuw i8, ptr %.pn163, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !1570
  %i.do = getelementptr inbounds nuw [128 x i8], ptr %i.dn, i64 %.0212 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !196 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !183 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.sroa.18.3, %.sroa.37.5
  br i1 %.not.i.i74, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73
  store ptr %i.dq, ptr %.sroa.18.3, align 8, !tbaa !312
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn163, i64 24
  store i64 %i.ds, ptr %.sroa.6120.0..sroa_idx, align 8, !tbaa !197
  %i.dt = getelementptr inbounds nuw i8, ptr %.pn163, i64 32
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83

bb.ac:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit73
  %i.du = ptrtoint ptr %.sroa.37.5 to i64
  %i.dv = ptrtoint ptr %.sroa.0128.5 to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775792
  br i1 %i.dx, label %bb.ad, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #48
          to label %.noexc81 unwind label %.loopexit.split-lp166

.noexc81:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75: ; preds = %bb.ac
  %i.dy = ashr exact i64 %i.dw, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i76 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i76, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 576460752303423487)
  %i.ec = select i1 %i.ea, i64 576460752303423487, i64 %i.eb ; 3 uses
  %.not.i.i.i.i77 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i.i77)
  %i.ed = shl nuw nsw i64 %i.ec, 4
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #51
          to label %.noexc82 unwind label %.loopexit165 ; 4 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 3 uses
  store ptr %i.dq, ptr %i.ef, align 8, !tbaa !312
  %.sroa.6120.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ds, ptr %.sroa.6120.0..sroa_idx121, align 8, !tbaa !197
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.ae, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78

bb.ae:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %.sroa.0128.5, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78: ; preds = %bb.ae, %.noexc82
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.not.i17.i.i.i79 = icmp eq ptr %.sroa.0128.5, null
  br i1 %.not.i17.i.i.i79, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80, label %10

10:                                               ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.5, i64 noundef %i.dw) #47
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80: ; preds = %10, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i78
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80, %bb.ab
  %.sroa.0128.6 = phi ptr [ %i.ee, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80 ], [ %.sroa.0128.5, %bb.ab ] ; 7 uses
  %.sroa.18.4 = phi ptr [ %i.eh, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80 ], [ %i.dt, %bb.ab ] ; 7 uses
  %.sroa.37.6 = phi ptr [ %11, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i80 ], [ %.sroa.37.5, %bb.ab ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.18.4, %.sroa.37.6
  br i1 %.not.i.i84, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83
  store ptr @"__const._ZZN7httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEE3$_0NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE_clESZ_.crlf", ptr %.sroa.18.4, align 8, !tbaa !312
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18.4, i64 8
  store i64 2, ptr %.sroa.6115.0..sroa_idx, align 8, !tbaa !197
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93

bb.ag:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit83
  %i.ei = ptrtoint ptr %.sroa.18.4 to i64
  %i.ej = ptrtoint ptr %.sroa.0128.6 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775792
  br i1 %i.el, label %bb.ah, label %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.346) #48
          to label %.noexc91 unwind label %.loopexit.split-lp171

.noexc91:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85: ; preds = %bb.ag
  %i.em = ashr exact i64 %i.ek, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i86 = call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i86, %i.em ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.em
  %i.ep = call i64 @llvm.umin.i64(i64 %i.en, i64 576460752303423487)
  %i.eq = select i1 %i.eo, i64 576460752303423487, i64 %i.ep ; 3 uses
  %.not.i.i.i.i87 = icmp ne i64 %i.eq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i87)
  %i.er = shl nuw nsw i64 %i.eq, 4
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #51
          to label %.noexc92 unwind label %.loopexit170 ; 4 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %i.ek ; 3 uses
  store ptr @"__const._ZZN7httplib6detail21write_content_chunkedIZNKS_10ClientImpl27write_content_with_providerERNS_6StreamERKNS_7RequestERNS_5ErrorEE3$_0NS0_10compressorEEEbS4_RKSt8functionIFbmmRNS_8DataSinkEEERKT_RT0_S9_ENKUlPKNS0_26insertion_ordered_multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_11case_ignore8equal_toEEEE_clESZ_.crlf", ptr %i.et, align 8, !tbaa !312
  %.sroa.6115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 2, ptr %.sroa.6115.0..sroa_idx116, align 8, !tbaa !197
  %i.eu = icmp sgt i64 %i.ek, 0
  br i1 %i.eu, label %bb.ai, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88

bb.ai:                                            ; preds = %.noexc92
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr align 8 %.sroa.0128.6, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88: ; preds = %bb.ai, %.noexc92
  %.not.i17.i.i.i89 = icmp eq ptr %.sroa.0128.6, null
  br i1 %.not.i17.i.i.i89, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90, label %12

12:                                               ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.6, i64 noundef %i.ek) #47
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90: ; preds = %12, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i88
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.eq
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit93: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90, %bb.af
  %.sroa.0128.7 = phi ptr [ %i.es, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.0128.6, %bb.af ] ; 2 uses
  %.pn164 = phi ptr [ %i.et, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.18.4, %bb.af ]
  %.sroa.37.7 = phi ptr [ %i.ev, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i90 ], [ %.sroa.37.6, %bb.af ] ; 2 uses
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.pn164, i64 16 ; 2 uses
  %i.ew = add nuw i64 %.0212, 1                   ; 2 uses
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !1569
  %i.ey = load ptr, ptr %1, align 8, !tbaa !1570
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 7
  %i.fd = icmp ult i64 %i.ew, %i.fc
  br i1 %i.fd, label %.lr.ph213, label %._crit_edge214, !llvm.loop !1565

.loopexit:                                        ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i65
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit165:                                     ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i75
  %lpad.loopexit167 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp166:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit170:                                     ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i85
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp171:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.q
  %.sroa.0128.4 = phi ptr [ %i.ci, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0128.0.lcssa, %bb.q ] ; 3 uses
  %.pn162 = phi ptr [ %i.cj, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.18.0.lcssa, %bb.q ]
  %.sroa.37.4 = phi ptr [ %i.cl, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.37.0.lcssa, %bb.q ] ; 3 uses
  %.sroa.18.2 = getelementptr inbounds nuw i8, ptr %.pn162, i64 16
  %i.fe = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #51
          to label %.noexc94 unwind label %bb.at  ; 20 uses

.noexc94:                                         ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 7 uses
  store i32 1, ptr %i.ff, align 8, !tbaa !320, !noalias !1571
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  store i32 1, ptr %i.fg, align 4, !tbaa !321, !noalias !1571
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fe, align 8, !tbaa !201, !noalias !1571
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, i8 0, i64 72, i1 false), !noalias !1571
  %i.fi = invoke noalias noundef nonnull dereferenceable(16384) ptr @_Znwm(i64 noundef 16384) #51
          to label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit unwind label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, !noalias !1571 ; 3 uses

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc94
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(72) %i.fh) #23, !noalias !1571
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef 88) #47, !noalias !1571
  br label %.body

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit: ; preds = %.noexc94
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !472, !noalias !1571
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 16384 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !473, !noalias !1571
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.fi, i8 0, i64 16384, i1 false), !noalias !1571
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !474, !noalias !1571
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fp = load <2 x ptr>, ptr %3, align 16, !tbaa !269
  store <2 x ptr> %i.fp, ptr %i.fh, align 8, !tbaa !269
  %i.fq = load ptr, ptr %i.j, align 16, !tbaa !464
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  store ptr %.sroa.0128.4, ptr %i.fr, align 8, !tbaa !477
  store ptr %.sroa.18.2, ptr %i.fs, align 8, !tbaa !478
  store ptr %.sroa.37.4, ptr %i.ft, align 8, !tbaa !479
  %.pre245 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i.i96 = icmp eq i8 %.pre245, 0
  br i1 %.not.i.i.i.i96, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit
  store i32 2, ptr %i.ff, align 8, !tbaa !274
  br label %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EEaSEOS4_.exit
  %i.fu = atomicrmw volatile add ptr %i.ff, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit

_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.fv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #51
          to label %bb.al unwind label %bb.au     ; 3 uses

bb.al:                                            ; preds = %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fh, ptr %i.fv, align 8, !tbaa !482
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fe, ptr %i.fy, align 8, !tbaa !318
  store ptr %i.fv, ptr %0, align 8, !tbaa !190
  store ptr @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E9_M_invokeERKSt9_Any_dataOmSO_S2_", ptr %i.fw, align 8, !tbaa !425
  store ptr @"_ZNSt17_Function_handlerIFbmmRN7httplib8DataSinkEEZNS0_6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS6_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.fx, align 8, !tbaa !264
  %i.fz = load atomic i64, ptr %i.ff acquire, align 8 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 4294967297
  %i.gb = trunc i64 %i.fz to i32                  ; 2 uses
  br i1 %i.ga, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ff, align 8, !tbaa !320
  store i32 0, ptr %i.fg, align 4, !tbaa !321
  %i.gc = load ptr, ptr %i.fe, align 8, !tbaa !201
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #23, !inline_history !41
  %i.gf = load ptr, ptr %i.fe, align 8, !tbaa !201
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #23, !inline_history !41
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i101 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i101, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gj = add nsw i32 %i.gb, -1
  store i32 %i.gj, ptr %i.ff, align 8, !tbaa !274
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.gk = atomicrmw volatile add ptr %i.ff, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i = phi i32 [ %i.gb, %bb.ao ], [ %i.gk, %bb.ap ]
  %i.gl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gl, label %bb.aq, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit, !prof !202

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fe) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  %i.gm = load ptr, ptr %3, align 16, !tbaa !454  ; 3 uses
  %i.gn = load ptr, ptr %i.ao, align 8, !tbaa !455 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gm, %i.gn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gm, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit ] ; 3 uses
  %i.go = load ptr, ptr %.05.i.i.i, align 8, !tbaa !196 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gq = icmp eq ptr %i.go, %i.gp
  br i1 %i.gq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103: ; preds = %.lr.ph.i.i.i
  %i.gr = load i64, ptr %i.gp, align 8, !tbaa !184
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gs) #47
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i103
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.gt, %i.gn
  br i1 %.not.i.i.i104, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 16, !tbaa !454
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit
  %i.gu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gm, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gv = load ptr, ptr %i.j, align 16, !tbaa !464
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gu to i64
  %i.gy = sub i64 %i.gw, %i.gx
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gy) #47
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.as:                                            ; preds = %_ZNKSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.s
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EE9push_backEOS2_.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %_ZNSt10shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateEC2ERKSH_.exit
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS_14UploadFormDataESaIS2_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEN3$_0D2Ev"(ptr nonnull %i.fe) #23
  call fastcc void @_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.fe) #23
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

.body:                                            ; preds = %.loopexit170, %.loopexit.split-lp171, %.loopexit165, %.loopexit.split-lp166, %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i, %bb.at, %bb.as
  %.sroa.0128.2 = phi ptr [ %.sroa.0128.4, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %.sroa.0128.4, %bb.at ], [ %.sroa.0128.0209, %.loopexit.split-lp ], [ %.sroa.0128.5, %.loopexit.split-lp166 ], [ %.sroa.0128.0.lcssa, %bb.as ], [ %.sroa.0128.0209, %.loopexit ], [ %.sroa.0128.5, %.loopexit165 ], [ %.sroa.0128.6, %.loopexit170 ], [ %.sroa.0128.6, %.loopexit.split-lp171 ] ; 3 uses
  %.sroa.37.2 = phi ptr [ %.sroa.37.4, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %.sroa.37.4, %bb.at ], [ %.sroa.37.0211, %.loopexit.split-lp ], [ %.sroa.37.5, %.loopexit.split-lp166 ], [ %.sroa.18.0.lcssa, %bb.as ], [ %.sroa.37.0211, %.loopexit ], [ %.sroa.37.5, %.loopexit165 ], [ %.sroa.18.4, %.loopexit170 ], [ %.sroa.18.4, %.loopexit.split-lp171 ]
  %.pn28.pn = phi { ptr, i32 } [ %i.fj, %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i.i ], [ %i.ha, %bb.at ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp166 ], [ %i.gz, %bb.as ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit167, %.loopexit165 ], [ %lpad.loopexit172, %.loopexit170 ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ] ; 2 uses
  %.not.i.i.i105 = icmp eq ptr %.sroa.0128.2, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106, label %bb.av

bb.av:                                            ; preds = %.body
  %i.hc = ptrtoint ptr %.sroa.37.2 to i64
  %i.hd = ptrtoint ptr %.sroa.0128.2 to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0128.2, i64 noundef %i.he) #47
  br label %_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106

_ZNSt6vectorIN7httplib6detail16MultipartSegmentESaIS2_EED2Ev.exit106: ; preds = %bb.au, %bb.w, %bb.av, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.d
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.r, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %.pn28.pn, %bb.av ], [ %.pn28.pn, %.body ], [ %i.hb, %bb.au ], [ %i.ct, %bb.w ]
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
  store i32 0, ptr %i.a, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !321
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !41
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !201
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !41
  br label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !274
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIZN7httplib6detail31make_multipart_content_providerERKSt6vectorINS0_14UploadFormDataESaIS3_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14MultipartStateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !202

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
  store i32 0, ptr %i.a, align 8, !tbaa !320
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !321
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !201
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !42
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !201
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23, !inline_history !42
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !184
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !274
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !202

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !454    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !455  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !196 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !184
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #47
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !37

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !454
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !464
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #47
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7httplib6detail15coalesce_rangesERSt6vectorISt4pairIllESaIS3_EEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !484  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !485    ; 14 uses
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
  %.val.i.i.i.i.i = load i64, ptr %.sroa.08.020.i.ptr.i.i.i, align 8, !tbaa !487 ; 5 uses
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !487
  %i.n = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
end_hunk_0
