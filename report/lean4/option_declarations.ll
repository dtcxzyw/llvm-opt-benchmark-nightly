Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/option_declarations?download=true
inline.NumInlined: 418
inline.NumDeleted: 180
begin_hunk_0
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTVN4lean19unreachable_reachedE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean19unreachable_reachedE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean19unreachable_reachedD0Ev, ptr @_ZNK4lean19unreachable_reached4whatEv] }, comdat, align 8
@_ZTVN4lean9exceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean9exceptionE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean9exceptionD0Ev, ptr @_ZNK4lean9throwable4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"'unreachable' code was reached\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN4lean23get_option_declarationsEv(ptr dead_on_unwind noalias writable sret(%"class.lean::rb_map") align 8 initializes((0, 8)) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair", align 8        ; 9 uses
  %2 = alloca %"class.lean::array_ref", align 8   ; 7 uses
  %3 = alloca %"class.lean::object_ref", align 8  ; 5 uses
  %4 = alloca %"class.lean::data_value", align 8  ; 5 uses
  %5 = alloca %"class.lean::string_ref", align 8  ; 6 uses
  %6 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %7 = alloca %"class.lean::option_declaration", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = tail call ptr @lean_get_option_decls_array()
  call void @_ZN4lean13get_io_resultINS_9array_refINS_8pair_refINS_4nameENS_10object_refEEEEEEET_P11lean_object(ptr dead_on_unwind nonnull writable sret(%"class.lean::array_ref") align 8 %2, ptr noundef %i.a)
  store ptr null, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %2, align 8, !tbaa !15, !noalias !54 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val.i.i.i = load i64, ptr %i.d, align 8, !tbaa !17, !noalias !55 ; 2 uses
  %.idx = shl nuw nsw i64 %.val.i.i.i, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not51 = icmp eq i64 %.val.i.i.i, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZN4lean10object_refD2Ev.exit46
  %.pre = load ptr, ptr %2, align 8, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = and i64 %i.l, 1
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4lean10object_refD2Ev.exit

bb.b:                                             ; preds = %._crit_edge
  %i.n = load i32, ptr %i.k, align 4, !tbaa !19   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.k)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #18
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.g:                                             ; preds = %.lr.ph, %_ZN4lean10object_refD2Ev.exit46
  %.sroa.047.052 = phi ptr [ %i.c, %.lr.ph ], [ %i.cv, %_ZN4lean10object_refD2Ev.exit46 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.s = load ptr, ptr %.sroa.047.052, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 10 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !15
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 1
  %.not.i.i.i26 = icmp eq i64 %i.w, 0             ; 2 uses
  br i1 %.not.i.i.i26, label %bb.h, label %_ZN4lean10object_refC2ERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !19 ; 3 uses
  %i.x = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.x, label %bb.i, label %bb.j, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.y, ptr %i.u, align 4, !tbaa !19
  br label %_ZN4lean10object_refC2ERKS0_.exit

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4lean10object_refC2ERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = atomicrmw add ptr %i.u, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10object_refC2ERKS0_.exit

_ZN4lean10object_refC2ERKS0_.exit:                ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15 ; 13 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !15
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = and i64 %i.ac, 1
  %.not.i.i.i.i27 = icmp eq i64 %i.ad, 0          ; 3 uses
  br i1 %.not.i.i.i.i27, label %bb.l, label %_ZN4lean10data_valueC2ERKS0_.exit

bb.l:                                             ; preds = %_ZN4lean10object_refC2ERKS0_.exit
  %.val.i.i.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !19 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.af = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.af, ptr %i.ab, align 4, !tbaa !19
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = atomicrmw add ptr %i.ab, i32 -1 monotonic, align 4 ; 0 uses
  br label %bb.p

_ZN4lean10data_valueC2ERKS0_.exit:                ; preds = %_ZN4lean10object_refC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %.val.i.i.i.i29 = load i32, ptr %i.ab, align 4, !tbaa !19 ; 3 uses
  %i.ah = icmp sgt i32 %.val.i.i.i.i29, 0
  br i1 %i.ah, label %bb.q, label %bb.r, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.ai = add nuw i32 %.val.i.i.i.i29, 1
  store i32 %i.ai, ptr %i.ab, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.r:                                             ; preds = %bb.p
  %.not.i.i.i.i30 = icmp eq i32 %.val.i.i.i.i29, 0
  br i1 %.not.i.i.i.i30, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = atomicrmw add ptr %i.ab, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %_ZN4lean10data_valueC2ERKS0_.exit, %bb.s, %bb.r, %bb.q
  %i.ak = invoke ptr @lean_data_value_to_string(ptr noundef %i.ab)
          to label %bb.t unwind label %bb.bi      ; 6 uses

bb.t:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  store ptr %i.ak, ptr %5, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15 ; 9 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !15
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i.i.i.i31 = icmp eq i64 %i.ao, 0          ; 2 uses
  br i1 %.not.i.i.i.i31, label %bb.u, label %_ZN4lean10string_refC2ERKS0_.exit

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i32 = load i32, ptr %i.am, align 4, !tbaa !19 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i.i.i.i32, 0
  br i1 %i.ap, label %bb.v, label %bb.w, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.aq = add nuw i32 %.val.i.i.i.i.i32, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !19
  br label %_ZN4lean10string_refC2ERKS0_.exit

bb.w:                                             ; preds = %bb.u
  %.not.i.i.i.i.i33 = icmp eq i32 %.val.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i.i33, label %_ZN4lean10string_refC2ERKS0_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = atomicrmw add ptr %i.am, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean10string_refC2ERKS0_.exit

_ZN4lean10string_refC2ERKS0_.exit:                ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i.i.i.i27, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4lean10string_refC2ERKS0_.exit
  %i.as = lshr i64 %i.ac, 1
  %i.at = trunc i64 %i.as to i32
  br label %bb.aa

bb.z:                                             ; preds = %_ZN4lean10string_refC2ERKS0_.exit
  %i.au = getelementptr i8, ptr %i.ab, i64 7
  %.val.i = load i8, ptr %i.au, align 1
  %8 = zext i8 %.val.i to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.0.i = phi i32 [ %i.at, %bb.y ], [ %8, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.av = load ptr, ptr %.sroa.047.052, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  invoke void @_ZN4lean18option_declarationC2ERKNS_4nameENS_15data_value_kindEPKcS6_(ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %.0.i, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay)
          to label %bb.ab unwind label %bb.bj

bb.ab:                                            ; preds = %bb.aa
  %i.az = load ptr, ptr %.sroa.047.052, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15, !noalias !58 ; 5 uses
  store ptr %i.bb, ptr %1, align 8, !tbaa !15, !alias.scope !58
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ac, label %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bb, align 4, !tbaa !19, !noalias !58 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.be, label %bb.ad, label %bb.ae, !prof !20

bb.ad:                                            ; preds = %bb.ac
  %i.bf = add nuw i32 %.val.i.i.i.i.i.i.i.i.i, 1
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !19, !noalias !58
  br label %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = atomicrmw add ptr %i.bb, i32 -1 monotonic, align 4, !noalias !58 ; 0 uses
  br label %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i

_ZN4lean4nameC2ERKS0_.exit.i.i.i.i:               ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  invoke void @_ZN4lean18option_declarationC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %_ZN4lean7mk_pairINS_4nameENS_18option_declarationEEESt4pairIT_T0_ERKS4_RKS5_.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(88) %1) #17
  br label %.body

_ZN4lean7mk_pairINS_4nameENS_18option_declarationEEESt4pairIT_T0_ERKS4_RKS5_.exit.i: ; preds = %_ZN4lean4nameC2ERKS0_.exit.i.i.i.i
  invoke void @_ZN4lean7rb_treeISt4pairINS_4nameENS_18option_declarationEENS_6rb_mapIS2_S3_NS_14name_quick_cmpEE9entry_cmpEE6insertERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %_ZN4lean7mk_pairINS_4nameENS_18option_declarationEEESt4pairIT_T0_ERKS4_RKS5_.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4lean4nameENS0_18option_declarationEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %.body

bb.ai:                                            ; preds = %_ZN4lean7mk_pairINS_4nameENS_18option_declarationEEESt4pairIT_T0_ERKS4_RKS5_.exit.i
  call void @_ZNSt4pairIN4lean4nameENS0_18option_declarationEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.h
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.j
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !25
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.br = load ptr, ptr %7, align 8, !tbaa !15    ; 4 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i.i.i.i34 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i.i34, label %bb.aj, label %_ZN4lean18option_declarationD2Ev.exit

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !19 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !19
  br label %_ZN4lean18option_declarationD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %.not.i1.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean18option_declarationD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.br)
          to label %_ZN4lean18option_declarationD2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #18
  unreachable

_ZN4lean18option_declarationD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not.i.i.i.i31, label %bb.ao, label %_ZN4lean10object_refD2Ev.exit37

bb.ao:                                            ; preds = %_ZN4lean18option_declarationD2Ev.exit
  %i.bz = load i32, ptr %i.am, align 4, !tbaa !19 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.ap, label %bb.aq, !prof !20

bb.ap:                                            ; preds = %bb.ao
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.am, align 4, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit37

bb.aq:                                            ; preds = %bb.ao
  %.not.i1.i.i36 = icmp eq i32 %i.bz, 0
  br i1 %.not.i1.i.i36, label %_ZN4lean10object_refD2Ev.exit37, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.am)
          to label %_ZN4lean10object_refD2Ev.exit37 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #18
  unreachable

_ZN4lean10object_refD2Ev.exit37:                  ; preds = %_ZN4lean18option_declarationD2Ev.exit, %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ce = ptrtoint ptr %i.ak to i64
  %i.cf = and i64 %i.ce, 1
  %.not.i.i.i38 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i38, label %bb.at, label %_ZN4lean10object_refD2Ev.exit40

bb.at:                                            ; preds = %_ZN4lean10object_refD2Ev.exit37
  %i.cg = load i32, ptr %i.ak, align 4, !tbaa !19 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.au, label %bb.av, !prof !20

bb.au:                                            ; preds = %bb.at
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.ak, align 4, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit40

bb.av:                                            ; preds = %bb.at
  %.not.i1.i.i39 = icmp eq i32 %i.cg, 0
  br i1 %.not.i1.i.i39, label %_ZN4lean10object_refD2Ev.exit40, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ak)
          to label %_ZN4lean10object_refD2Ev.exit40 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #18
  unreachable

_ZN4lean10object_refD2Ev.exit40:                  ; preds = %_ZN4lean10object_refD2Ev.exit37, %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br i1 %.not.i.i.i.i27, label %bb.ay, label %_ZN4lean10object_refD2Ev.exit43

bb.ay:                                            ; preds = %_ZN4lean10object_refD2Ev.exit40
  %i.cl = load i32, ptr %i.ab, align 4, !tbaa !19 ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.az, label %bb.ba, !prof !20

bb.az:                                            ; preds = %bb.ay
  %i.cn = add nsw i32 %i.cl, -1
  store i32 %i.cn, ptr %i.ab, align 4, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit43

bb.ba:                                            ; preds = %bb.ay
  %.not.i1.i.i42 = icmp eq i32 %i.cl, 0
  br i1 %.not.i1.i.i42, label %_ZN4lean10object_refD2Ev.exit43, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.ab)
          to label %_ZN4lean10object_refD2Ev.exit43 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #18
  unreachable

_ZN4lean10object_refD2Ev.exit43:                  ; preds = %_ZN4lean10object_refD2Ev.exit40, %bb.az, %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.not.i.i.i26, label %bb.bd, label %_ZN4lean10object_refD2Ev.exit46

bb.bd:                                            ; preds = %_ZN4lean10object_refD2Ev.exit43
  %i.cq = load i32, ptr %i.u, align 8, !tbaa !19  ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.be, label %bb.bf, !prof !20

bb.be:                                            ; preds = %bb.bd
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.u, align 8, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit46

bb.bf:                                            ; preds = %bb.bd
  %.not.i1.i.i45 = icmp eq i32 %i.cq, 0
  br i1 %.not.i1.i.i45, label %_ZN4lean10object_refD2Ev.exit46, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.u)
          to label %_ZN4lean10object_refD2Ev.exit46 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #18
  unreachable

_ZN4lean10object_refD2Ev.exit46:                  ; preds = %_ZN4lean10object_refD2Ev.exit43, %bb.be, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.047.052, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.g

bb.bi:                                            ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bj:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.body:                                            ; preds = %bb.ag, %bb.ah
  %eh.lpad-body = phi { ptr, i32 } [ %i.bi, %bb.ah ], [ %i.bh, %bb.ag ]
  call void @_ZN4lean18option_declarationD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #17
  br label %bb.bk

bb.bk:                                            ; preds = %.body, %bb.bj
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cx, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bk ], [ %i.cw, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN4lean7rb_treeISt4pairINS_4nameENS_18option_declarationEENS_6rb_mapIS2_S3_NS_14name_quick_cmpEE9entry_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean13get_io_resultINS_9array_refINS_8pair_refINS_4nameENS_10object_refEEEEEEET_P11lean_object(ptr dead_on_unwind noalias writable sret(%"class.lean::array_ref") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %1, i64 7
  %.val.i = load i8, ptr %i.a, align 1
  %i.b = icmp eq i8 %.val.i, 1
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val.i16 = load ptr, ptr %i.c, align 8, !tbaa !26 ; 10 uses
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %.val.i16 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i16, align 4, !tbaa !19 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i16, align 4, !tbaa !19
  br label %_ZN4lean3incEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %.val.i16, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit

_ZN4lean3incEP11lean_object.exit:                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZN4lean3decEP11lean_object(ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.i = tail call ptr @lean_io_error_to_string(ptr noundef %.val.i16)
  store ptr %i.i, ptr %2, align 8, !tbaa !15
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNK4lean10string_ref13to_std_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4lean3incEP11lean_object.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.j, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #20
          to label %bb.v unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4lean3incEP11lean_object.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn22 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn21 = phi { ptr, i32 } [ %.pn22, %bb.j ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.u

bb.l:                                             ; preds = %bb.a
  store ptr %.val.i16, ptr %0, align 8, !tbaa !15
  %i.r = ptrtoint ptr %.val.i16 to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i = load i32, ptr %.val.i16, align 4, !tbaa !19 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.t, label %bb.n, label %bb.o, !prof !20

bb.n:                                             ; preds = %bb.m
  %i.u = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.u, ptr %.val.i16, align 4, !tbaa !19
  br label %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = atomicrmw add ptr %.val.i16, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit

_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.w = load i32, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.q, label %bb.r, !prof !20

bb.q:                                             ; preds = %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %1, align 8, !tbaa !19
  br label %_ZN4lean3decEP11lean_object.exit

bb.r:                                             ; preds = %_ZN4lean9array_refINS_8pair_refINS_4nameENS_10object_refEEEEC2EP11lean_objectb.exit
  %.not.i1.i = icmp eq i32 %i.w, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %1)
          to label %_ZN4lean3decEP11lean_object.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  br label %bb.u

_ZN4lean3decEP11lean_object.exit:                 ; preds = %bb.r, %bb.q, %bb.s
  ret void

bb.u:                                             ; preds = %bb.t, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn21, %bb.k ], [ %i.z, %bb.t ]
  resume { ptr, i32 } %.pn.pn

bb.v:                                             ; preds = %bb.h
  unreachable
}

declare ptr @lean_get_option_decls_array() local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @lean_data_value_to_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean18option_declarationC2ERKNS_4nameENS_15data_value_kindEPKcS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !15
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean4nameC2ERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i.i.i = load i32, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i.i.i.i, 0
  br i1 %i.d, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %.val.i.i.i.i.i, 1
  store i32 %i.e, ptr %i.a, align 4, !tbaa !19
  br label %_ZN4lean4nameC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4lean4nameC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = atomicrmw add ptr %i.a, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean4nameC2ERKS0_.exit

_ZN4lean4nameC2ERKS0_.exit:                       ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.g, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4lean4nameC2ERKS0_.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #20
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN4lean4nameC2ERKS0_.exit
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17 ; 8 uses
  %i.l = icmp ugt i64 %i.k, 15
end_hunk_0
begin_hunk_1_@_ZN4lean15register_optionERKNS_4nameES2_NS_15data_value_kindEPKcS5_:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean8mk_cnstrEjRKNS_10object_refES2_S2_S2_S2_j(ptr dead_on_unwind noalias writable sret(%"class.lean::object_ref") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = add i32 %7, 48                           ; 2 uses
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = and i64 %i.b, 4294967288
  %i.d = and i64 %i.b, 7
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not.i.i.i.i, i64 0, i64 8
  %i.f = add nuw nsw i64 %i.e, %i.c               ; 2 uses
  tail call void @lean_inc_heartbeat()
  %i.g = and i64 %i.f, 4294967288                 ; 2 uses
  %i.h = tail call noalias ptr @mi_malloc_small(i64 noundef %i.g) #17 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %_ZL23lean_alloc_small_objectj.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #20
  unreachable

_ZL23lean_alloc_small_objectj.exit.i.i.i:         ; preds = %bb.a
  %i.j = trunc i64 %i.f to i32                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.j, 65528                      ; 2 uses
  %i.n = and i32 %i.l, -65536
  %i.o = or disjoint i32 %i.n, %i.m
  store i32 %i.o, ptr %i.k, align 4
  %i.p = icmp ult i32 %i.a, %i.j
  br i1 %i.p, label %bb.c, label %_ZN4lean11alloc_cnstrEjjj.exit

bb.c:                                             ; preds = %_ZL23lean_alloc_small_objectj.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  store i64 0, ptr %i.r, align 8, !tbaa !17
  %.pre.i.i = load i32, ptr %i.k, align 4
  %i.s = and i32 %.pre.i.i, 65535
  br label %_ZN4lean11alloc_cnstrEjjj.exit

_ZN4lean11alloc_cnstrEjjj.exit:                   ; preds = %_ZL23lean_alloc_small_objectj.exit.i.i.i, %bb.c
  %i.t = phi i32 [ %i.m, %_ZL23lean_alloc_small_objectj.exit.i.i.i ], [ %i.s, %bb.c ]
  store i32 1, ptr %i.h, align 4, !tbaa !19
  %i.u = shl i32 %1, 24
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, 327680
  store i32 %i.w, ptr %i.k, align 4
  %i.x = load ptr, ptr %2, align 8, !tbaa !15     ; 7 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, 1
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.d:                                             ; preds = %_ZN4lean11alloc_cnstrEjjj.exit
  %.val.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !19 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.aa, label %bb.e, label %bb.f, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

bb.f:                                             ; preds = %bb.d
  %.not.i.i.i.i12 = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i12, label %_ZNK4lean10object_ref10to_obj_argEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = atomicrmw add ptr %i.x, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit

_ZNK4lean10object_ref10to_obj_argEv.exit:         ; preds = %_ZN4lean11alloc_cnstrEjjj.exit, %bb.e, %bb.f, %bb.g
  %i.ad = phi ptr [ %i.x, %_ZN4lean11alloc_cnstrEjjj.exit ], [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %.pre.i, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = load ptr, ptr %3, align 8, !tbaa !15    ; 7 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i.i.i13 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i13, label %bb.h, label %_ZNK4lean10object_ref10to_obj_argEv.exit17

bb.h:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit
  %.val.i.i.i.i14 = load i32, ptr %i.af, align 4, !tbaa !19 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i.i.i14, 0
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw i32 %.val.i.i.i.i14, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit17

bb.j:                                             ; preds = %bb.h
  %.not.i.i.i.i15 = icmp eq i32 %.val.i.i.i.i14, 0
  br i1 %.not.i.i.i.i15, label %_ZNK4lean10object_ref10to_obj_argEv.exit17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = atomicrmw add ptr %i.af, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i16 = load ptr, ptr %3, align 8, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit17

_ZNK4lean10object_ref10to_obj_argEv.exit17:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit, %bb.i, %bb.j, %bb.k
  %i.al = phi ptr [ %i.af, %_ZNK4lean10object_ref10to_obj_argEv.exit ], [ %i.af, %bb.i ], [ %i.af, %bb.j ], [ %.pre.i16, %bb.k ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !26
  %i.an = load ptr, ptr %4, align 8, !tbaa !15    ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i.i.i18 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i18, label %bb.l, label %_ZNK4lean10object_ref10to_obj_argEv.exit22

bb.l:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit17
  %.val.i.i.i.i19 = load i32, ptr %i.an, align 4, !tbaa !19 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i.i.i19, 0
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.ar = add nuw i32 %.val.i.i.i.i19, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit22

bb.n:                                             ; preds = %bb.l
  %.not.i.i.i.i20 = icmp eq i32 %.val.i.i.i.i19, 0
  br i1 %.not.i.i.i.i20, label %_ZNK4lean10object_ref10to_obj_argEv.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = atomicrmw add ptr %i.an, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i21 = load ptr, ptr %4, align 8, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit22

_ZNK4lean10object_ref10to_obj_argEv.exit22:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit17, %bb.m, %bb.n, %bb.o
  %i.at = phi ptr [ %i.an, %_ZNK4lean10object_ref10to_obj_argEv.exit17 ], [ %i.an, %bb.m ], [ %i.an, %bb.n ], [ %.pre.i21, %bb.o ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !26
  %i.av = load ptr, ptr %5, align 8, !tbaa !15    ; 7 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 1
  %.not.i.i.i23 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i23, label %bb.p, label %_ZNK4lean10object_ref10to_obj_argEv.exit27

bb.p:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit22
  %.val.i.i.i.i24 = load i32, ptr %i.av, align 4, !tbaa !19 ; 3 uses
  %i.ay = icmp sgt i32 %.val.i.i.i.i24, 0
  br i1 %i.ay, label %bb.q, label %bb.r, !prof !20

bb.q:                                             ; preds = %bb.p
  %i.az = add nuw i32 %.val.i.i.i.i24, 1
  store i32 %i.az, ptr %i.av, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit27

bb.r:                                             ; preds = %bb.p
  %.not.i.i.i.i25 = icmp eq i32 %.val.i.i.i.i24, 0
  br i1 %.not.i.i.i.i25, label %_ZNK4lean10object_ref10to_obj_argEv.exit27, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = atomicrmw add ptr %i.av, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i26 = load ptr, ptr %5, align 8, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit27

_ZNK4lean10object_ref10to_obj_argEv.exit27:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit22, %bb.q, %bb.r, %bb.s
  %i.bb = phi ptr [ %i.av, %_ZNK4lean10object_ref10to_obj_argEv.exit22 ], [ %i.av, %bb.q ], [ %i.av, %bb.r ], [ %.pre.i26, %bb.s ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !26
  %i.bd = load ptr, ptr %6, align 8, !tbaa !15    ; 7 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, 1
  %.not.i.i.i28 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i28, label %bb.t, label %_ZNK4lean10object_ref10to_obj_argEv.exit32

bb.t:                                             ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit27
  %.val.i.i.i.i29 = load i32, ptr %i.bd, align 4, !tbaa !19 ; 3 uses
  %i.bg = icmp sgt i32 %.val.i.i.i.i29, 0
  br i1 %i.bg, label %bb.u, label %bb.v, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.bh = add nuw i32 %.val.i.i.i.i29, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !19
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit32

bb.v:                                             ; preds = %bb.t
  %.not.i.i.i.i30 = icmp eq i32 %.val.i.i.i.i29, 0
  br i1 %.not.i.i.i.i30, label %_ZNK4lean10object_ref10to_obj_argEv.exit32, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = atomicrmw add ptr %i.bd, i32 -1 monotonic, align 4 ; 0 uses
  %.pre.i31 = load ptr, ptr %6, align 8, !tbaa !15
  br label %_ZNK4lean10object_ref10to_obj_argEv.exit32

_ZNK4lean10object_ref10to_obj_argEv.exit32:       ; preds = %_ZNK4lean10object_ref10to_obj_argEv.exit27, %bb.u, %bb.v, %bb.w
  %i.bj = phi ptr [ %i.bd, %_ZNK4lean10object_ref10to_obj_argEv.exit27 ], [ %i.bd, %bb.u ], [ %i.bd, %bb.v ], [ %.pre.i31, %bb.w ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !26
  store ptr %i.h, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean17consume_io_resultEP11lean_object(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.lean::string_ref", align 8  ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 7
  %.val.i = load i8, ptr %i.a, align 1
  %i.b = icmp eq i8 %.val.i, 1
  br i1 %i.b, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val.i11 = load ptr, ptr %i.c, align 8, !tbaa !26 ; 5 uses
  %i.d = ptrtoint ptr %.val.i11 to i64
  %i.e = and i64 %i.d, 1
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4lean3incEP11lean_object.exit

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load i32, ptr %.val.i11, align 4, !tbaa !19 ; 3 uses
  %i.f = icmp sgt i32 %.val.i.i.i, 0
  br i1 %i.f, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %.val.i.i.i, 1
  store i32 %i.g, ptr %.val.i11, align 4, !tbaa !19
  br label %_ZN4lean3incEP11lean_object.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4lean3incEP11lean_object.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %.val.i11, i32 -1 monotonic, align 4 ; 0 uses
  br label %_ZN4lean3incEP11lean_object.exit

_ZN4lean3incEP11lean_object.exit:                 ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  tail call void @_ZN4lean3decEP11lean_object(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.i = tail call ptr @lean_io_error_to_string(ptr noundef %.val.i11)
  store ptr %i.i, ptr %1, align 8, !tbaa !15
  %i.j = tail call ptr @__cxa_allocate_exception(i64 40) #17 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNK4lean10string_ref13to_std_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %_ZN4lean3incEP11lean_object.exit
  invoke void @_ZN4lean9throwableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %i.j, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #20
          to label %bb.p unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN4lean3incEP11lean_object.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]  ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn16 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %.pn16, %bb.j ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN4lean10object_refD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %.pn15

3:                                                ; preds = %bb.a
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 1
  %.not.i.i12 = icmp eq i64 %5, 0
  br i1 %.not.i.i12, label %bb.l, label %_ZN4lean3decEP11lean_object.exit

bb.l:                                             ; preds = %3
  %i.r = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !20

bb.m:                                             ; preds = %bb.l
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %0, align 4, !tbaa !19
  br label %_ZN4lean3decEP11lean_object.exit

bb.n:                                             ; preds = %bb.l
  %.not.i1.i = icmp eq i32 %i.r, 0
  br i1 %.not.i1.i, label %_ZN4lean3decEP11lean_object.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZN4lean3decEP11lean_object.exit

_ZN4lean3decEP11lean_object.exit:                 ; preds = %3, %bb.m, %bb.n, %bb.o
  ret void

bb.p:                                             ; preds = %bb.h
  unreachable
}

declare ptr @lean_register_option(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean3decEP11lean_object(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 1
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZL8lean_decP11lean_object.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %i.c, -1
  store i32 %i.e, ptr %0, align 4, !tbaa !19
  br label %_ZL8lean_decP11lean_object.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1 = icmp eq i32 %i.c, 0
  br i1 %.not.i1, label %_ZL8lean_decP11lean_object.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0)
  br label %_ZL8lean_decP11lean_object.exit

_ZL8lean_decP11lean_object.exit:                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

declare void @lean_dec_ref_cold(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean7rb_treeISt4pairINS_4nameENS_18option_declarationEENS_6rb_mapIS2_S3_NS_14name_quick_cmpEE9entry_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %common.ret1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.c = atomicrmw add ptr %i.b, i32 -1 acq_rel, align 4
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %common.ret1

common.ret1:                                      ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZNSt4pairIN4lean4nameENS0_18option_declarationEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #17, !inline_history !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZN4lean7rb_treeISt4pairINS_4nameENS_18option_declarationEENS_6rb_mapIS2_S3_NS_14name_quick_cmpEE9entry_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #17, !inline_history !69
  tail call void @_ZN4lean7rb_treeISt4pairINS_4nameENS_18option_declarationEENS_6rb_mapIS2_S3_NS_14name_quick_cmpEE9entry_cmpEE4nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(112) %i.a) #17, !inline_history !69
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 noundef 112) #19, !inline_history !70
  br label %common.ret1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIN4lean4nameENS0_18option_declarationEED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !25
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN4lean18option_declarationD2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i32, ptr %i.n, align 4, !tbaa !19   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.q, -1
  store i32 %i.s, ptr %i.n, align 4, !tbaa !19
  br label %_ZN4lean18option_declarationD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %.not.i1.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i1.i.i.i, label %_ZN4lean18option_declarationD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.n)
          to label %_ZN4lean18option_declarationD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #18
  unreachable

_ZN4lean18option_declarationD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %bb.c, %bb.d, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 1
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %bb.g, label %_ZN4lean10object_refD2Ev.exit

bb.g:                                             ; preds = %_ZN4lean18option_declarationD2Ev.exit
  %i.y = load i32, ptr %i.v, align 4, !tbaa !19   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.y, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !19
  br label %_ZN4lean10object_refD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %.not.i1.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i1.i.i, label %_ZN4lean10object_refD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @lean_dec_ref_cold(ptr noundef nonnull %i.v)
          to label %_ZN4lean10object_refD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #18
  unreachable

_ZN4lean10object_refD2Ev.exit:                    ; preds = %_ZN4lean18option_declarationD2Ev.exit, %bb.h, %bb.i, %bb.j
  ret void
}

declare void @_ZN4lean8mk_cnstrEjjPP11lean_objectj(ptr dead_on_unwind writable sret(%"class.lean::object_ref") align 8, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lean_mk_string(ptr noundef) local_unnamed_addr #2
end_hunk_1
