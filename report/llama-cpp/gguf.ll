Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/gguf?download=true
inline.NumInlined: 3401
inline.NumDeleted: 1047
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt8_Rb_treeI9gguf_typeSt4pairIKS0_PKcESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_Z14gguf_type_size9gguf_type(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  %i.d = icmp slt i32 %i.c, %0                    ; 2 uses
  %.19.i.i.i = select i1 %i.d, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.d, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  br i1 %i.e, label %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.g = load i32, ptr %i.f, align 4, !tbaa !45
  %i.h = icmp slt i32 %0, %i.g
  br i1 %i.h, label %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit.thread, label %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit

_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !50
  br label %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit.thread

_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit.thread: ; preds = %bb.b, %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit
  %i.k = phi i64 [ %i.j, %_ZNKSt3mapI9gguf_typemSt4lessIS0_ESaISt4pairIKS0_mEEE4findERS4_.exit ], [ 0, %bb.a ], [ 0, %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ 0, %bb.b ]
  ret i64 %i.k
}

; Function Attrs: mustprogress memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef nonnull ptr @gguf_init_empty() local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30 ; 5 uses
  store i32 3, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  store i64 32, ptr %i.c, align 8, !tbaa !63
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @gguf_init_from_callback(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i8 %4, ptr nofree writeonly captures(address_is_null) %5) local_unnamed_addr #1 {
bb.a:
  %6 = alloca %struct.gguf_reader, align 8        ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.b = icmp eq i64 %2, 0
  %i.c = select i1 %i.b, i64 -1, i64 %2
  store ptr %0, ptr %6, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.c, ptr %i.e, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %3, ptr %i.g, align 8, !tbaa !69
  %i.h = call fastcc noundef ptr @_ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 %4, ptr %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 %1, ptr nofree writeonly captures(address_is_null) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::vector.30", align 8    ; 16 uses
  %i.d = alloca i64, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 23 uses
  %i.f = alloca i64, align 8                      ; 17 uses
  %5 = alloca %struct.gguf_tensor_info, align 8   ; 27 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.ggml_init_params, align 8   ; 4 uses
  %i.h = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #30 ; 56 uses
  store i32 3, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 29 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  store i64 32, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.l = invoke noundef zeroext i1 @_ZNK11gguf_reader4readIcEEbRSt6vectorIT_SaIS2_EEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 4)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %.preheader715, label %bb.c

.preheader715:                                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !73     ; 9 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %.not398.not898.not = icmp eq ptr %i.n, %i.o
  br i1 %.not398.not898.not, label %.critedge429, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params)
          to label %.critedge427 unwind label %bb.h

.critedge427:                                     ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.critedge427
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !75
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i: ; preds = %bb.d, %.critedge427
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7gguf_kvEEvT_S4_(ptr noundef %i.z, ptr noundef %i.ab)
          to label %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i unwind label %bb.f

_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i1.i.i, label %gguf_free.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #33
  br label %gguf_free.exit

bb.f:                                             ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #32
  unreachable

gguf_free.exit:                                   ; preds = %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #33
  %i.ak = load ptr, ptr %3, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %gguf_free.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %gguf_free.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.gg

bb.h:                                             ; preds = %bb.c, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw i64 %i.ar, 1         ; 2 uses
  %.not398.not = icmp ugt i64 %i.r, %indvars.iv.next
  br i1 %.not398.not, label %.lr.ph, label %.critedge429.thread, !llvm.loop !212

.lr.ph:                                           ; preds = %.preheader715, %bb.i
  %i.ar = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader715 ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr @.str.19, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1, !tbaa !80
  %.not = icmp eq i8 %i.at, %i.av
  br i1 %.not, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.aw = load i8, ptr %i.o, align 1, !tbaa !80
  %i.ax = sext i8 %i.aw to i32                    ; 2 uses
  %i.ay = call i32 @isprint(i32 noundef %i.ax) #29
  %.not393 = icmp eq i32 %i.ay, 0
  %spec.select = select i1 %.not393, i32 63, i32 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !80
  %i.bb = sext i8 %i.ba to i32                    ; 2 uses
  %i.bc = call i32 @isprint(i32 noundef %i.bb) #29
  %.not394 = icmp eq i32 %i.bc, 0
  %i.bd = select i1 %.not394, i32 63, i32 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = sext i8 %i.bf to i32                    ; 2 uses
  %i.bh = call i32 @isprint(i32 noundef %i.bg) #29
  %.not395 = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not395, i32 63, i32 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80
  %i.bl = sext i8 %i.bk to i32                    ; 2 uses
  %i.bm = call i32 @isprint(i32 noundef %i.bl) #29
  %.not396 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not396, i32 63, i32 %i.bl
  invoke void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, i32 noundef %spec.select, i32 noundef %i.bd, i32 noundef %i.bi, i32 noundef %i.bn)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i.i448 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i448, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i449, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !75
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #33
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i449

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i449: ; preds = %bb.l, %bb.k
  %i.bv = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !77
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7gguf_kvEEvT_S4_(ptr noundef %i.bv, ptr noundef %i.bx)
          to label %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i450 unwind label %bb.n

_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i450: ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i449
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !76  ; 3 uses
  %.not.i.i.i1.i.i451 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i1.i.i451, label %gguf_free.exit452, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i450
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !78
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #33
  br label %gguf_free.exit452

bb.n:                                             ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EED2Ev.exit.i.i449
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #32
  unreachable

gguf_free.exit452:                                ; preds = %_ZSt8_DestroyIP7gguf_kvS0_EvT_S2_RSaIT0_E.exit.i.i.i450, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 88) #33
  %i.cg = load ptr, ptr %3, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i453 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i453, label %_ZNSt6vectorIcSaIcEED2Ev.exit454, label %bb.o

bb.o:                                             ; preds = %gguf_free.exit452
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #33
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit454

_ZNSt6vectorIcSaIcEED2Ev.exit454:                 ; preds = %gguf_free.exit452, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.gg

bb.p:                                             ; preds = %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.critedge429:                                     ; preds = %.preheader715
  %.not.i.i.i455 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i455, label %bb.q, label %.critedge429.thread

.critedge429.thread:                              ; preds = %bb.i, %.critedge429
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.cq) #33
  br label %bb.q

bb.q:                                             ; preds = %.critedge429.thread, %.critedge429
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  store i64 0, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  store i64 0, ptr %i.e, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 24 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !69
  %i.ct = icmp ult i64 %i.cs, 4
  %i.cu = load ptr, ptr %0, align 8
  %i.cv = icmp eq ptr %i.cu, null
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cv
  br i1 %or.cond.i, label %.thread635, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.preheader.i.i
  %.025.i.i = phi i64 [ %i.di, %bb.t ], [ 0, %.preheader.i.i ] ; 7 uses
  %i.cz = icmp ult i64 %.025.i.i, 4
  %.pre37.i.i = load i64, ptr %i.cw, align 8, !tbaa !68 ; 4 uses
  br i1 %i.cz, label %bb.s, label %.thread.i.i

bb.s:                                             ; preds = %bb.r
  %i.da = add i64 %.pre37.i.i, %.025.i.i          ; 2 uses
  %i.db = icmp ult i64 %i.da, %.pre37.i.i
  br i1 %i.db, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = sub nuw nsw i64 4, %.025.i.i
  %i.dd = load i64, ptr %i.cx, align 8, !tbaa !81
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dd) ; 2 uses
  %i.de = load ptr, ptr %0, align 8, !tbaa !65
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 %.025.i.i
  %i.dh = call noundef i64 %i.de(ptr noundef %i.df, ptr noundef nonnull %i.dg, i64 noundef %i.da, i64 noundef %.sroa.speculated.i.i), !inline_history !1 ; 2 uses
  %i.di = add i64 %i.dh, %.025.i.i                ; 2 uses
  %.not.i.i = icmp eq i64 %i.dh, %.sroa.speculated.i.i
  br i1 %.not.i.i, label %bb.r, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.t
  %.pre.i.i = load i64, ptr %i.cw, align 8, !tbaa !68
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.s, %bb.r, %..thread_crit_edge.i.i
  %i.dj = phi i64 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre37.i.i, %bb.r ], [ %.pre37.i.i, %bb.s ]
  %.227.i.i = phi i64 [ %i.di, %..thread_crit_edge.i.i ], [ %.025.i.i, %bb.r ], [ %.025.i.i, %bb.s ] ; 4 uses
  %.3.i.i = phi i1 [ true, %..thread_crit_edge.i.i ], [ false, %bb.r ], [ false, %bb.s ]
  %i.dk = add i64 %.227.i.i, %i.dj
  store i64 %i.dk, ptr %i.cw, align 8, !tbaa !68
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !69 ; 2 uses
  %.not32.i.i = icmp ugt i64 %.227.i.i, %i.dl
  br i1 %.not32.i.i, label %bb.u, label %_ZNK11gguf_reader4readIjEEbRT_.exit

bb.u:                                             ; preds = %.thread.i.i
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 404, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.60) #34
  unreachable

_ZNK11gguf_reader4readIjEEbRT_.exit:              ; preds = %.thread.i.i
  %i.dm = sub nuw i64 %i.dl, %.227.i.i
  %spec.select.i.i = select i1 %.3.i.i, i64 0, i64 %i.dm ; 2 uses
  store i64 %spec.select.i.i, ptr %i.cr, align 8, !tbaa !69
  %i.dn = icmp eq i64 %.227.i.i, 4
  br i1 %i.dn, label %bb.v, label %.thread635

bb.v:                                             ; preds = %_ZNK11gguf_reader4readIjEEbRT_.exit
  %i.do = load i32, ptr %i.h, align 8, !tbaa !62  ; 6 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.v
  call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__._ZL21gguf_init_from_readerRK11gguf_reader16gguf_init_params, i32 noundef 0)
  br label %.thread635

bb.w:                                             ; preds = %bb.p, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.aq, %bb.h ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !73    ; 3 uses
  %.not.i.i.i457 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i457, label %_ZNSt6vectorIcSaIcEED2Ev.exit458, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !79
  %i.dt = ptrtoint ptr %i.ds to i64
end_hunk_0
begin_hunk_1_@gguf_set_kv:bb.a
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.am:                                            ; preds = %bb.b
  %i.fw = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i.i147

.lr.ph.i.i.i.i.i147:                              ; preds = %.lr.ph.i.i.i.i.i147, %bb.am
  %.012.i.i.i.i.i148 = phi ptr [ %.1.i.i.i.i.i153, %.lr.ph.i.i.i.i.i147 ], [ %i.fx, %bb.am ] ; 3 uses
  %.0811.i.i.i.i.i149 = phi ptr [ %.19.i.i.i.i.i150, %.lr.ph.i.i.i.i.i147 ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.am ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i148, i64 32
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !45
  %i.ga = icmp slt i32 %i.fz, 12                  ; 2 uses
  %.19.i.i.i.i.i150 = select i1 %i.ga, ptr %.0811.i.i.i.i.i149, ptr %.012.i.i.i.i.i148 ; 3 uses
  %.1.in.v.i.i.i.i.i151 = select i1 %i.ga, i64 24, i64 16
  %.1.in.i.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i148, i64 %.1.in.v.i.i.i.i.i151
  %.1.i.i.i.i.i153 = load ptr, ptr %.1.in.i.i.i.i.i152, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i154 = icmp eq ptr %.1.i.i.i.i.i153, null
  br i1 %.not.i.i.i.i.i154, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i155, label %.lr.ph.i.i.i.i.i147, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i155: ; preds = %.lr.ph.i.i.i.i.i147
  %i.gb = icmp ne ptr %.19.i.i.i.i.i150, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i150, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !50 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !167
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !120 ; 2 uses
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = urem i64 %i.gk, %i.gd
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i155
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 200, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.ao:                                            ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i155
  %.not.i156 = icmp ult i64 %i.gk, %i.gd
  br i1 %.not.i156, label %bb.ap, label %_ZNK7gguf_kv7get_valIdEERKT_m.exit

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 201, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.80) #34
  unreachable

_ZNK7gguf_kv7get_valIdEERKT_m.exit:               ; preds = %bb.ao
  %i.gn = load double, ptr %i.gh, align 8, !tbaa !165
  tail call void @gguf_set_val_f64(ptr noundef %0, ptr noundef %i.fw, double noundef %i.gn)
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.aq:                                            ; preds = %bb.b
  %i.go = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.gp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 16), align 8, !tbaa !39, !nonnull !101, !noundef !101
  br label %.lr.ph.i.i.i.i.i157

.lr.ph.i.i.i.i.i157:                              ; preds = %.lr.ph.i.i.i.i.i157, %bb.aq
  %.012.i.i.i.i.i158 = phi ptr [ %.1.i.i.i.i.i163, %.lr.ph.i.i.i.i.i157 ], [ %i.gp, %bb.aq ] ; 3 uses
  %.0811.i.i.i.i.i159 = phi ptr [ %.19.i.i.i.i.i160, %.lr.ph.i.i.i.i.i157 ], [ getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8), %bb.aq ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i158, i64 32
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !45
  %i.gs = icmp slt i32 %i.gr, 7                   ; 2 uses
  %.19.i.i.i.i.i160 = select i1 %i.gs, ptr %.0811.i.i.i.i.i159, ptr %.012.i.i.i.i.i158 ; 3 uses
  %.1.in.v.i.i.i.i.i161 = select i1 %i.gs, i64 24, i64 16
  %.1.in.i.i.i.i.i162 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i158, i64 %.1.in.v.i.i.i.i.i161
  %.1.i.i.i.i.i163 = load ptr, ptr %.1.in.i.i.i.i.i162, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i.i.i164 = icmp eq ptr %.1.i.i.i.i.i163, null
  br i1 %.not.i.i.i.i.i164, label %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i165, label %.lr.ph.i.i.i.i.i157, !llvm.loop !0

_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i165: ; preds = %.lr.ph.i.i.i.i.i157
  %i.gt = icmp ne ptr %.19.i.i.i.i.i160, getelementptr inbounds nuw (i8, ptr @_ZL14GGUF_TYPE_SIZE, i64 8)
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i160, i64 40
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !50 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !167
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !120 ; 2 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb                    ; 2 uses
  %i.hd = urem i64 %i.hc, %i.gv
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i165
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 200, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.78) #34
  unreachable

bb.as:                                            ; preds = %_ZNKSt8_Rb_treeI9gguf_typeSt4pairIKS0_mESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i.i165
  %.not.i166 = icmp ult i64 %i.hc, %i.gv
  br i1 %.not.i166, label %bb.at, label %_ZNK7gguf_kv7get_valIbEERKT_m.exit

bb.at:                                            ; preds = %bb.as
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 201, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.80) #34
  unreachable

_ZNK7gguf_kv7get_valIbEERKT_m.exit:               ; preds = %bb.as
  %i.hf = load i8, ptr %i.gz, align 1, !tbaa !116, !range !100, !noundef !101
  %i.hg = trunc nuw i8 %i.hf to i1
  tail call void @gguf_set_val_bool(ptr noundef %0, ptr noundef %i.go, i1 noundef zeroext %i.hg)
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.au:                                            ; preds = %bb.b
  %i.hh = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !152
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !151 ; 2 uses
  %.not.i167 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i167, label %bb.av, label %_ZNK7gguf_kv7get_valINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_m.exit

bb.av:                                            ; preds = %bb.au
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 196, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.81) #34
  unreachable

_ZNK7gguf_kv7get_valINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_m.exit: ; preds = %bb.au
  %i.hl = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !86
  tail call void @gguf_set_val_str(ptr noundef %0, ptr noundef %i.hl, ptr noundef %i.hm)
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.aw:                                            ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1350, ptr noundef nonnull @.str.88) #34
  unreachable

bb.ax:                                            ; preds = %.lr.ph179
  %i.hn = tail call noundef i64 @_ZNK7gguf_kv6get_neEv(ptr noundef nonnull align 8 dereferenceable(88) %i.k) ; 15 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !45 ; 2 uses
  switch i32 %i.hp, label %bb.be [
    i32 0, label %bb.ay
    i32 1, label %bb.ay
    i32 2, label %bb.ay
    i32 3, label %bb.ay
    i32 4, label %bb.ay
    i32 5, label %bb.ay
    i32 6, label %bb.ay
    i32 10, label %bb.ay
    i32 11, label %bb.ay
    i32 12, label %bb.ay
    i32 7, label %bb.ay
    i32 8, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax, %bb.ax
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.hr = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !120
  tail call void @gguf_set_arr_data(ptr noundef %0, ptr noundef %i.hq, i32 noundef %i.hp, ptr noundef %i.hs, i64 noundef %i.hn)
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.ht = icmp ugt i64 %i.hn, 1152921504606846975
  br i1 %i.ht, label %.noexc, label %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.az
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #34
  unreachable

_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.az
  %.not.i.i.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc168

.noexc168:                                        ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.hu = shl nuw nsw i64 %i.hn, 3
  %i.hv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hu) #30 ; 12 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hn
  store ptr null, ptr %i.hv, align 8, !tbaa !173
  %i.hx = add nsw i64 %i.hn, -1                   ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %.lr.ph, label %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc168
  %i.hz = getelementptr i8, ptr %i.hv, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hz, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !173
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc168
  %i.ia = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !151 ; 11 uses
  %min.iters.check = icmp ult i64 %i.hn, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.0176.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 4 uses
  %i.ic = sub nsw i64 %i.hn, %.0176.ph
  %xtraiter = and i64 %i.ic, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0176.prol = phi i64 [ %i.ig, %scalar.ph.prol ], [ %.0176.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.id = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %.0176.prol
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !86
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.0176.prol
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !173
  %i.ig = add nuw nsw i64 %.0176.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !741

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0176.unr = phi i64 [ %.0176.ph, %scalar.ph.preheader ], [ %i.ig, %scalar.ph.prol ]
  %i.ih = sub nsw i64 %.0176.ph, %i.hn
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %._crit_edge.loopexit, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ij = shl nuw nsw i64 %i.hn, 3
  %scevgep = getelementptr i8, ptr %i.hv, i64 %i.ij
  %scevgep191 = getelementptr i8, ptr %i.ib, i64 -24
  %i.ik = shl i64 %i.hn, 5
  %scevgep192 = getelementptr i8, ptr %scevgep191, i64 %i.ik
  %bound0 = icmp ult ptr %i.hv, %scevgep192
  %bound1 = icmp ult ptr %i.ib, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.il = and i64 %i.hn, 3                        ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  %i.in = select i1 %i.im, i64 4, i64 %i.il
  %n.vec = sub nsw i64 %i.hn, %i.in               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.io = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %index
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %index
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %index
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %index
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 96
  %i.iv = load ptr, ptr %i.io, align 8, !tbaa !86, !alias.scope !748
  %i.iw = load ptr, ptr %i.iq, align 8, !tbaa !86, !alias.scope !748
  %i.ix = insertelement <2 x ptr> poison, ptr %i.iv, i64 0
  %i.iy = insertelement <2 x ptr> %i.ix, ptr %i.iw, i64 1
  %i.iz = load ptr, ptr %i.is, align 8, !tbaa !86, !alias.scope !748
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !86, !alias.scope !748
  %i.jb = insertelement <2 x ptr> poison, ptr %i.iz, i64 0
  %i.jc = insertelement <2 x ptr> %i.jb, ptr %i.ja, i64 1
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %index ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <2 x ptr> %i.iy, ptr %i.jd, align 8, !tbaa !173, !alias.scope !749, !noalias !748
  store <2 x ptr> %i.jc, ptr %i.je, align 8, !tbaa !173, !alias.scope !749, !noalias !748
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !745

._crit_edge.loopexit:                             ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.jg = ptrtoint ptr %i.hw to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.0171.0190 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.hv, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.11.0188 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.jg, %._crit_edge.loopexit ] ; 2 uses
  %i.jh = load ptr, ptr %i.k, align 8, !tbaa !86
  invoke void @gguf_set_arr_str(ptr noundef %0, ptr noundef %i.jh, ptr noundef %.sroa.0171.0190, i64 noundef %i.hn)
          to label %bb.ba unwind label %bb.bc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0176 = phi i64 [ %i.jx, %scalar.ph ], [ %.0176.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %.0176
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !86
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.0176
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !173
  %i.jl = add nuw nsw i64 %.0176, 1               ; 2 uses
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !86
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.jl
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !173
  %i.jp = add nuw nsw i64 %.0176, 2               ; 2 uses
  %i.jq = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !86
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.jp
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !173
  %i.jt = add nuw nsw i64 %.0176, 3               ; 2 uses
  %i.ju = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !86
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.jt
  store ptr %i.jv, ptr %i.jw, align 8, !tbaa !173
  %i.jx = add nuw nsw i64 %.0176, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.jx, %i.hn
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !746

bb.ba:                                            ; preds = %._crit_edge
  %.not.i.i.i = icmp eq ptr %.sroa.0171.0190, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jy = ptrtoint ptr %.sroa.0171.0190 to i64
  %i.jz = sub i64 %.sroa.11.0188, %i.jy
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0190, i64 noundef %i.jz) #33
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

bb.bc:                                            ; preds = %._crit_edge
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i169 = icmp eq ptr %.sroa.0171.0190, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kb = ptrtoint ptr %.sroa.0171.0190 to i64
  %i.kc = sub i64 %.sroa.11.0188, %i.kb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0190, i64 noundef %i.kc) #33
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit170:             ; preds = %bb.bd, %bb.bc
  resume { ptr, i32 } %i.ka

bb.be:                                            ; preds = %bb.ax
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1379, ptr noundef nonnull @.str.88) #34
  unreachable

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.bb, %bb.ba, %bb.ay, %_ZNK7gguf_kv7get_valIhEERKT_m.exit, %_ZNK7gguf_kv7get_valIaEERKT_m.exit, %_ZNK7gguf_kv7get_valItEERKT_m.exit, %_ZNK7gguf_kv7get_valIsEERKT_m.exit, %_ZNK7gguf_kv7get_valIjEERKT_m.exit, %_ZNK7gguf_kv7get_valIiEERKT_m.exit, %_ZNK7gguf_kv7get_valIfEERKT_m.exit, %_ZNK7gguf_kv7get_valImEERKT_m.exit, %_ZNK7gguf_kv7get_valIlEERKT_m.exit, %_ZNK7gguf_kv7get_valIdEERKT_m.exit, %_ZNK7gguf_kv7get_valIbEERKT_m.exit, %_ZNK7gguf_kv7get_valINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_m.exit
  %i.kd = add nuw nsw i64 %.064177, 1             ; 2 uses
  %exitcond181.not = icmp eq i64 %i.kd, %i.i
  br i1 %exitcond181.not, label %._crit_edge180, label %.lr.ph179, !llvm.loop !747
}

; Function Attrs: mustprogress uwtable
define void @gguf_add_tensor(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.0 = alloca %struct.ggml_tensor, align 8  ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1387, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.89) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112  ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %gguf_get_tensor_name.exit.preheader.i, label %.loopexit

gguf_get_tensor_name.exit.preheader.i:            ; preds = %bb.c
  %i.j = udiv exact i64 %i.h, 344
  br label %gguf_get_tensor_name.exit.i

gguf_get_tensor_name.exit.i:                      ; preds = %bb.d, %gguf_get_tensor_name.exit.preheader.i
  %.09.i = phi i64 [ %i.o, %bb.d ], [ 0, %gguf_get_tensor_name.exit.preheader.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [344 x i8], ptr %i.e, i64 %.09.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.m = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.l) #29
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %gguf_find_tensor.exit, label %bb.d

bb.d:                                             ; preds = %gguf_get_tensor_name.exit.i
  %i.o = add nuw nsw i64 %.09.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.j
  br i1 %exitcond.not.i, label %.loopexit, label %gguf_get_tensor_name.exit.i, !llvm.loop !19

gguf_find_tensor.exit:                            ; preds = %gguf_get_tensor_name.exit.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.15, i32 noundef 1389, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.a) #34
  unreachable

.loopexit:                                        ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(336) %1, i64 336, i1 false), !tbaa.struct !752
  %i.p = icmp eq ptr %i.e, %i.d
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -344
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !114
  %i.t = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !63   ; 2 uses
  %i.w = add i64 %i.t, -1
  %i.x = add i64 %i.w, %i.v
  %i.y = sub i64 0, %i.v
  %i.z = and i64 %i.x, %i.y
  %i.aa = add i64 %i.z, %i.s
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !112
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %i.ab = phi ptr [ %.pre, %bb.e ], [ %i.d, %.loopexit ] ; 4 uses
  %i.ac = phi i64 [ %i.aa, %bb.e ], [ 0, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %.not.i = icmp eq ptr %i.ab, %i.ae
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.ab, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, i64 336, i1 false), !tbaa.struct !171
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 344
  store ptr %i.ag, ptr %i.c, align 8, !tbaa !112
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !74  ; 4 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775680
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #34
  unreachable

_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.am = sdiv exact i64 %i.ak, 344               ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 26812128014112720)
  %i.aq = select i1 %i.ao, i64 26812128014112720, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = mul nuw nsw i64 %i.aq, 344
  %i.as = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.at, ptr noundef nonnull align 8 dereferenceable(336) %.sroa.0, i64 336, i1 false), !tbaa.struct !171
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.at, i64 336
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !81
  %i.au = icmp sgt i64 %i.ak, 0
  br i1 %i.au, label %bb.j, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorI16gguf_tensor_infoSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 344
  %.not.i17.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ak) #33
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.as, ptr %i.b, align 8, !tbaa !74
  store ptr %i.av, ptr %i.c, align 8, !tbaa !112
  %i.aw = getelementptr inbounds nuw [344 x i8], ptr %i.as, i64 %i.aq
  store ptr %i.aw, ptr %i.ad, align 8, !tbaa !75
  br label %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.g, %_ZNSt6vectorI16gguf_tensor_infoSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @gguf_set_tensor_type(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %gguf_get_tensor_name.exit.preheader.i, label %.loopexit

gguf_get_tensor_name.exit.preheader.i:            ; preds = %bb.a
  %i.i = udiv exact i64 %i.g, 344
  br label %gguf_get_tensor_name.exit.i

gguf_get_tensor_name.exit.i:                      ; preds = %bb.b, %gguf_get_tensor_name.exit.preheader.i
  %.09.i = phi i64 [ %i.n, %bb.b ], [ 0, %gguf_get_tensor_name.exit.preheader.i ] ; 5 uses
  %i.j = getelementptr inbounds nuw [344 x i8], ptr %i.d, i64 %.09.i ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.l = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.k) #29
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %gguf_find_tensor.exit, label %bb.b

end_hunk_1
