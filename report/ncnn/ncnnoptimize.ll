Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_:bb.a
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %1) #26
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !58
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #30
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4ncnn9ParamDict4typeEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef) local_unnamed_addr #2

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  tail call void @_ZdlPv(ptr noundef %i.f) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !798

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11NetOptimizeC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN11ModelWriterC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV11NetOptimize, i64 16), ptr %0, align 8, !tbaa !28
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11NetOptimizeD0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn3NetD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #25
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize20fuse_batchnorm_scaleEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not74 = icmp eq ptr %i.d, %i.e
  br i1 %.not74, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge73:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph72, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.05370 = phi i64 [ 0, %.lr.ph72 ], [ %i.fq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05370
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 9
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8245895652990804290
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = xor i64 %i.x, 109
  %i.z = or i64 %i.u, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not60 = icmp eq i32 %i.ab, 0
  br i1 %.not60, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %.05262 = add nuw i64 %.05370, 1                ; 3 uses
  %i.af = icmp ult i64 %.05262, %i.i
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread
  %.05263 = phi i64 [ %.052, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread ], [ %.05262, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05263
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = icmp eq i64 %i.aj, 5
  br i1 %i.ak, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57: ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = xor i32 %i.an, 1818321747
  %i.ap = getelementptr i8, ptr %i.am, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = xor i32 %i.ar, 101
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %.not61 = icmp eq i32 %i.av, 0
  br i1 %.not61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread59, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread59: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not = icmp eq i64 %i.bc, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread59
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !81
  %i.be = icmp eq i32 %i.bd, %i.ae
  br i1 %i.be, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread59, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57
  %.052 = add nuw i64 %.05263, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.052, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !799

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %.052.lcssa = phi i64 [ %.05262, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58 ], [ %.05263, %bb.c ] ; 2 uses
  %i.bf = icmp eq i64 %.052.lcssa, %i.i
  br i1 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.052.lcssa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 7 uses
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.166, ptr noundef %i.bk, ptr noundef %i.bm) #27 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !131 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79 ; 15 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !79 ; 15 uses
  %i.bu = icmp sgt i32 %i.bp, 0
  br i1 %i.bu, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %bb.d
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 216
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 14 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 212
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !203
  %.not55 = icmp eq i32 %i.by, 0
  br i1 %.not55, label %.lr.ph68.split.us.preheader, label %.lr.ph68.split

.lr.ph68.split.us.preheader:                      ; preds = %.lr.ph68
  %wide.trip.count81 = zext nneg i32 %i.bp to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.bp, 8
  br i1 %min.iters.check, label %.lr.ph68.split.us.preheader142, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph68.split.us.preheader
  %i.bz = shl nuw nsw i64 %wide.trip.count81, 2   ; 3 uses
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.bz ; 2 uses
  %scevgep91 = getelementptr i8, ptr %i.bt, i64 %i.bz ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.bw, i64 %i.bz ; 2 uses
  %bound0 = icmp ult ptr %i.br, %scevgep91
  %bound1 = icmp ult ptr %i.bt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %i.br, %scevgep92
  %bound194 = icmp ult ptr %i.bw, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  %bound096 = icmp ult ptr %i.bt, %scevgep92
  %bound197 = icmp ult ptr %i.bw, %scevgep91
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx, %found.conflict98
  br i1 %conflict.rdx99, label %.lr.ph68.split.us.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count81, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ca, align 4, !tbaa !90, !alias.scope !814, !noalias !815
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index
  %wide.load100 = load <4 x float>, ptr %i.cb, align 4, !tbaa !90, !alias.scope !816 ; 2 uses
  %i.cc = fmul <4 x float> %wide.load, %wide.load100
  store <4 x float> %i.cc, ptr %i.ca, align 4, !tbaa !90, !alias.scope !814, !noalias !815
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index ; 2 uses
  %wide.load101 = load <4 x float>, ptr %i.cd, align 4, !tbaa !90, !alias.scope !817, !noalias !816
  %i.ce = fmul <4 x float> %wide.load101, %wide.load100
  store <4 x float> %i.ce, ptr %i.cd, align 4, !tbaa !90, !alias.scope !817, !noalias !816
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count81
  br i1 %cmp.n, label %._crit_edge69, label %.lr.ph68.split.us.preheader142

.lr.ph68.split.us.preheader142:                   ; preds = %vector.memcheck, %.lr.ph68.split.us.preheader, %middle.block
  %indvars.iv78.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph68.split.us.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter145 = and i64 %wide.trip.count81, 1
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph68.split.us.prol.loopexit, label %.lr.ph68.split.us.prol

.lr.ph68.split.us.prol:                           ; preds = %.lr.ph68.split.us.preheader142
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv78.ph ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !90
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv78.ph ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !90
  %i.ck = fmul float %i.ch, %i.cj
  store float %i.ck, ptr %i.cg, align 4, !tbaa !90
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv78.ph ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !90
  %i.cn = load float, ptr %i.ci, align 4, !tbaa !90
  %i.co = fmul float %i.cm, %i.cn
  store float %i.co, ptr %i.cl, align 4, !tbaa !90
  %indvars.iv.next79.prol = or disjoint i64 %indvars.iv78.ph, 1
  br label %.lr.ph68.split.us.prol.loopexit

.lr.ph68.split.us.prol.loopexit:                  ; preds = %.lr.ph68.split.us.prol, %.lr.ph68.split.us.preheader142
  %indvars.iv78.unr = phi i64 [ %indvars.iv78.ph, %.lr.ph68.split.us.preheader142 ], [ %indvars.iv.next79.prol, %.lr.ph68.split.us.prol ]
  %i.cp = add nsw i64 %wide.trip.count81, -1
  %i.cq = icmp eq i64 %indvars.iv78.ph, %i.cp
  br i1 %i.cq, label %._crit_edge69, label %.lr.ph68.split.us

.lr.ph68.split.us:                                ; preds = %.lr.ph68.split.us.prol.loopexit, %.lr.ph68.split.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.1, %.lr.ph68.split.us ], [ %indvars.iv78.unr, %.lr.ph68.split.us.prol.loopexit ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv78 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !90
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv78 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cv = fmul float %i.cs, %i.cu
  store float %i.cv, ptr %i.cr, align 4, !tbaa !90
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv78 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !90
  %i.cy = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cz = fmul float %i.cx, %i.cy
  store float %i.cz, ptr %i.cw, align 4, !tbaa !90
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next79 ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !90
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next79 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !90
  %i.de = fmul float %i.db, %i.dd
  store float %i.de, ptr %i.da, align 4, !tbaa !90
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next79 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !90
  %i.dh = load float, ptr %i.dc, align 4, !tbaa !90
  %i.di = fmul float %i.dg, %i.dh
  store float %i.di, ptr %i.df, align 4, !tbaa !90
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2 ; 2 uses
  %exitcond82.not.1 = icmp eq i64 %indvars.iv.next79.1, %wide.trip.count81
  br i1 %exitcond82.not.1, label %._crit_edge69, label %.lr.ph68.split.us, !llvm.loop !805

.lr.ph68.split:                                   ; preds = %.lr.ph68
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !79 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64   ; 6 uses
  %min.iters.check128 = icmp ult i32 %i.bp, 8
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph68.split
  %i.dl = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep104 = getelementptr i8, ptr %i.br, i64 %i.dl ; 3 uses
  %scevgep105 = getelementptr i8, ptr %i.bt, i64 %i.dl ; 3 uses
  %scevgep106 = getelementptr i8, ptr %i.bw, i64 %i.dl ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.dk, i64 %i.dl ; 2 uses
  %bound0108 = icmp ult ptr %i.br, %scevgep105
  %bound1109 = icmp ult ptr %i.bt, %scevgep104
  %found.conflict110 = and i1 %bound0108, %bound1109
  %bound0111 = icmp ult ptr %i.br, %scevgep106
  %bound1112 = icmp ult ptr %i.bw, %scevgep104
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %found.conflict110, %found.conflict113
  %bound0115 = icmp ult ptr %i.br, %scevgep107
  %bound1116 = icmp ult ptr %i.dk, %scevgep104
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %i.bt, %scevgep106
  %bound1120 = icmp ult ptr %i.bw, %scevgep105
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %i.bt, %scevgep107
  %bound1124 = icmp ult ptr %i.dk, %scevgep105
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  br i1 %conflict.rdx126, label %scalar.ph127.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck103
  %n.vec130 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next138, %vector.body131 ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index132 ; 2 uses
  %wide.load133 = load <4 x float>, ptr %i.dm, align 4, !tbaa !90, !alias.scope !818, !noalias !819
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index132
  %wide.load134 = load <4 x float>, ptr %i.dn, align 4, !tbaa !90, !alias.scope !820 ; 2 uses
  %i.do = fmul <4 x float> %wide.load133, %wide.load134
  store <4 x float> %i.do, ptr %i.dm, align 4, !tbaa !90, !alias.scope !818, !noalias !819
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index132 ; 2 uses
  %wide.load135 = load <4 x float>, ptr %i.dp, align 4, !tbaa !90, !alias.scope !821, !noalias !822
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index132
  %wide.load137 = load <4 x float>, ptr %i.dq, align 4, !tbaa !90, !alias.scope !823
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load135, <4 x float> %wide.load134, <4 x float> %wide.load137)
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !90, !alias.scope !821, !noalias !822
  %index.next138 = add nuw i64 %index132, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next138, %n.vec130
  br i1 %i.ds, label %middle.block139, label %vector.body131, !llvm.loop !811

middle.block139:                                  ; preds = %vector.body131
  %cmp.n140 = icmp eq i64 %n.vec130, %wide.trip.count
  br i1 %cmp.n140, label %._crit_edge69, label %scalar.ph127.preheader

scalar.ph127.preheader:                           ; preds = %vector.memcheck103, %.lr.ph68.split, %middle.block139
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %.lr.ph68.split ], [ %n.vec130, %middle.block139 ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph127.prol.loopexit, label %scalar.ph127.prol

scalar.ph127.prol:                                ; preds = %scalar.ph127.preheader
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.ph ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !90
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.ph ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !90
  %i.dx = fmul float %i.du, %i.dw
  store float %i.dx, ptr %i.dt, align 4, !tbaa !90
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.ph ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !90
  %i.ea = load float, ptr %i.dv, align 4, !tbaa !90
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.ph
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !90
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.ea, float %i.ec)
  store float %i.ed, ptr %i.dy, align 4, !tbaa !90
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph127.prol.loopexit

scalar.ph127.prol.loopexit:                       ; preds = %scalar.ph127.prol, %scalar.ph127.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph127.preheader ], [ %indvars.iv.next.prol, %scalar.ph127.prol ]
  %i.ee = add nsw i64 %wide.trip.count, -1
  %i.ef = icmp eq i64 %indvars.iv.ph, %i.ee
  br i1 %i.ef, label %._crit_edge69, label %scalar.ph127

._crit_edge69:                                    ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127, %.lr.ph68.split.us.prol.loopexit, %.lr.ph68.split.us, %middle.block139, %middle.block, %bb.d
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !80
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !81 ; 2 uses
  %i.ej = load ptr, ptr %i.ac, align 8, !tbaa !80
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !81
  %i.ek = trunc i64 %.05370 to i32
  %i.el = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.em = sext i32 %i.ei to i64
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !51
  %i.eo = getelementptr inbounds nuw [112 x i8], ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i32 %i.ek, ptr %i.ep, align 8, !tbaa !118
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.er = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.es = load i64, ptr %i.er, align 8, !tbaa !58
  %i.et = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.eq, i64 noundef 0, i64 noundef %i.es, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

scalar.ph127:                                     ; preds = %scalar.ph127.prol.loopexit, %scalar.ph127
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph127 ], [ %indvars.iv.unr, %scalar.ph127.prol.loopexit ] ; 6 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !90
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !90
  %i.ey = fmul float %i.ev, %i.ex
  store float %i.ey, ptr %i.eu, align 4, !tbaa !90
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv ; 2 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !90
  %i.fb = load float, ptr %i.ew, align 4, !tbaa !90
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !90
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fb, float %i.fd)
  store float %i.fe, ptr %i.ez, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !90
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !90
  %i.fj = fmul float %i.fg, %i.fi
  store float %i.fj, ptr %i.ff, align 4, !tbaa !90
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !90
  %i.fm = load float, ptr %i.fh, align 4, !tbaa !90
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !90
  %i.fp = tail call float @llvm.fmuladd.f32(float %i.fl, float %i.fm, float %i.fo)
  store float %i.fp, ptr %i.fk, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond77.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond77.not.1, label %._crit_edge69, label %scalar.ph127, !llvm.loop !812

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit57.thread, %bb.b, %._crit_edge69, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fq = add nuw i64 %.05370, 1                  ; 2 uses
  %exitcond83.not = icmp eq i64 %i.fq, %i.i
  br i1 %exitcond83.not, label %._crit_edge73, label %bb.b, !llvm.loop !813
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize26fuse_convolution_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.ii, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 11
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8391732706658905923
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7957695015494119286
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not154 = icmp eq i32 %i.ah, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.al = icmp ult i64 %.084192, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 9
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 8245895652990804290
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 109
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not155 = icmp eq i32 %i.bb, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !80 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.not = icmp eq i64 %i.bi, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bk = icmp eq i32 %i.bj, %i.ak
  br i1 %i.bk, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %.084 = add nuw i64 %.084193, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.084, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !824

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %.084.lcssa = phi i64 [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ], [ %.084193, %bb.c ] ; 2 uses
  %i.bl = icmp eq i64 %.084.lcssa, %i.i
  br i1 %i.bl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084.lcssa
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53 ; 10 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.167, ptr noundef %i.bq, ptr noundef %i.bs) #27 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 212
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !132
  %i.by = sext i32 %i.bv to i64                   ; 2 uses
  %i.bz = icmp slt i32 %i.bv, 0
  br i1 %i.bz, label %.noexc111, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc111:                                        ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i, label %._crit_edge198, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.by, 2                ; 2 uses
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28 ; 5 uses
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !90
  %i.cc = add nsw i64 %i.by, -1                   ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %i.ce = getelementptr i8, ptr %i.cb, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ce, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %.noexc112, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28
          to label %.noexc120 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ; 4 uses

.noexc120:                                        ; preds = %bb.e
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !90
  br i1 %i.cd, label %.lr.ph197, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115: ; preds = %.noexc120
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.idx.i.i.i.i.i.i.i116 = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i116, i1 false), !tbaa !90
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115, %.noexc120
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %bb.f

._crit_edge198:                                   ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0128.0258 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cf, %bb.f ] ; 7 uses
  %.sroa.0134.0144256 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %bb.f ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !142
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge

._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge: ; preds = %._crit_edge198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 424
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %.lr.ph207

_ZNSt6vectorIfSaIfEED2Ev.exit125.thread:          ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph197, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cv = fadd float %i.bx, %i.cu
  %i.cw = call noundef float @sqrtf(float noundef %i.cv) #25 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !90
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !90
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !90
  %i.dd = fmul float %i.da, %i.dc
  %i.de = fdiv float %i.dd, %i.cw
  %i.df = fsub float %i.cy, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  store float %i.df, ptr %i.dg, align 4, !tbaa !90
  %i.dh = load float, ptr %i.cz, align 4, !tbaa !90
  %i.di = fdiv float %i.dh, %i.cw
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !825

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 424 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p
end_hunk_0
begin_hunk_1_@_ZN11NetOptimize26fuse_convolution_batchnormEv:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gx, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %wide.load274 = load <4 x float>, ptr %i.gy, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %i.gz = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load274
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !829

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223.prol ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !90
  %i.hf = fmul float %i.hc, %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !830

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hg = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = call float @llvm.fmuladd.f32(float %i.hj, float %i.hl, float %i.hn)
  store float %i.ho, ptr %i.hi, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !831

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hp = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !90
  %i.hs = fmul float %i.hp, %i.hr
  store float %i.hs, ptr %i.hq, align 4, !tbaa !90
  %i.ht = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !90
  %i.hx = fmul float %i.ht, %i.hw
  store float %i.hx, ptr %i.hv, align 4, !tbaa !90
  %i.hy = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !90
  %i.ic = fmul float %i.hy, %i.ib
  store float %i.ic, ptr %i.ia, align 4, !tbaa !90
  %i.id = load float, ptr %i.gv, align 4, !tbaa !90
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !90
  %i.ih = fmul float %i.id, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !832

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ii = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ii, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !833

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize20fuse_convolution_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not109 = icmp eq ptr %i.d, %i.e
  br i1 %.not109, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge108:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068105 = phi i64 [ 0, %.lr.ph107 ], [ %i.gs, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068105
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 11
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8391732706658905923
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7957695015494119286
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not85 = icmp eq i32 %i.aa, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068105, 1               ; 3 uses
  %i.ae = icmp ult i64 %.06788, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not = icmp eq i64 %i.av, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !81
  %i.ax = icmp eq i32 %i.aw, %i.ad
  br i1 %i.ax, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %.067 = add nuw i64 %.06789, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.067, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !836

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82
  %.067.lcssa = phi i64 [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ %.06789, %bb.c ] ; 4 uses
  %i.ay = icmp eq i64 %.067.lcssa, %i.i
  br i1 %i.ay, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.067.lcssa
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !134
  %.not72 = icmp eq i32 %i.bc, 2
  br i1 %.not72, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 212
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !135
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %.lr.ph93, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph93:                                         ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread
  %.06692 = phi i64 [ 0, %.lr.ph93 ], [ %i.cd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !58
  %i.bk = icmp eq i64 %i.bj, 10
  br i1 %i.bk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81: ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 7008860452498007373
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i64
  %i.bs = xor i64 %i.br, 24948
  %i.bt = or i64 %i.bo, %i.bs
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not87 = icmp eq i32 %i.bv, 0
  br i1 %.not87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !80
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !81
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !81
  %i.cc = icmp eq i32 %i.by, %i.cb
  br i1 %i.cc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.cd = add nuw i64 %.06692, 1                  ; 2 uses
  %exitcond112.not = icmp eq i64 %i.cd, %.067.lcssa
  br i1 %exitcond112.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !837

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84
  %i.ce = icmp eq i64 %.06692, %.067.lcssa
  br i1 %i.ce, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !53 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !141 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !176
  %.not74 = icmp eq i32 %i.ck, %i.ci
  br i1 %.not74, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 212
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !177
  %.not75 = icmp eq i32 %i.cm, 0
  br i1 %.not75, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 220
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !178
  %.not76 = icmp eq i32 %i.co, 0
  br i1 %.not76, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.169, ptr noundef %i.cr, ptr noundef %i.ct) #27 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 260
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !143
  %i.cx = sdiv i32 %i.cw, %i.ci                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 352
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !79 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 424
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79 ; 10 uses
  %i.dc = icmp sgt i32 %i.ci, 0
  br i1 %i.dc, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.j
  %i.dd = icmp sgt i32 %i.cx, 0
  %.not77 = icmp eq ptr %i.db, null               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 232 ; 2 uses
  br i1 %i.dd, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !79 ; 3 uses
  %i.dg = zext nneg i32 %i.cx to i64              ; 7 uses
  %wide.trip.count123 = zext nneg i32 %i.ci to i64 ; 3 uses
  %i.dh = shl nuw nsw i64 %wide.trip.count123, 2
  %i.di = mul nuw i64 %i.dh, %i.dg
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.di
  %i.dj = shl nuw nsw i64 %wide.trip.count123, 2
  %scevgep141 = getelementptr i8, ptr %i.df, i64 %i.dj
  %min.iters.check = icmp ult i32 %i.cx, 8
  %bound0 = icmp ult ptr %i.cz, %scevgep141
  %bound1 = icmp ult ptr %i.df, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  %xtraiter167 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %bb.l, %.lr.ph103.split.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.l ], [ 0, %.lr.ph103.split.us ] ; 4 uses
  %i.dk = mul nuw nsw i64 %indvars.iv120, %i.dg
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv120 ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph99.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !90, !alias.scope !852
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.do, align 4, !tbaa !90, !alias.scope !853, !noalias !852
  %wide.load142 = load <4 x float>, ptr %i.dp, align 4, !tbaa !90, !alias.scope !853, !noalias !852
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat, %wide.load142
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !90, !alias.scope !853, !noalias !852
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !90, !alias.scope !853, !noalias !852
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge100.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph99.us, %middle.block
  %indvars.iv115.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph99.us ] ; 3 uses
  br i1 %lcmp.mod168.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %scalar.ph.prol ], [ %indvars.iv115.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dt = load float, ptr %i.dm, align 4, !tbaa !90
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115.prol ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !90
  %i.dw = fmul float %i.dt, %i.dv
  store float %i.dw, ptr %i.du, align 4, !tbaa !90
  %indvars.iv.next116.prol = add nuw nsw i64 %indvars.iv115.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !842

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph.preheader ], [ %indvars.iv.next116.prol, %scalar.ph.prol ]
  %i.dx = sub nsw i64 %indvars.iv115.ph, %i.dg
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge100.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.3, %scalar.ph ], [ %indvars.iv115.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !90
  %i.ec = fmul float %i.dz, %i.eb
  store float %i.ec, ptr %i.ea, align 4, !tbaa !90
  %i.ed = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !90
  %i.eh = fmul float %i.ed, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !90
  %i.ei = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !90
  %i.em = fmul float %i.ei, %i.el
  store float %i.em, ptr %i.ek, align 4, !tbaa !90
  %i.en = load float, ptr %i.dm, align 4, !tbaa !90
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !90
  %i.er = fmul float %i.en, %i.eq
  store float %i.er, ptr %i.ep, align 4, !tbaa !90
  %indvars.iv.next116.3 = add nuw nsw i64 %indvars.iv115, 4 ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %indvars.iv.next116.3, %i.dg
  br i1 %exitcond119.not.3, label %._crit_edge100.us, label %scalar.ph, !llvm.loop !843

bb.k:                                             ; preds = %._crit_edge100.us
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv120 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !90
  %i.eu = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ev = fmul float %i.et, %i.eu
  store float %i.ev, ptr %i.es, align 4, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge100.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge104, label %.lr.ph99.us, !llvm.loop !844

._crit_edge100.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br i1 %.not77, label %bb.l, label %bb.k

.lr.ph103.split:                                  ; preds = %.lr.ph103
  br i1 %.not77, label %._crit_edge104, label %.lr.ph103.split.split

.lr.ph103.split.split:                            ; preds = %.lr.ph103.split
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !79 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ci to i64   ; 6 uses
  %min.iters.check150 = icmp ult i32 %i.ci, 8
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph103.split.split
  %i.ex = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep144 = getelementptr i8, ptr %i.db, i64 %i.ex
  %scevgep145 = getelementptr i8, ptr %i.ew, i64 %i.ex
  %bound0146 = icmp ult ptr %i.db, %scevgep145
  %bound1147 = icmp ult ptr %i.ew, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck143
  %n.vec152 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index154 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !854, !noalias !855
  %wide.load156 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !854, !noalias !855
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index154 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load157 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90, !alias.scope !855
  %wide.load158 = load <4 x float>, ptr %i.fb, align 4, !tbaa !90, !alias.scope !855
  %i.fc = fmul <4 x float> %wide.load155, %wide.load157
  %i.fd = fmul <4 x float> %wide.load156, %wide.load158
  store <4 x float> %i.fc, ptr %i.ey, align 4, !tbaa !90, !alias.scope !854, !noalias !855
  store <4 x float> %i.fd, ptr %i.ez, align 4, !tbaa !90, !alias.scope !854, !noalias !855
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.fe, label %middle.block160, label %vector.body153, !llvm.loop !848

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %n.vec152, %wide.trip.count
  br i1 %cmp.n161, label %._crit_edge104, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %vector.memcheck143, %.lr.ph103.split.split, %middle.block160
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph103.split.split ], [ %n.vec152, %middle.block160 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol

scalar.ph149.prol:                                ; preds = %scalar.ph149.preheader, %scalar.ph149.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph149.prol ], [ %indvars.iv.ph, %scalar.ph149.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph149.prol ], [ 0, %scalar.ph149.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.prol ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !90
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.prol
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !90
  %i.fj = fmul float %i.fg, %i.fi
  store float %i.fj, ptr %i.ff, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol, !llvm.loop !849

scalar.ph149.prol.loopexit:                       ; preds = %scalar.ph149.prol, %scalar.ph149.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph149.preheader ], [ %indvars.iv.next.prol, %scalar.ph149.prol ]
  %i.fk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %._crit_edge104, label %scalar.ph149

._crit_edge104:                                   ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149, %bb.l, %middle.block160, %.lr.ph103.split, %bb.j
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !80
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !81 ; 2 uses
  %i.fp = load ptr, ptr %i.ab, align 8, !tbaa !80
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !81
  %i.fq = trunc i64 %.068105 to i32
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.fs = sext i32 %i.fo to i64
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw [112 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i32 %i.fq, ptr %i.fv, align 8, !tbaa !118
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.fx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

scalar.ph149:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph149 ], [ %indvars.iv.unr, %scalar.ph149.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !90
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !90
  %i.gc = fmul float %i.fz, %i.gb
  store float %i.gc, ptr %i.fy, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !90
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !90
  %i.gh = fmul float %i.ge, %i.gg
  store float %i.gh, ptr %i.gd, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.1 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !90
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.1
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !90
  %i.gm = fmul float %i.gj, %i.gl
  store float %i.gm, ptr %i.gi, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.2 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !90
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.2
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !90
  %i.gr = fmul float %i.go, %i.gq
  store float %i.gr, ptr %i.gn, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond114.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond114.not.3, label %._crit_edge104, label %scalar.ph149, !llvm.loop !850

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread, %bb.b, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, %bb.g, %bb.h, %bb.i, %._crit_edge104, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gs = add nuw i64 %.068105, 1                 ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gs, %i.i
  br i1 %exitcond125.not, label %._crit_edge108, label %bb.b, !llvm.loop !851
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize20fuse_convolution_addEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not116 = icmp eq ptr %i.d, %i.e
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge115:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph114, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.067112 = phi i64 [ 0, %.lr.ph114 ], [ %i.hc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.067112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 11
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8391732706658905923
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7957695015494119286
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not97 = icmp eq i32 %i.ah, 0
  br i1 %.not97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %.066100 = add nuw i64 %.067112, 1              ; 3 uses
  %i.al = icmp ult i64 %.066100, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.066101 = phi i64 [ %.066, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066101
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 8
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.at = load i64, ptr %i.as, align 1
  %i.au = icmp ne i64 %i.at, 8092820587575929154
  %i.av = zext i1 %i.au to i32
  %.not98 = icmp eq i32 %i.av, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not = icmp eq i64 %i.bc, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !81
  %i.be = icmp eq i32 %i.bd, %i.ak
  br i1 %i.be, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %.066 = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.066, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !856

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  %.066.lcssa = phi i64 [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ], [ %.066101, %bb.c ] ; 4 uses
  %i.bf = icmp eq i64 %.066.lcssa, %i.i
  br i1 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066.lcssa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !134
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 212
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !135
  %.not70 = icmp eq i32 %i.bl, 0
  br i1 %.not70, label %.lr.ph105, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph105:                                        ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph105, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread
  %.065104 = phi i64 [ 0, %.lr.ph105 ], [ %i.ck, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !58
  %i.br = icmp eq i64 %i.bq, 10
  br i1 %i.br, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 7008860452498007373
  %i.bw = getelementptr i8, ptr %i.bt, i64 8
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i64
  %i.bz = xor i64 %i.by, 24948
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not99 = icmp eq i32 %i.cc, 0
  br i1 %.not99, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !81
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !81
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.ck = add nuw i64 %.065104, 1                 ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ck, %.066.lcssa
  br i1 %exitcond118.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !857

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96
  %i.cl = icmp eq i64 %.065104, %.066.lcssa
  br i1 %i.cl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !141 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 208
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !176 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, %i.cp
  br i1 %i.cs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 212
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !177
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 220
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !178
  %i.cy = icmp eq i32 %i.cx, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.064 = phi i1 [ false, %bb.g ], [ %i.cy, %bb.i ], [ false, %bb.h ] ; 2 uses
  %i.cz = icmp eq i32 %i.cr, 1
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 212
  %i.db = load i32, ptr %i.da, align 4, !tbaa !177
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 220
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !178
  %i.df = icmp eq i32 %i.de, %i.cp
  %spec.select72 = select i1 %i.df, i1 true, i1 %.064
  br i1 %spec.select72, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.064, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %.split, %bb.l
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.170, ptr noundef %i.di, ptr noundef %i.dk) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  call void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.dm, i32 noundef %i.cp, ptr noundef null)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !142
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.dn, align 8, !tbaa !142
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 424 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, %1
  br i1 %i.dr, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = atomicrmw add ptr %i.ds, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77 ; 2 uses
  %.not.i74 = icmp eq ptr %i.dv, null
  br i1 %.not.i74, label %.noexc, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = atomicrmw add ptr %i.dv, i32 -1 acq_rel, align 4
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.s, label %.noexc

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea)
          to label %.noexc unwind label %bb.ad, !inline_history !1

bb.u:                                             ; preds = %bb.s
  %.not.i87 = icmp eq ptr %i.ea, null
  br i1 %.not.i87, label %.noexc, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ea) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ej = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ej, ptr %i.dq, align 8, !tbaa !92
  %i.ek = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !93
  %i.el = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.el, ptr %i.ef, align 8, !tbaa !94
  %i.em = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  store ptr %i.em, ptr %i.en, align 8, !tbaa !78
  %i.eo = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.eo, ptr %i.eg, align 8, !tbaa !81
  %i.ep = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ep, ptr %i.eh, align 8, !tbaa !88
  %i.eq = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.w:                                             ; preds = %bb.m
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 424
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79 ; 8 uses
  %i.et = icmp sgt i32 %i.cp, 0
  br i1 %i.et, label %.lr.ph111, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph111:                                        ; preds = %bb.w
  %i.eu = load ptr, ptr %1, align 16, !tbaa !79   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.cp to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.cp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111
  %i.ev = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.es, i64 %i.ev
  %scevgep145 = getelementptr i8, ptr %i.eu, i64 %i.ev
  %bound0 = icmp ult ptr %i.es, %scevgep145
  %bound1 = icmp ult ptr %i.eu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ew, align 4, !tbaa !90, !alias.scope !865, !noalias !866
  %wide.load146 = load <4 x float>, ptr %i.ex, align 4, !tbaa !90, !alias.scope !865, !noalias !866
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load147 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !866
  %wide.load148 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !866
  %i.fa = fadd <4 x float> %wide.load, %wide.load147
  %i.fb = fadd <4 x float> %wide.load146, %wide.load148
  store <4 x float> %i.fa, ptr %i.ew, align 4, !tbaa !90, !alias.scope !865, !noalias !866
  store <4 x float> %i.fb, ptr %i.ex, align 4, !tbaa !90, !alias.scope !865, !noalias !866
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !861

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph111, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph111 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.prol ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !90
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.prol
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !90
  %i.fh = fadd float %i.fe, %i.fg
  store float %i.fh, ptr %i.fd, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !862

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !90
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !90
  %i.fo = fadd float %i.fl, %i.fn
  store float %i.fo, ptr %i.fk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !90
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !90
  %i.ft = fadd float %i.fq, %i.fs
  store float %i.ft, ptr %i.fp, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next.1 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !90
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !90
  %i.fy = fadd float %i.fv, %i.fx
  store float %i.fy, ptr %i.fu, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next.2 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !90
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.2
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !90
  %i.gd = fadd float %i.ga, %i.gc
  store float %i.gd, ptr %i.fz, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond120.not.3, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph, !llvm.loop !863

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w, %.noexc, %bb.n
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !80
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !81 ; 2 uses
  %i.gh = load ptr, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !81
  %i.gi = trunc i64 %.067112 to i32
  %i.gj = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gk = sext i32 %i.gg to i64
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.gm = getelementptr inbounds nuw [112 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i32 %i.gi, ptr %i.gn, align 8, !tbaa !118
  %i.go = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !58
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef 0, i64 noundef %i.gq, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.gs = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i76 = icmp eq ptr %i.gs, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.gt = atomicrmw add ptr %i.gs, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit73

bb.y:                                             ; preds = %bb.x
  %i.gv = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i85 = icmp eq ptr %i.gw, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.gw) #25
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.z
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread, %bb.b, %.split, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, %bb.l, %_ZN4ncnn3MatD2Ev.exit73, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hc = add nuw i64 %.067112, 1                 ; 2 uses
  %exitcond121.not = icmp eq i64 %i.hc, %i.i
  br i1 %exitcond121.not, label %._crit_edge115, label %bb.b, !llvm.loop !864

bb.ad:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.t
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i80 = icmp eq ptr %i.he, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hf = atomicrmw add ptr %i.he, i32 -1 acq_rel, align 4
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.aj, !inline_history !1

bb.ah:                                            ; preds = %bb.af
  %.not.i84 = icmp eq ptr %i.hi, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.hi) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.hd
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize35fuse_convolutiondepthwise_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.ij, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 20
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i128, ptr %i.z, align 1
  %i.ab = xor i128 %i.aa, 138844297650319802350679583742711721795
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i128
  %i.af = xor i128 %i.ae, 1702062423
  %i.ag = or i128 %i.ab, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not154 = icmp eq i32 %i.ai, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.am = icmp ult i64 %.084192, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 9
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8245895652990804290
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = xor i64 %i.ay, 109
  %i.ba = or i64 %i.av, %i.az
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not155 = icmp eq i32 %i.bc, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !80 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.not = icmp eq i64 %i.bj, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !81
  %i.bl = icmp eq i32 %i.bk, %i.al
  br i1 %i.bl, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %.084 = add nuw i64 %.084193, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.084, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !867

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %.084.lcssa = phi i64 [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ], [ %.084193, %bb.c ] ; 2 uses
  %i.bm = icmp eq i64 %.084.lcssa, %i.i
  br i1 %i.bm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084.lcssa
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 10 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.171, ptr noundef %i.br, ptr noundef %i.bt) #27 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !131 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 212
  %i.by = load float, ptr %i.bx, align 4, !tbaa !132
  %i.bz = sext i32 %i.bw to i64                   ; 2 uses
  %i.ca = icmp slt i32 %i.bw, 0
  br i1 %i.ca, label %.noexc111, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc111:                                        ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge198, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cb = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28 ; 5 uses
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !90
  %i.cd = add nsw i64 %i.bz, -1                   ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0                    ; 2 uses
  br i1 %i.ce, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %i.cf = getelementptr i8, ptr %i.cc, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %.noexc112, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28
          to label %.noexc120 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ; 4 uses

.noexc120:                                        ; preds = %bb.e
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !90
  br i1 %i.ce, label %.lr.ph197, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115: ; preds = %.noexc120
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.idx.i.i.i.i.i.i.i116 = shl nuw nsw i64 %i.cd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %.idx.i.i.i.i.i.i.i116, i1 false), !tbaa !90
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115, %.noexc120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 360
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 432
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !79
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %bb.f

._crit_edge198:                                   ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0128.0258 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cg, %bb.f ] ; 7 uses
  %.sroa.0134.0144256 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %bb.f ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !150
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.g, label %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge

._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge: ; preds = %._crit_edge198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %.lr.ph207

_ZNSt6vectorIfSaIfEED2Ev.exit125.thread:          ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph197, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !90
  %i.cw = fadd float %i.by, %i.cv
  %i.cx = call noundef float @sqrtf(float noundef %i.cw) #25 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !90
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !90
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !90
  %i.de = fmul float %i.db, %i.dd
  %i.df = fdiv float %i.de, %i.cx
  %i.dg = fsub float %i.cz, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  store float %i.dg, ptr %i.dh, align 4, !tbaa !90
  %i.di = load float, ptr %i.da, align 4, !tbaa !90
  %i.dj = fdiv float %i.di, %i.cx
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  store float %i.dj, ptr %i.dk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !868

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cq, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bw, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dp, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.du, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.du) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ee = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ee, ptr %i.dl, align 8, !tbaa !92
  %i.ef = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ef, ptr %i.dy, align 8, !tbaa !93
  %i.eg = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.eg, ptr %i.dz, align 8, !tbaa !94
  %i.eh = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !78
  %i.ej = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ej, ptr %i.ea, align 8, !tbaa !81
  %i.ek = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ek, ptr %i.eb, align 8, !tbaa !88
  %i.el = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.em = phi ptr [ %i.ed, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.em, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p
end_hunk_1
begin_hunk_2_@_ZN11NetOptimize35fuse_convolutiondepthwise_batchnormEv:bb.a
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gy, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %wide.load274 = load <4 x float>, ptr %i.gz, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load
  %i.hb = fmul <4 x float> %broadcast.splat, %wide.load274
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !872

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hd = load float, ptr %i.gw, align 4, !tbaa !90
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223.prol ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !90
  %i.hg = fmul float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !873

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hh = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv228 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !90
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !90
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !90
  %i.hp = call float @llvm.fmuladd.f32(float %i.hk, float %i.hm, float %i.ho)
  store float %i.hp, ptr %i.hj, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !874

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hq = load float, ptr %i.gw, align 4, !tbaa !90
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90
  %i.ht = fmul float %i.hq, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !90
  %i.hu = load float, ptr %i.gw, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !90
  %i.hy = fmul float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !90
  %i.hz = load float, ptr %i.gw, align 4, !tbaa !90
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90
  %i.id = fmul float %i.hz, %i.ic
  store float %i.id, ptr %i.ib, align 4, !tbaa !90
  %i.ie = load float, ptr %i.gw, align 4, !tbaa !90
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 12 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !90
  %i.ii = fmul float %i.ie, %i.ih
  store float %i.ii, ptr %i.ig, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !875

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ij = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ij, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !876

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.ct, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29fuse_convolutiondepthwise_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not109 = icmp eq ptr %i.d, %i.e
  br i1 %.not109, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge108:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068105 = phi i64 [ 0, %.lr.ph107 ], [ %i.gt, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068105
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i128, ptr %i.s, align 1
  %i.u = xor i128 %i.t, 138844297650319802350679583742711721795
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 1
  %i.x = zext i32 %i.w to i128
  %i.y = xor i128 %i.x, 1702062423
  %i.z = or i128 %i.u, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not85 = icmp eq i32 %i.ab, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068105, 1               ; 3 uses
  %i.af = icmp ult i64 %.06788, %i.i
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = icmp eq i64 %i.aj, 8
  br i1 %i.ak, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = icmp ne i64 %i.an, 8092820587575929154
  %i.ap = zext i1 %i.ao to i32
  %.not86 = icmp eq i32 %i.ap, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %.not = icmp eq i64 %i.aw, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !81
  %i.ay = icmp eq i32 %i.ax, %i.ae
  br i1 %i.ay, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %.067 = add nuw i64 %.06789, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.067, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !879

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82
  %.067.lcssa = phi i64 [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ %.06789, %bb.c ] ; 4 uses
  %i.az = icmp eq i64 %.067.lcssa, %i.i
  br i1 %i.az, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.067.lcssa
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !134
  %.not72 = icmp eq i32 %i.bd, 2
  br i1 %.not72, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !135
  %.not73 = icmp eq i32 %i.bf, 0
  br i1 %.not73, label %.lr.ph93, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph93:                                         ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread
  %.06692 = phi i64 [ 0, %.lr.ph93 ], [ %i.ce, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !58
  %i.bl = icmp eq i64 %i.bk, 10
  br i1 %i.bl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81: ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 1
  %i.bp = xor i64 %i.bo, 7008860452498007373
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i64
  %i.bt = xor i64 %i.bs, 24948
  %i.bu = or i64 %i.bp, %i.bt
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %.not87 = icmp eq i32 %i.bw, 0
  br i1 %.not87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !80
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !81
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !81
  %i.cd = icmp eq i32 %i.bz, %i.cc
  br i1 %i.cd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.ce = add nuw i64 %.06692, 1                  ; 2 uses
  %exitcond112.not = icmp eq i64 %i.ce, %.067.lcssa
  br i1 %exitcond112.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !880

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84
  %i.cf = icmp eq i64 %.06692, %.067.lcssa
  br i1 %i.cf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !53 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !149 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 208
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !176
  %.not74 = icmp eq i32 %i.cl, %i.cj
  br i1 %.not74, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 212
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !177
  %.not75 = icmp eq i32 %i.cn, 0
  br i1 %.not75, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 220
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !178
  %.not76 = icmp eq i32 %i.cp, 0
  br i1 %.not76, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !57
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !57
  %i.cv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.172, ptr noundef %i.cs, ptr noundef %i.cu) #27 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 260
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !151
  %i.cy = sdiv i32 %i.cx, %i.cj                   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !79 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !79 ; 10 uses
  %i.dd = icmp sgt i32 %i.cj, 0
  br i1 %i.dd, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.j
  %i.de = icmp sgt i32 %i.cy, 0
  %.not77 = icmp eq ptr %i.dc, null               ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ch, i64 232 ; 2 uses
  br i1 %i.de, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79 ; 3 uses
  %i.dh = zext nneg i32 %i.cy to i64              ; 7 uses
  %wide.trip.count123 = zext nneg i32 %i.cj to i64 ; 3 uses
  %i.di = shl nuw nsw i64 %wide.trip.count123, 2
  %i.dj = mul nuw i64 %i.di, %i.dh
  %scevgep = getelementptr i8, ptr %i.da, i64 %i.dj
  %i.dk = shl nuw nsw i64 %wide.trip.count123, 2
  %scevgep141 = getelementptr i8, ptr %i.dg, i64 %i.dk
  %min.iters.check = icmp ult i32 %i.cy, 8
  %bound0 = icmp ult ptr %i.da, %scevgep141
  %bound1 = icmp ult ptr %i.dg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.dh, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dh
  %xtraiter167 = and i64 %i.dh, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %bb.l, %.lr.ph103.split.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.l ], [ 0, %.lr.ph103.split.us ] ; 4 uses
  %i.dl = mul nuw nsw i64 %indvars.iv120, %i.dh
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv120 ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph99.us
  %i.do = load float, ptr %i.dn, align 4, !tbaa !90, !alias.scope !895
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.dp, align 4, !tbaa !90, !alias.scope !896, !noalias !895
  %wide.load142 = load <4 x float>, ptr %i.dq, align 4, !tbaa !90, !alias.scope !896, !noalias !895
  %i.dr = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ds = fmul <4 x float> %broadcast.splat, %wide.load142
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !90, !alias.scope !896, !noalias !895
  store <4 x float> %i.ds, ptr %i.dq, align 4, !tbaa !90, !alias.scope !896, !noalias !895
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !884

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge100.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph99.us, %middle.block
  %indvars.iv115.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph99.us ] ; 3 uses
  br i1 %lcmp.mod168.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %scalar.ph.prol ], [ %indvars.iv115.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.du = load float, ptr %i.dn, align 4, !tbaa !90
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv115.prol ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !90
  %i.dx = fmul float %i.du, %i.dw
  store float %i.dx, ptr %i.dv, align 4, !tbaa !90
  %indvars.iv.next116.prol = add nuw nsw i64 %indvars.iv115.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !885

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph.preheader ], [ %indvars.iv.next116.prol, %scalar.ph.prol ]
  %i.dy = sub nsw i64 %indvars.iv115.ph, %i.dh
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %._crit_edge100.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.3, %scalar.ph ], [ %indvars.iv115.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ea = load float, ptr %i.dn, align 4, !tbaa !90
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv115 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !90
  %i.ed = fmul float %i.ea, %i.ec
  store float %i.ed, ptr %i.eb, align 4, !tbaa !90
  %i.ee = load float, ptr %i.dn, align 4, !tbaa !90
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv115
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !90
  %i.ei = fmul float %i.ee, %i.eh
  store float %i.ei, ptr %i.eg, align 4, !tbaa !90
  %i.ej = load float, ptr %i.dn, align 4, !tbaa !90
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv115
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load float, ptr %i.el, align 4, !tbaa !90
  %i.en = fmul float %i.ej, %i.em
  store float %i.en, ptr %i.el, align 4, !tbaa !90
  %i.eo = load float, ptr %i.dn, align 4, !tbaa !90
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv115
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !90
  %i.es = fmul float %i.eo, %i.er
  store float %i.es, ptr %i.eq, align 4, !tbaa !90
  %indvars.iv.next116.3 = add nuw nsw i64 %indvars.iv115, 4 ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %indvars.iv.next116.3, %i.dh
  br i1 %exitcond119.not.3, label %._crit_edge100.us, label %scalar.ph, !llvm.loop !886

bb.k:                                             ; preds = %._crit_edge100.us
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv120 ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !90
  %i.ev = load float, ptr %i.dn, align 4, !tbaa !90
  %i.ew = fmul float %i.eu, %i.ev
  store float %i.ew, ptr %i.et, align 4, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge100.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge104, label %.lr.ph99.us, !llvm.loop !887

._crit_edge100.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br i1 %.not77, label %bb.l, label %bb.k

.lr.ph103.split:                                  ; preds = %.lr.ph103
  br i1 %.not77, label %._crit_edge104, label %.lr.ph103.split.split

.lr.ph103.split.split:                            ; preds = %.lr.ph103.split
  %i.ex = load ptr, ptr %i.df, align 8, !tbaa !79 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.cj to i64   ; 6 uses
  %min.iters.check150 = icmp ult i32 %i.cj, 8
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph103.split.split
  %i.ey = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep144 = getelementptr i8, ptr %i.dc, i64 %i.ey
  %scevgep145 = getelementptr i8, ptr %i.ex, i64 %i.ey
  %bound0146 = icmp ult ptr %i.dc, %scevgep145
  %bound1147 = icmp ult ptr %i.ex, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck143
  %n.vec152 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index154 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !897, !noalias !898
  %wide.load156 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90, !alias.scope !897, !noalias !898
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index154 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load157 = load <4 x float>, ptr %i.fb, align 4, !tbaa !90, !alias.scope !898
  %wide.load158 = load <4 x float>, ptr %i.fc, align 4, !tbaa !90, !alias.scope !898
  %i.fd = fmul <4 x float> %wide.load155, %wide.load157
  %i.fe = fmul <4 x float> %wide.load156, %wide.load158
  store <4 x float> %i.fd, ptr %i.ez, align 4, !tbaa !90, !alias.scope !897, !noalias !898
  store <4 x float> %i.fe, ptr %i.fa, align 4, !tbaa !90, !alias.scope !897, !noalias !898
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.ff, label %middle.block160, label %vector.body153, !llvm.loop !891

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %n.vec152, %wide.trip.count
  br i1 %cmp.n161, label %._crit_edge104, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %vector.memcheck143, %.lr.ph103.split.split, %middle.block160
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph103.split.split ], [ %n.vec152, %middle.block160 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol

scalar.ph149.prol:                                ; preds = %scalar.ph149.preheader, %scalar.ph149.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph149.prol ], [ %indvars.iv.ph, %scalar.ph149.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph149.prol ], [ 0, %scalar.ph149.preheader ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.prol ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !90
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.prol
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !90
  %i.fk = fmul float %i.fh, %i.fj
  store float %i.fk, ptr %i.fg, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol, !llvm.loop !892

scalar.ph149.prol.loopexit:                       ; preds = %scalar.ph149.prol, %scalar.ph149.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph149.preheader ], [ %indvars.iv.next.prol, %scalar.ph149.prol ]
  %i.fl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %._crit_edge104, label %scalar.ph149

._crit_edge104:                                   ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149, %bb.l, %middle.block160, %.lr.ph103.split, %bb.j
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !80
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !81 ; 2 uses
  %i.fq = load ptr, ptr %i.ac, align 8, !tbaa !80
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !81
  %i.fr = trunc i64 %.068105 to i32
  %i.fs = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.ft = sext i32 %i.fp to i64
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !51
  %i.fv = getelementptr inbounds nuw [112 x i8], ptr %i.fu, i64 %i.ft
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store i32 %i.fr, ptr %i.fw, align 8, !tbaa !118
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.fy = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.fx, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

scalar.ph149:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph149 ], [ %indvars.iv.unr, %scalar.ph149.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !90
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !90
  %i.gd = fmul float %i.ga, %i.gc
  store float %i.gd, ptr %i.fz, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !90
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !90
  %i.gi = fmul float %i.gf, %i.gh
  store float %i.gi, ptr %i.ge, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.1 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !90
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next.1
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !90
  %i.gn = fmul float %i.gk, %i.gm
  store float %i.gn, ptr %i.gj, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.2 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !90
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next.2
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !90
  %i.gs = fmul float %i.gp, %i.gr
  store float %i.gs, ptr %i.go, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond114.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond114.not.3, label %._crit_edge104, label %scalar.ph149, !llvm.loop !893

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread, %bb.b, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, %bb.g, %bb.h, %bb.i, %._crit_edge104, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gt = add nuw i64 %.068105, 1                 ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gt, %i.i
  br i1 %exitcond125.not, label %._crit_edge108, label %bb.b, !llvm.loop !894
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29fuse_convolutiondepthwise_addEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not116 = icmp eq ptr %i.d, %i.e
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge115:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph114, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.067112 = phi i64 [ 0, %.lr.ph114 ], [ %i.hd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.067112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 20
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i128, ptr %i.z, align 1
  %i.ab = xor i128 %i.aa, 138844297650319802350679583742711721795
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i128
  %i.af = xor i128 %i.ae, 1702062423
  %i.ag = or i128 %i.ab, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not97 = icmp eq i32 %i.ai, 0
  br i1 %.not97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.066100 = add nuw i64 %.067112, 1              ; 3 uses
  %i.am = icmp ult i64 %.066100, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.066101 = phi i64 [ %.066, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066101
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 8
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = load i64, ptr %i.at, align 1
  %i.av = icmp ne i64 %i.au, 8092820587575929154
  %i.aw = zext i1 %i.av to i32
  %.not98 = icmp eq i32 %i.aw, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !81
  %i.bf = icmp eq i32 %i.be, %i.al
  br i1 %i.bf, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %.066 = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.066, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !899

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  %.066.lcssa = phi i64 [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ], [ %.066101, %bb.c ] ; 4 uses
  %i.bg = icmp eq i64 %.066.lcssa, %i.i
  br i1 %i.bg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066.lcssa
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !134
  %.not69 = icmp eq i32 %i.bk, 0
  br i1 %.not69, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 212
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !135
  %.not70 = icmp eq i32 %i.bm, 0
  br i1 %.not70, label %.lr.ph105, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph105:                                        ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph105, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread
  %.065104 = phi i64 [ 0, %.lr.ph105 ], [ %i.cl, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58
  %i.bs = icmp eq i64 %i.br, 10
  br i1 %i.bs, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = xor i64 %i.bv, 7008860452498007373
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = zext i16 %i.by to i64
  %i.ca = xor i64 %i.bz, 24948
  %i.cb = or i64 %i.bw, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not99 = icmp eq i32 %i.cd, 0
  br i1 %.not99, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !80
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81
  %i.ck = icmp eq i32 %i.cg, %i.cj
  br i1 %i.ck, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.cl = add nuw i64 %.065104, 1                 ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cl, %.066.lcssa
  br i1 %exitcond118.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !900

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96
  %i.cm = icmp eq i64 %.065104, %.066.lcssa
  br i1 %i.cm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !53 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !149 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !176 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, %i.cq
  br i1 %i.ct, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 212
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !177
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 220
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !178
  %i.cz = icmp eq i32 %i.cy, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.064 = phi i1 [ false, %bb.g ], [ %i.cz, %bb.i ], [ false, %bb.h ] ; 2 uses
  %i.da = icmp eq i32 %i.cs, 1
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 212
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !177
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 220
  %i.df = load i32, ptr %i.de, align 4, !tbaa !178
  %i.dg = icmp eq i32 %i.df, %i.cq
  %spec.select72 = select i1 %i.dg, i1 true, i1 %.064
  br i1 %spec.select72, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.064, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %.split, %bb.l
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.173, ptr noundef %i.dj, ptr noundef %i.dl) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  call void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i32 noundef %i.cq, ptr noundef null)
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 256 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !150
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.do, align 8, !tbaa !150
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, %1
  br i1 %i.ds, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = atomicrmw add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77 ; 2 uses
  %.not.i74 = icmp eq ptr %i.dw, null
  br i1 %.not.i74, label %.noexc, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.s, label %.noexc

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %.noexc unwind label %bb.ad, !inline_history !1

bb.u:                                             ; preds = %bb.s
  %.not.i87 = icmp eq ptr %i.eb, null
  br i1 %.not.i87, label %.noexc, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.eb) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ek = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ek, ptr %i.dr, align 8, !tbaa !92
  %i.el = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !93
  %i.em = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.em, ptr %i.eg, align 8, !tbaa !94
  %i.en = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !78
  %i.ep = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ep, ptr %i.eh, align 8, !tbaa !81
  %i.eq = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.eq, ptr %i.ei, align 8, !tbaa !88
  %i.er = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.er, ptr %i.ej, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.w:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !79 ; 8 uses
  %i.eu = icmp sgt i32 %i.cq, 0
  br i1 %i.eu, label %.lr.ph111, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph111:                                        ; preds = %bb.w
  %i.ev = load ptr, ptr %1, align 16, !tbaa !79   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.cq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.cq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111
  %i.ew = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.et, i64 %i.ew
  %scevgep145 = getelementptr i8, ptr %i.ev, i64 %i.ew
  %bound0 = icmp ult ptr %i.et, %scevgep145
  %bound1 = icmp ult ptr %i.ev, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !90, !alias.scope !908, !noalias !909
  %wide.load146 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !908, !noalias !909
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load147 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !909
  %wide.load148 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90, !alias.scope !909
  %i.fb = fadd <4 x float> %wide.load, %wide.load147
  %i.fc = fadd <4 x float> %wide.load146, %wide.load148
  store <4 x float> %i.fb, ptr %i.ex, align 4, !tbaa !90, !alias.scope !908, !noalias !909
  store <4 x float> %i.fc, ptr %i.ey, align 4, !tbaa !90, !alias.scope !908, !noalias !909
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !904

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph111, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph111 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.prol ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !90
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !90
  %i.fi = fadd float %i.ff, %i.fh
  store float %i.fi, ptr %i.fe, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !905

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !90
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !90
  %i.fp = fadd float %i.fm, %i.fo
  store float %i.fp, ptr %i.fl, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !90
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !90
  %i.fu = fadd float %i.fr, %i.ft
  store float %i.fu, ptr %i.fq, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.1 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !90
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next.1
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !90
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %i.fv, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.2 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !90
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !90
  %i.ge = fadd float %i.gb, %i.gd
  store float %i.ge, ptr %i.ga, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond120.not.3, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph, !llvm.loop !906

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w, %.noexc, %bb.n
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !81 ; 2 uses
  %i.gi = load ptr, ptr %i.aj, align 8, !tbaa !80
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !81
  %i.gj = trunc i64 %.067112 to i32
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gl = sext i32 %i.gh to i64
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw [112 x i8], ptr %i.gm, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store i32 %i.gj, ptr %i.go, align 8, !tbaa !118
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !58
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i64 noundef 0, i64 noundef %i.gr, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i76 = icmp eq ptr %i.gt, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit73

bb.y:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gw, null
  %i.gx = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i85 = icmp eq ptr %i.gx, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.gx) #25
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread, %bb.b, %.split, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, %bb.l, %_ZN4ncnn3MatD2Ev.exit73, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hd = add nuw i64 %.067112, 1                 ; 2 uses
  %exitcond121.not = icmp eq i64 %i.hd, %i.i
  br i1 %exitcond121.not, label %._crit_edge115, label %bb.b, !llvm.loop !907

bb.ad:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.t
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i80 = icmp eq ptr %i.hf, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = atomicrmw add ptr %i.hf, i32 -1 acq_rel, align 4
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.hi = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.hi, null
  %i.hj = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.aj, !inline_history !1

bb.ah:                                            ; preds = %bb.af
  %.not.i84 = icmp eq ptr %i.hj, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.hj) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.he
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize28fuse_deconvolution_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.ii, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 13
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7813594095198364996
  %i.ac = getelementptr i8, ptr %i.z, i64 5
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7957695015494119286
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not154 = icmp eq i32 %i.ah, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.al = icmp ult i64 %.084192, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 9
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 8245895652990804290
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 109
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not155 = icmp eq i32 %i.bb, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !80 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.not = icmp eq i64 %i.bi, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bk = icmp eq i32 %i.bj, %i.ak
  br i1 %i.bk, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %.084 = add nuw i64 %.084193, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.084, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !910

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %.084.lcssa = phi i64 [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ], [ %.084193, %bb.c ] ; 2 uses
  %i.bl = icmp eq i64 %.084.lcssa, %i.i
  br i1 %i.bl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084.lcssa
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53 ; 10 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.174, ptr noundef %i.bq, ptr noundef %i.bs) #27 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 212
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !132
  %i.by = sext i32 %i.bv to i64                   ; 2 uses
  %i.bz = icmp slt i32 %i.bv, 0
  br i1 %i.bz, label %.noexc111, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc111:                                        ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i, label %._crit_edge198, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.by, 2                ; 2 uses
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28 ; 5 uses
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !90
  %i.cc = add nsw i64 %i.by, -1                   ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %i.ce = getelementptr i8, ptr %i.cb, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ce, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %.noexc112, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28
          to label %.noexc120 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ; 4 uses

.noexc120:                                        ; preds = %bb.e
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !90
  br i1 %i.cd, label %.lr.ph197, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115: ; preds = %.noexc120
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.idx.i.i.i.i.i.i.i116 = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i116, i1 false), !tbaa !90
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115, %.noexc120
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %bb.f

._crit_edge198:                                   ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0128.0258 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cf, %bb.f ] ; 7 uses
  %.sroa.0134.0144256 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %bb.f ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 268 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !155
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge

._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge: ; preds = %._crit_edge198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %.lr.ph207

_ZNSt6vectorIfSaIfEED2Ev.exit125.thread:          ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph197, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cv = fadd float %i.bx, %i.cu
  %i.cw = call noundef float @sqrtf(float noundef %i.cv) #25 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !90
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !90
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !90
  %i.dd = fmul float %i.da, %i.dc
  %i.de = fdiv float %i.dd, %i.cw
  %i.df = fsub float %i.cy, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  store float %i.df, ptr %i.dg, align 4, !tbaa !90
  %i.dh = load float, ptr %i.cz, align 4, !tbaa !90
  %i.di = fdiv float %i.dh, %i.cw
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !911

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p
end_hunk_2
begin_hunk_3_@_ZN11NetOptimize28fuse_deconvolution_batchnormEv:bb.a
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gx, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %wide.load274 = load <4 x float>, ptr %i.gy, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %i.gz = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load274
  store <4 x float> %i.gz, ptr %i.gx, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !915

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223.prol ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !90
  %i.hf = fmul float %i.hc, %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !916

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hg = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = call float @llvm.fmuladd.f32(float %i.hj, float %i.hl, float %i.hn)
  store float %i.ho, ptr %i.hi, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !917

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hp = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !90
  %i.hs = fmul float %i.hp, %i.hr
  store float %i.hs, ptr %i.hq, align 4, !tbaa !90
  %i.ht = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !90
  %i.hx = fmul float %i.ht, %i.hw
  store float %i.hx, ptr %i.hv, align 4, !tbaa !90
  %i.hy = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !90
  %i.ic = fmul float %i.hy, %i.ib
  store float %i.ic, ptr %i.ia, align 4, !tbaa !90
  %i.id = load float, ptr %i.gv, align 4, !tbaa !90
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !90
  %i.ih = fmul float %i.id, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !918

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ii = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ii, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !919

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize22fuse_deconvolution_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not109 = icmp eq ptr %i.d, %i.e
  br i1 %.not109, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge108:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068105 = phi i64 [ 0, %.lr.ph107 ], [ %i.gs, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068105
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 13
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 7813594095198364996
  %i.v = getelementptr i8, ptr %i.s, i64 5
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7957695015494119286
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not85 = icmp eq i32 %i.aa, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068105, 1               ; 3 uses
  %i.ae = icmp ult i64 %.06788, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not = icmp eq i64 %i.av, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !81
  %i.ax = icmp eq i32 %i.aw, %i.ad
  br i1 %i.ax, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %.067 = add nuw i64 %.06789, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.067, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !922

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82
  %.067.lcssa = phi i64 [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ], [ %.06789, %bb.c ] ; 4 uses
  %i.ay = icmp eq i64 %.067.lcssa, %i.i
  br i1 %i.ay, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.067.lcssa
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 208
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !134
  %.not72 = icmp eq i32 %i.bc, 2
  br i1 %.not72, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 212
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !135
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %.lr.ph93, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph93:                                         ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread
  %.06692 = phi i64 [ 0, %.lr.ph93 ], [ %i.cd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !58
  %i.bk = icmp eq i64 %i.bj, 10
  br i1 %i.bk, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81: ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 7008860452498007373
  %i.bp = getelementptr i8, ptr %i.bm, i64 8
  %i.bq = load i16, ptr %i.bp, align 1
  %i.br = zext i16 %i.bq to i64
  %i.bs = xor i64 %i.br, 24948
  %i.bt = or i64 %i.bo, %i.bs
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not87 = icmp eq i32 %i.bv, 0
  br i1 %.not87, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !80
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !81
  %i.bz = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !81
  %i.cc = icmp eq i32 %i.by, %i.cb
  br i1 %i.cc, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
  %i.cd = add nuw i64 %.06692, 1                  ; 2 uses
  %exitcond112.not = icmp eq i64 %i.cd, %.067.lcssa
  br i1 %exitcond112.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !923

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84
  %i.ce = icmp eq i64 %.06692, %.067.lcssa
  br i1 %i.ce, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06692
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !53 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !154 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !176
  %.not74 = icmp eq i32 %i.ck, %i.ci
  br i1 %.not74, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 212
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !177
  %.not75 = icmp eq i32 %i.cm, 0
  br i1 %.not75, label %bb.i, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 220
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !178
  %.not76 = icmp eq i32 %i.co, 0
  br i1 %.not76, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !57
  %i.cu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.175, ptr noundef %i.cr, ptr noundef %i.ct) #27 ; 0 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !156
  %i.cx = sdiv i32 %i.cw, %i.ci                   ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 360
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !79 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 432
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79 ; 10 uses
  %i.dc = icmp sgt i32 %i.ci, 0
  br i1 %i.dc, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.j
  %i.dd = icmp sgt i32 %i.cx, 0
  %.not77 = icmp eq ptr %i.db, null               ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 232 ; 2 uses
  br i1 %i.dd, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !79 ; 3 uses
  %i.dg = zext nneg i32 %i.cx to i64              ; 7 uses
  %wide.trip.count123 = zext nneg i32 %i.ci to i64 ; 3 uses
  %i.dh = shl nuw nsw i64 %wide.trip.count123, 2
  %i.di = mul nuw i64 %i.dh, %i.dg
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.di
  %i.dj = shl nuw nsw i64 %wide.trip.count123, 2
  %scevgep141 = getelementptr i8, ptr %i.df, i64 %i.dj
  %min.iters.check = icmp ult i32 %i.cx, 8
  %bound0 = icmp ult ptr %i.cz, %scevgep141
  %bound1 = icmp ult ptr %i.df, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %i.dg, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dg
  %xtraiter167 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br label %.lr.ph99.us

.lr.ph99.us:                                      ; preds = %bb.l, %.lr.ph103.split.us
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %bb.l ], [ 0, %.lr.ph103.split.us ] ; 4 uses
  %i.dk = mul nuw nsw i64 %indvars.iv120, %i.dg
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dk ; 6 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv120 ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph99.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !90, !alias.scope !938
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.do, align 4, !tbaa !90, !alias.scope !939, !noalias !938
  %wide.load142 = load <4 x float>, ptr %i.dp, align 4, !tbaa !90, !alias.scope !939, !noalias !938
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dr = fmul <4 x float> %broadcast.splat, %wide.load142
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !90, !alias.scope !939, !noalias !938
  store <4 x float> %i.dr, ptr %i.dp, align 4, !tbaa !90, !alias.scope !939, !noalias !938
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !927

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge100.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph99.us, %middle.block
  %indvars.iv115.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph99.us ] ; 3 uses
  br i1 %lcmp.mod168.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv115.prol = phi i64 [ %indvars.iv.next116.prol, %scalar.ph.prol ], [ %indvars.iv115.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter169 = phi i64 [ %prol.iter169.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dt = load float, ptr %i.dm, align 4, !tbaa !90
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115.prol ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !90
  %i.dw = fmul float %i.dt, %i.dv
  store float %i.dw, ptr %i.du, align 4, !tbaa !90
  %indvars.iv.next116.prol = add nuw nsw i64 %indvars.iv115.prol, 1 ; 2 uses
  %prol.iter169.next = add i64 %prol.iter169, 1   ; 2 uses
  %prol.iter169.cmp.not = icmp eq i64 %prol.iter169.next, %xtraiter167
  br i1 %prol.iter169.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !928

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv115.unr = phi i64 [ %indvars.iv115.ph, %scalar.ph.preheader ], [ %indvars.iv.next116.prol, %scalar.ph.prol ]
  %i.dx = sub nsw i64 %indvars.iv115.ph, %i.dg
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge100.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv115 = phi i64 [ %indvars.iv.next116.3, %scalar.ph ], [ %indvars.iv115.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115 ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !90
  %i.ec = fmul float %i.dz, %i.eb
  store float %i.ec, ptr %i.ea, align 4, !tbaa !90
  %i.ed = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !90
  %i.eh = fmul float %i.ed, %i.eg
  store float %i.eh, ptr %i.ef, align 4, !tbaa !90
  %i.ei = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !90
  %i.em = fmul float %i.ei, %i.el
  store float %i.em, ptr %i.ek, align 4, !tbaa !90
  %i.en = load float, ptr %i.dm, align 4, !tbaa !90
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv115
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !90
  %i.er = fmul float %i.en, %i.eq
  store float %i.er, ptr %i.ep, align 4, !tbaa !90
  %indvars.iv.next116.3 = add nuw nsw i64 %indvars.iv115, 4 ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %indvars.iv.next116.3, %i.dg
  br i1 %exitcond119.not.3, label %._crit_edge100.us, label %scalar.ph, !llvm.loop !929

bb.k:                                             ; preds = %._crit_edge100.us
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv120 ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !90
  %i.eu = load float, ptr %i.dm, align 4, !tbaa !90
  %i.ev = fmul float %i.et, %i.eu
  store float %i.ev, ptr %i.es, align 4, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge100.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %._crit_edge104, label %.lr.ph99.us, !llvm.loop !930

._crit_edge100.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br i1 %.not77, label %bb.l, label %bb.k

.lr.ph103.split:                                  ; preds = %.lr.ph103
  br i1 %.not77, label %._crit_edge104, label %.lr.ph103.split.split

.lr.ph103.split.split:                            ; preds = %.lr.ph103.split
  %i.ew = load ptr, ptr %i.de, align 8, !tbaa !79 ; 8 uses
  %wide.trip.count = zext nneg i32 %i.ci to i64   ; 6 uses
  %min.iters.check150 = icmp ult i32 %i.ci, 8
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph103.split.split
  %i.ex = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep144 = getelementptr i8, ptr %i.db, i64 %i.ex
  %scevgep145 = getelementptr i8, ptr %i.ew, i64 %i.ex
  %bound0146 = icmp ult ptr %i.db, %scevgep145
  %bound1147 = icmp ult ptr %i.ew, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck143
  %n.vec152 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %index154 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !940, !noalias !941
  %wide.load156 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !940, !noalias !941
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index154 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load157 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90, !alias.scope !941
  %wide.load158 = load <4 x float>, ptr %i.fb, align 4, !tbaa !90, !alias.scope !941
  %i.fc = fmul <4 x float> %wide.load155, %wide.load157
  %i.fd = fmul <4 x float> %wide.load156, %wide.load158
  store <4 x float> %i.fc, ptr %i.ey, align 4, !tbaa !90, !alias.scope !940, !noalias !941
  store <4 x float> %i.fd, ptr %i.ez, align 4, !tbaa !90, !alias.scope !940, !noalias !941
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.fe, label %middle.block160, label %vector.body153, !llvm.loop !934

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %n.vec152, %wide.trip.count
  br i1 %cmp.n161, label %._crit_edge104, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %vector.memcheck143, %.lr.ph103.split.split, %middle.block160
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph103.split.split ], [ %n.vec152, %middle.block160 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol

scalar.ph149.prol:                                ; preds = %scalar.ph149.preheader, %scalar.ph149.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph149.prol ], [ %indvars.iv.ph, %scalar.ph149.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph149.prol ], [ 0, %scalar.ph149.preheader ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.prol ; 2 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !90
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.prol
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !90
  %i.fj = fmul float %i.fg, %i.fi
  store float %i.fj, ptr %i.ff, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph149.prol.loopexit, label %scalar.ph149.prol, !llvm.loop !935

scalar.ph149.prol.loopexit:                       ; preds = %scalar.ph149.prol, %scalar.ph149.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph149.preheader ], [ %indvars.iv.next.prol, %scalar.ph149.prol ]
  %i.fk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fl = icmp ugt i64 %i.fk, -4
  br i1 %i.fl, label %._crit_edge104, label %scalar.ph149

._crit_edge104:                                   ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149, %bb.l, %middle.block160, %.lr.ph103.split, %bb.j
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !80
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !81 ; 2 uses
  %i.fp = load ptr, ptr %i.ab, align 8, !tbaa !80
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !81
  %i.fq = trunc i64 %.068105 to i32
  %i.fr = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.fs = sext i32 %i.fo to i64
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw [112 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i32 %i.fq, ptr %i.fv, align 8, !tbaa !118
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.fx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.fw, ptr noundef nonnull @.str.8) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

scalar.ph149:                                     ; preds = %scalar.ph149.prol.loopexit, %scalar.ph149
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph149 ], [ %indvars.iv.unr, %scalar.ph149.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !90
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !90
  %i.gc = fmul float %i.fz, %i.gb
  store float %i.gc, ptr %i.fy, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next ; 2 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !90
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !90
  %i.gh = fmul float %i.ge, %i.gg
  store float %i.gh, ptr %i.gd, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.1 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !90
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.1
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !90
  %i.gm = fmul float %i.gj, %i.gl
  store float %i.gm, ptr %i.gi, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.2 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !90
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.2
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !90
  %i.gr = fmul float %i.go, %i.gq
  store float %i.gr, ptr %i.gn, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond114.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond114.not.3, label %._crit_edge104, label %scalar.ph149, !llvm.loop !936

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread, %bb.b, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread84._crit_edge, %bb.g, %bb.h, %bb.i, %._crit_edge104, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gs = add nuw i64 %.068105, 1                 ; 2 uses
  %exitcond125.not = icmp eq i64 %i.gs, %i.i
  br i1 %exitcond125.not, label %._crit_edge108, label %bb.b, !llvm.loop !937
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize22fuse_deconvolution_addEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not116 = icmp eq ptr %i.d, %i.e
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge115:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph114, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.067112 = phi i64 [ 0, %.lr.ph114 ], [ %i.hc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.067112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 13
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 7813594095198364996
  %i.ac = getelementptr i8, ptr %i.z, i64 5
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = xor i64 %i.ad, 7957695015494119286
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not97 = icmp eq i32 %i.ah, 0
  br i1 %.not97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %.066100 = add nuw i64 %.067112, 1              ; 3 uses
  %i.al = icmp ult i64 %.066100, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.066101 = phi i64 [ %.066, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066101
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 8
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.at = load i64, ptr %i.as, align 1
  %i.au = icmp ne i64 %i.at, 8092820587575929154
  %i.av = zext i1 %i.au to i32
  %.not98 = icmp eq i32 %i.av, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not = icmp eq i64 %i.bc, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !81
  %i.be = icmp eq i32 %i.bd, %i.ak
  br i1 %i.be, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %.066 = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.066, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !942

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  %.066.lcssa = phi i64 [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ], [ %.066101, %bb.c ] ; 4 uses
  %i.bf = icmp eq i64 %.066.lcssa, %i.i
  br i1 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066.lcssa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !134
  %.not69 = icmp eq i32 %i.bj, 0
  br i1 %.not69, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 212
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !135
  %.not70 = icmp eq i32 %i.bl, 0
  br i1 %.not70, label %.lr.ph105, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph105:                                        ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph105, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread
  %.065104 = phi i64 [ 0, %.lr.ph105 ], [ %i.ck, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !58
  %i.br = icmp eq i64 %i.bq, 10
  br i1 %i.br, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 7008860452498007373
  %i.bw = getelementptr i8, ptr %i.bt, i64 8
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i64
  %i.bz = xor i64 %i.by, 24948
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %.not99 = icmp eq i32 %i.cc, 0
  br i1 %.not99, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !81
  %i.cg = load ptr, ptr %i.bm, align 8, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !81
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.ck = add nuw i64 %.065104, 1                 ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ck, %.066.lcssa
  br i1 %exitcond118.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !943

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96
  %i.cl = icmp eq i64 %.065104, %.066.lcssa
  br i1 %i.cl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !154 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 208
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !176 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, %i.cp
  br i1 %i.cs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 212
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !177
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 220
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !178
  %i.cy = icmp eq i32 %i.cx, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.064 = phi i1 [ false, %bb.g ], [ %i.cy, %bb.i ], [ false, %bb.h ] ; 2 uses
  %i.cz = icmp eq i32 %i.cr, 1
  br i1 %i.cz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 212
  %i.db = load i32, ptr %i.da, align 4, !tbaa !177
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 220
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !178
  %i.df = icmp eq i32 %i.de, %i.cp
  %spec.select72 = select i1 %i.df, i1 true, i1 %.064
  br i1 %spec.select72, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.064, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %.split, %bb.l
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !57
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.176, ptr noundef %i.di, ptr noundef %i.dk) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  call void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.dm, i32 noundef %i.cp, ptr noundef null)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 268 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !155
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.dn, align 4, !tbaa !155
  %i.dq = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, %1
  br i1 %i.dr, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = atomicrmw add ptr %i.ds, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77 ; 2 uses
  %.not.i74 = icmp eq ptr %i.dv, null
  br i1 %.not.i74, label %.noexc, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = atomicrmw add ptr %i.dv, i32 -1 acq_rel, align 4
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.s, label %.noexc

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dz, null
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.ea)
          to label %.noexc unwind label %bb.ad, !inline_history !1

bb.u:                                             ; preds = %bb.s
  %.not.i87 = icmp eq ptr %i.ea, null
  br i1 %.not.i87, label %.noexc, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.ea) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ej = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ej, ptr %i.dq, align 8, !tbaa !92
  %i.ek = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !93
  %i.el = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.el, ptr %i.ef, align 8, !tbaa !94
  %i.em = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.em, ptr %i.en, align 8, !tbaa !78
  %i.eo = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.eo, ptr %i.eg, align 8, !tbaa !81
  %i.ep = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ep, ptr %i.eh, align 8, !tbaa !88
  %i.eq = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.eq, ptr %i.ei, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.w:                                             ; preds = %bb.m
  %i.er = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !79 ; 8 uses
  %i.et = icmp sgt i32 %i.cp, 0
  br i1 %i.et, label %.lr.ph111, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph111:                                        ; preds = %bb.w
  %i.eu = load ptr, ptr %1, align 16, !tbaa !79   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.cp to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.cp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111
  %i.ev = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.es, i64 %i.ev
  %scevgep145 = getelementptr i8, ptr %i.eu, i64 %i.ev
  %bound0 = icmp ult ptr %i.es, %scevgep145
  %bound1 = icmp ult ptr %i.eu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ew, align 4, !tbaa !90, !alias.scope !951, !noalias !952
  %wide.load146 = load <4 x float>, ptr %i.ex, align 4, !tbaa !90, !alias.scope !951, !noalias !952
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load147 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !952
  %wide.load148 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !952
  %i.fa = fadd <4 x float> %wide.load, %wide.load147
  %i.fb = fadd <4 x float> %wide.load146, %wide.load148
  store <4 x float> %i.fa, ptr %i.ew, align 4, !tbaa !90, !alias.scope !951, !noalias !952
  store <4 x float> %i.fb, ptr %i.ex, align 4, !tbaa !90, !alias.scope !951, !noalias !952
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fc = icmp eq i64 %index.next, %n.vec
  br i1 %i.fc, label %middle.block, label %vector.body, !llvm.loop !947

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph111, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph111 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.prol ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !90
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.prol
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !90
  %i.fh = fadd float %i.fe, %i.fg
  store float %i.fh, ptr %i.fd, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !948

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !90
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !90
  %i.fo = fadd float %i.fl, %i.fn
  store float %i.fo, ptr %i.fk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !90
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !90
  %i.ft = fadd float %i.fq, %i.fs
  store float %i.ft, ptr %i.fp, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next.1 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !90
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.1
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !90
  %i.fy = fadd float %i.fv, %i.fx
  store float %i.fy, ptr %i.fu, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next.2 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !90
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.2
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !90
  %i.gd = fadd float %i.ga, %i.gc
  store float %i.gd, ptr %i.fz, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond120.not.3, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph, !llvm.loop !949

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w, %.noexc, %bb.n
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !80
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !81 ; 2 uses
  %i.gh = load ptr, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !81
  %i.gi = trunc i64 %.067112 to i32
  %i.gj = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gk = sext i32 %i.gg to i64
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !51
  %i.gm = getelementptr inbounds nuw [112 x i8], ptr %i.gl, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  store i32 %i.gi, ptr %i.gn, align 8, !tbaa !118
  %i.go = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !58
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.go, i64 noundef 0, i64 noundef %i.gq, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.gs = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i76 = icmp eq ptr %i.gs, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.gt = atomicrmw add ptr %i.gs, i32 -1 acq_rel, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit73

bb.y:                                             ; preds = %bb.x
  %i.gv = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gv, null
  %i.gw = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  invoke void %i.gz(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef %i.gw)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i85 = icmp eq ptr %i.gw, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.gw) #25
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.z
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread, %bb.b, %.split, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, %bb.l, %_ZN4ncnn3MatD2Ev.exit73, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hc = add nuw i64 %.067112, 1                 ; 2 uses
  %exitcond121.not = icmp eq i64 %i.hc, %i.i
  br i1 %exitcond121.not, label %._crit_edge115, label %bb.b, !llvm.loop !950

bb.ad:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.t
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i80 = icmp eq ptr %i.he, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hf = atomicrmw add ptr %i.he, i32 -1 acq_rel, align 4
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.hh = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !28
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.aj, !inline_history !1

bb.ah:                                            ; preds = %bb.af
  %.not.i84 = icmp eq ptr %i.hi, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.hi) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.hd
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize37fuse_deconvolutiondepthwise_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.ii, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 22
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i128, ptr %i.z, align 1
  %i.ab = xor i128 %i.aa, 149399345464053843500197436873427346756
  %i.ac = getelementptr i8, ptr %i.z, i64 6
  %i.ad = load i128, ptr %i.ac, align 1
  %i.ae = xor i128 %i.ad, 134851278291193737696550823383188991087
  %i.af = or i128 %i.ab, %i.ae
  %i.ag = icmp ne i128 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %.not154 = icmp eq i32 %i.ah, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.al = icmp ult i64 %.084192, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 9
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %i.at = load i64, ptr %i.as, align 1
  %i.au = xor i64 %i.at, 8245895652990804290
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i64
  %i.ay = xor i64 %i.ax, 109
  %i.az = or i64 %i.au, %i.ay
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %.not155 = icmp eq i32 %i.bb, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !80 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %.not = icmp eq i64 %i.bi, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bk = icmp eq i32 %i.bj, %i.ak
  br i1 %i.bk, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %.084 = add nuw i64 %.084193, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.084, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !953

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %.084.lcssa = phi i64 [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ], [ %.084193, %bb.c ] ; 2 uses
  %i.bl = icmp eq i64 %.084.lcssa, %i.i
  br i1 %i.bl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084.lcssa
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53 ; 10 uses
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.177, ptr noundef %i.bq, ptr noundef %i.bs) #27 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 208
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131 ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 212
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !132
  %i.by = sext i32 %i.bv to i64                   ; 2 uses
  %i.bz = icmp slt i32 %i.bv, 0
  br i1 %i.bz, label %.noexc111, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc111:                                        ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i, label %._crit_edge198, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.by, 2                ; 2 uses
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28 ; 5 uses
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !90
  %i.cc = add nsw i64 %i.by, -1                   ; 3 uses
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %i.ce = getelementptr i8, ptr %i.cb, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ce, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %.noexc112, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28
          to label %.noexc120 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ; 4 uses

.noexc120:                                        ; preds = %bb.e
  store float 0.000000e+00, ptr %i.cf, align 4, !tbaa !90
  br i1 %i.cd, label %.lr.ph197, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115: ; preds = %.noexc120
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %.idx.i.i.i.i.i.i.i116 = shl nuw nsw i64 %i.cc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i116, i1 false), !tbaa !90
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115, %.noexc120
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 360
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !79
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bn, i64 288
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %wide.trip.count = zext nneg i32 %i.bv to i64
  br label %bb.f

._crit_edge198:                                   ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0128.0258 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cf, %bb.f ] ; 7 uses
  %.sroa.0134.0144256 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %bb.f ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 268 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !159
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.g, label %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge

._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge: ; preds = %._crit_edge198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %.lr.ph207

_ZNSt6vectorIfSaIfEED2Ev.exit125.thread:          ; preds = %bb.e
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph197, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cv = fadd float %i.bx, %i.cu
  %i.cw = call noundef float @sqrtf(float noundef %i.cv) #25 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !90
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !90
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  %i.dc = load float, ptr %i.db, align 4, !tbaa !90
  %i.dd = fmul float %i.da, %i.dc
  %i.de = fdiv float %i.dd, %i.cw
  %i.df = fsub float %i.cy, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  store float %i.df, ptr %i.dg, align 4, !tbaa !90
  %i.dh = load float, ptr %i.cz, align 4, !tbaa !90
  %i.di = fdiv float %i.dh, %i.cw
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !954

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 440 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p
end_hunk_3
begin_hunk_4_@_ZN11NetOptimize37fuse_deconvolutiondepthwise_batchnormEv:bb.a
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hc = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223.prol ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !90
  %i.hf = fmul float %i.hc, %i.he
  store float %i.hf, ptr %i.hd, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !959

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hg = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = call float @llvm.fmuladd.f32(float %i.hj, float %i.hl, float %i.hn)
  store float %i.ho, ptr %i.hi, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !960

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hp = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !90
  %i.hs = fmul float %i.hp, %i.hr
  store float %i.hs, ptr %i.hq, align 4, !tbaa !90
  %i.ht = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !90
  %i.hx = fmul float %i.ht, %i.hw
  store float %i.hx, ptr %i.hv, align 4, !tbaa !90
  %i.hy = load float, ptr %i.gv, align 4, !tbaa !90
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !90
  %i.ic = fmul float %i.hy, %i.ib
  store float %i.ic, ptr %i.ia, align 4, !tbaa !90
  %i.id = load float, ptr %i.gv, align 4, !tbaa !90
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv223
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !90
  %i.ih = fmul float %i.id, %i.ig
  store float %i.ih, ptr %i.if, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !961

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ii = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ii, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !962

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize27fuse_innerproduct_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.ij, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 12
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8030569537813245513
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, 1952675172
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not154 = icmp eq i32 %i.ai, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.am = icmp ult i64 %.084192, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 9
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8245895652990804290
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = xor i64 %i.ay, 109
  %i.ba = or i64 %i.av, %i.az
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not155 = icmp eq i32 %i.bc, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !91
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !80 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %.not = icmp eq i64 %i.bj, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !81
  %i.bl = icmp eq i32 %i.bk, %i.al
  br i1 %i.bl, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread140, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110
  %.084 = add nuw i64 %.084193, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.084, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !965

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139
  %.084.lcssa = phi i64 [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ], [ %.084193, %bb.c ] ; 2 uses
  %i.bm = icmp eq i64 %.084.lcssa, %i.i
  br i1 %i.bm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084.lcssa
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 10 uses
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.178, ptr noundef %i.br, ptr noundef %i.bt) #27 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !131 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 212
  %i.by = load float, ptr %i.bx, align 4, !tbaa !132
  %i.bz = sext i32 %i.bw to i64                   ; 2 uses
  %i.ca = icmp slt i32 %i.bw, 0
  br i1 %i.ca, label %.noexc111, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc111:                                        ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.168) #31
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %._crit_edge198, label %.noexc112

.noexc112:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cb = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28 ; 5 uses
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !90
  %i.cd = add nsw i64 %i.bz, -1                   ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0                    ; 2 uses
  br i1 %i.ce, label %bb.e, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc112
  %i.cf = getelementptr i8, ptr %i.cc, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !90
  br label %bb.e

bb.e:                                             ; preds = %.noexc112, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.cg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #28
          to label %.noexc120 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ; 4 uses

.noexc120:                                        ; preds = %bb.e
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !90
  br i1 %i.ce, label %.lr.ph197, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115: ; preds = %.noexc120
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.idx.i.i.i.i.i.i.i116 = shl nuw nsw i64 %i.cd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ch, i8 0, i64 %.idx.i.i.i.i.i.i.i116, i1 false), !tbaa !90
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i115, %.noexc120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 360
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !79
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 432
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !79
  %wide.trip.count = zext nneg i32 %i.bw to i64
  br label %bb.f

._crit_edge198:                                   ; preds = %bb.f, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0128.0258 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cg, %bb.f ] ; 7 uses
  %.sroa.0134.0144256 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %bb.f ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 212 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !171
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.g, label %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge

._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge: ; preds = %._crit_edge198
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 376
  %.pre235 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  br label %.lr.ph207

_ZNSt6vectorIfSaIfEED2Ev.exit125.thread:          ; preds = %bb.e
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.f:                                             ; preds = %.lr.ph197, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph197 ], [ %indvars.iv.next, %bb.f ] ; 7 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !90
  %i.cw = fadd float %i.by, %i.cv
  %i.cx = call noundef float @sqrtf(float noundef %i.cw) #25 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !90
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !90
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !90
  %i.de = fmul float %i.db, %i.dd
  %i.df = fdiv float %i.de, %i.cx
  %i.dg = fsub float %i.cz, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  store float %i.dg, ptr %i.dh, align 4, !tbaa !90
  %i.di = load float, ptr %i.da, align 4, !tbaa !90
  %i.dj = fdiv float %i.di, %i.cx
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv
  store float %i.dj, ptr %i.dk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !966

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cq, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bw, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 376 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dp, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.du, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.du) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 392
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 400
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 416
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ee = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ee, ptr %i.dl, align 8, !tbaa !92
  %i.ef = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ef, ptr %i.dy, align 8, !tbaa !93
  %i.eg = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.eg, ptr %i.dz, align 8, !tbaa !94
  %i.eh = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !78
  %i.ej = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ej, ptr %i.ea, align 8, !tbaa !81
  %i.ek = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ek, ptr %i.eb, align 8, !tbaa !88
  %i.el = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.em = phi ptr [ %i.ed, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.em, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p
end_hunk_4
begin_hunk_5_@_ZN11NetOptimize27fuse_innerproduct_batchnormEv:bb.a
  %wide.load274 = load <4 x float>, ptr %i.gz, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  %i.ha = fmul <4 x float> %broadcast.splat, %wide.load
  %i.hb = fmul <4 x float> %broadcast.splat, %wide.load274
  store <4 x float> %i.ha, ptr %i.gy, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  store <4 x float> %i.hb, ptr %i.gz, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !970

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hd = load float, ptr %i.gw, align 4, !tbaa !90
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223.prol ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !90
  %i.hg = fmul float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !971

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hh = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv228 ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !90
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !90
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !90
  %i.hp = call float @llvm.fmuladd.f32(float %i.hk, float %i.hm, float %i.ho)
  store float %i.hp, ptr %i.hj, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !972

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hq = load float, ptr %i.gw, align 4, !tbaa !90
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90
  %i.ht = fmul float %i.hq, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !90
  %i.hu = load float, ptr %i.gw, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !90
  %i.hy = fmul float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !90
  %i.hz = load float, ptr %i.gw, align 4, !tbaa !90
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90
  %i.id = fmul float %i.hz, %i.ic
  store float %i.id, ptr %i.ib, align 4, !tbaa !90
  %i.ie = load float, ptr %i.gw, align 4, !tbaa !90
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv223
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 12 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !90
  %i.ii = fmul float %i.ie, %i.ih
  store float %i.ii, ptr %i.ig, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !973

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ij = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ij, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !974

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.ct, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize21fuse_innerproduct_addEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not116 = icmp eq ptr %i.d, %i.e
  br i1 %.not116, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge115:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph114, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.067112 = phi i64 [ 0, %.lr.ph114 ], [ %i.hd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.067112
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 12
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8030569537813245513
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, 1952675172
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not97 = icmp eq i32 %i.ai, 0
  br i1 %.not97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.066100 = add nuw i64 %.067112, 1              ; 3 uses
  %i.am = icmp ult i64 %.066100, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.066101 = phi i64 [ %.066, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066101
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 8
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = load i64, ptr %i.at, align 1
  %i.av = icmp ne i64 %i.au, 8092820587575929154
  %i.aw = zext i1 %i.av to i32
  %.not98 = icmp eq i32 %i.aw, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 8
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !81
  %i.bf = icmp eq i32 %i.be, %i.al
  br i1 %i.bf, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90
  %.066 = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.066, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !977

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94
  %.066.lcssa = phi i64 [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ], [ %.066101, %bb.c ] ; 4 uses
  %i.bg = icmp eq i64 %.066.lcssa, %i.i
  br i1 %i.bg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066.lcssa
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 208
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !134
  %.not69 = icmp eq i32 %i.bk, 0
  br i1 %.not69, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 212
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !135
  %.not70 = icmp eq i32 %i.bm, 0
  br i1 %.not70, label %.lr.ph105, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

.lr.ph105:                                        ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph105, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread
  %.065104 = phi i64 [ 0, %.lr.ph105 ], [ %i.cl, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58
  %i.bs = icmp eq i64 %i.br, 10
  br i1 %i.bs, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 1
  %i.bw = xor i64 %i.bv, 7008860452498007373
  %i.bx = getelementptr i8, ptr %i.bu, i64 8
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = zext i16 %i.by to i64
  %i.ca = xor i64 %i.bz, 24948
  %i.cb = or i64 %i.bw, %i.ca
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not99 = icmp eq i32 %i.cd, 0
  br i1 %.not99, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !80
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !81
  %i.ck = icmp eq i32 %i.cg, %i.cj
  br i1 %i.ck, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread: ; preds = %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.cl = add nuw i64 %.065104, 1                 ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cl, %.066.lcssa
  br i1 %exitcond118.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.f, !llvm.loop !978

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96
  %i.cm = icmp eq i64 %.065104, %.066.lcssa
  br i1 %i.cm, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.065104
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !53 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !170 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !176 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, %i.cq
  br i1 %i.ct, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 212
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !177
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 220
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !178
  %i.cz = icmp eq i32 %i.cy, 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.064 = phi i1 [ false, %bb.g ], [ %i.cz, %bb.i ], [ false, %bb.h ] ; 2 uses
  %i.da = icmp eq i32 %i.cs, 1
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %i.co, i64 212
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !177
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %.split, label %bb.l

.split:                                           ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 220
  %i.df = load i32, ptr %i.de, align 4, !tbaa !178
  %i.dg = icmp eq i32 %i.df, %i.cq
  %spec.select72 = select i1 %i.dg, i1 true, i1 %.064
  br i1 %spec.select72, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.064, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %.split, %bb.l
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !57
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.179, ptr noundef %i.dj, ptr noundef %i.dl) #27 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  call void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %1, ptr noundef nonnull align 8 dereferenceable(72) %i.dn, i32 noundef %i.cq, ptr noundef null)
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 212 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !171
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  store i32 1, ptr %i.do, align 4, !tbaa !171
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 376 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, %1
  br i1 %i.ds, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i = icmp eq ptr %i.dt, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = atomicrmw add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dv = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77 ; 2 uses
  %.not.i74 = icmp eq ptr %i.dw, null
  br i1 %.not.i74, label %.noexc, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.s, label %.noexc

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %.noexc unwind label %bb.ad, !inline_history !1

bb.u:                                             ; preds = %bb.s
  %.not.i87 = icmp eq ptr %i.eb, null
  br i1 %.not.i87, label %.noexc, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.eb) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.r, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.u, i64 392
  %i.eg = getelementptr inbounds nuw i8, ptr %i.u, i64 400
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 416
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ek = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ek, ptr %i.dr, align 8, !tbaa !92
  %i.el = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !93
  %i.em = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.em, ptr %i.eg, align 8, !tbaa !94
  %i.en = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eo = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !78
  %i.ep = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ep, ptr %i.eh, align 8, !tbaa !81
  %i.eq = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.eq, ptr %i.ei, align 8, !tbaa !88
  %i.er = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.er, ptr %i.ej, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

bb.w:                                             ; preds = %bb.m
  %i.es = getelementptr inbounds nuw i8, ptr %i.u, i64 376
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !79 ; 8 uses
  %i.eu = icmp sgt i32 %i.cq, 0
  br i1 %i.eu, label %.lr.ph111, label %_ZN4ncnn3MataSERKS0_.exit

.lr.ph111:                                        ; preds = %bb.w
  %i.ev = load ptr, ptr %1, align 16, !tbaa !79   ; 8 uses
  %wide.trip.count = zext nneg i32 %i.cq to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.cq, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111
  %i.ew = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %i.et, i64 %i.ew
  %scevgep145 = getelementptr i8, ptr %i.ev, i64 %i.ew
  %bound0 = icmp ult ptr %i.et, %scevgep145
  %bound1 = icmp ult ptr %i.ev, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ex, align 4, !tbaa !90, !alias.scope !986, !noalias !987
  %wide.load146 = load <4 x float>, ptr %i.ey, align 4, !tbaa !90, !alias.scope !986, !noalias !987
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load147 = load <4 x float>, ptr %i.ez, align 4, !tbaa !90, !alias.scope !987
  %wide.load148 = load <4 x float>, ptr %i.fa, align 4, !tbaa !90, !alias.scope !987
  %i.fb = fadd <4 x float> %wide.load, %wide.load147
  %i.fc = fadd <4 x float> %wide.load146, %wide.load148
  store <4 x float> %i.fb, ptr %i.ex, align 4, !tbaa !90, !alias.scope !986, !noalias !987
  store <4 x float> %i.fc, ptr %i.ey, align 4, !tbaa !90, !alias.scope !986, !noalias !987
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !982

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph111, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph111 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.prol ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !90
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !90
  %i.fi = fadd float %i.ff, %i.fh
  store float %i.fi, ptr %i.fe, align 4, !tbaa !90
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !983

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv ; 2 uses
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !90
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !90
  %i.fp = fadd float %i.fm, %i.fo
  store float %i.fp, ptr %i.fl, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !90
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !90
  %i.fu = fadd float %i.fr, %i.ft
  store float %i.fu, ptr %i.fq, align 4, !tbaa !90
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.1 ; 2 uses
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !90
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next.1
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !90
  %i.fz = fadd float %i.fw, %i.fy
  store float %i.fz, ptr %i.fv, align 4, !tbaa !90
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.2 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !90
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !90
  %i.ge = fadd float %i.gb, %i.gd
  store float %i.ge, ptr %i.ga, align 4, !tbaa !90
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond120.not.3, label %_ZN4ncnn3MataSERKS0_.exit, label %scalar.ph, !llvm.loop !984

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.w, %.noexc, %bb.n
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !80
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !81 ; 2 uses
  %i.gi = load ptr, ptr %i.aj, align 8, !tbaa !80
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !81
  %i.gj = trunc i64 %.067112 to i32
  %i.gk = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gl = sext i32 %i.gh to i64
  %i.gm = load ptr, ptr %i.gk, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw [112 x i8], ptr %i.gm, i64 %i.gl
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store i32 %i.gj, ptr %i.go, align 8, !tbaa !118
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !58
  %i.gs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i64 noundef 0, i64 noundef %i.gr, ptr noundef nonnull @.str.8, i64 noundef 9)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.gt = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i76 = icmp eq ptr %i.gt, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.gu = atomicrmw add ptr %i.gt, i32 -1 acq_rel, align 4
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit73

bb.y:                                             ; preds = %bb.x
  %i.gw = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gw, null
  %i.gx = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !28
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  invoke void %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef %i.gx)
          to label %_ZN4ncnn3MatD2Ev.exit73 unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i85 = icmp eq ptr %i.gx, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit73, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.gx) #25
  br label %_ZN4ncnn3MatD2Ev.exit73

bb.ac:                                            ; preds = %bb.z
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  %i.hc = extractvalue { ptr, i32 } %i.hb, 0
  call void @__clang_call_terminate(ptr %i.hc) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit73:                          ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread, %bb.b, %.split, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread96._crit_edge, %bb.l, %_ZN4ncnn3MatD2Ev.exit73, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hd = add nuw i64 %.067112, 1                 ; 2 uses
  %exitcond121.not = icmp eq i64 %i.hd, %i.i
  br i1 %exitcond121.not, label %._crit_edge115, label %bb.b, !llvm.loop !985

bb.ad:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit, %bb.t
  %i.he = landingpad { ptr, i32 }
          cleanup
  %i.hf = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i80 = icmp eq ptr %i.hf, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = atomicrmw add ptr %i.hf, i32 -1 acq_rel, align 4
  %i.hh = icmp eq i32 %i.hg, 1
  br i1 %i.hh, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit

bb.af:                                            ; preds = %bb.ae
  %i.hi = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i81 = icmp eq ptr %i.hi, null
  %i.hj = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i81, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !28
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8
  invoke void %i.hm(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.aj, !inline_history !1

bb.ah:                                            ; preds = %bb.af
  %.not.i84 = icmp eq ptr %i.hj, null
  br i1 %.not.i84, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.hj) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.aj:                                            ; preds = %bb.ag
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ae, %bb.ad, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.he
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize25fuse_innerproduct_dropoutEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not84 = icmp eq ptr %i.d, %i.e
  br i1 %.not84, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge83:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.05480 = phi i64 [ 0, %.lr.ph82 ], [ %i.dk, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05480
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 12
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8030569537813245513
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i32, ptr %i.v, align 1
  %i.x = zext i32 %i.w to i64
  %i.y = xor i64 %i.x, 1952675172
  %i.z = or i64 %i.u, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %.05365 = add nuw i64 %.05480, 1                ; 3 uses
  %i.af = icmp ult i64 %.05365, %i.i
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread
  %.05366 = phi i64 [ %.053, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread ], [ %.05365, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05366
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = icmp eq i64 %i.aj, 7
  br i1 %i.ak, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60: ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = xor i32 %i.an, 1886351940
  %i.ap = getelementptr i8, ptr %i.am, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1953853296
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not64 = icmp eq i32 %i.au, 0
  br i1 %.not64, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread62, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread62: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !80 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not = icmp eq i64 %i.bb, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread62
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !81
  %i.bd = icmp eq i32 %i.bc, %i.ae
  br i1 %i.bd, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread62, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60
  %.053 = add nuw i64 %.05366, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.053, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !988

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61
  %.053.lcssa = phi i64 [ %.05365, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread61 ], [ %.05366, %bb.c ] ; 2 uses
  %i.be = icmp eq i64 %.053.lcssa, %i.i
  br i1 %i.be, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.053.lcssa
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53 ; 5 uses
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.180, ptr noundef %i.bj, ptr noundef %i.bl) #27 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 208
  %i.bo = load float, ptr %i.bn, align 8, !tbaa !163 ; 5 uses
  %i.bp = fcmp une float %i.bo, 1.000000e+00
  br i1 %i.bp, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !170 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !172
  %i.bu = sdiv i32 %i.bt, %i.br                   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 304
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79
  %i.bx = icmp sgt i32 %i.br, 0                   ; 2 uses
  %i.by = icmp sgt i32 %i.bu, 0
  %or.cond = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond, label %.lr.ph71.preheader, label %._crit_edge76.split

.lr.ph71.preheader:                               ; preds = %bb.e
  %i.bz = zext nneg i32 %i.bu to i64              ; 4 uses
  %wide.trip.count90 = zext nneg i32 %i.br to i64
  %min.iters.check107 = icmp ult i32 %i.bu, 8
  %n.vec109 = and i64 %i.bz, 2147483640           ; 3 uses
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n118 = icmp eq i64 %n.vec109, %i.bz
  br label %.lr.ph71

._crit_edge76.split:                              ; preds = %._crit_edge72, %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !171
  %.not58 = icmp eq i32 %i.cb, 0
  br i1 %.not58, label %.loopexit, label %bb.f

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %._crit_edge72
  %indvars.iv87 = phi i64 [ 0, %.lr.ph71.preheader ], [ %indvars.iv.next88, %._crit_edge72 ] ; 2 uses
  %i.cc = mul nuw nsw i64 %indvars.iv87, %i.bz
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cc ; 2 uses
  br i1 %min.iters.check107, label %scalar.ph106.preheader, label %vector.body112

vector.body112:                                   ; preds = %.lr.ph71, %vector.body112
  %index113 = phi i64 [ %index.next116, %vector.body112 ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index113 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load114 = load <4 x float>, ptr %i.ce, align 4, !tbaa !90
  %wide.load115 = load <4 x float>, ptr %i.cf, align 4, !tbaa !90
  %i.cg = fmul <4 x float> %broadcast.splat111, %wide.load114
  %i.ch = fmul <4 x float> %broadcast.splat111, %wide.load115
  store <4 x float> %i.cg, ptr %i.ce, align 4, !tbaa !90
  store <4 x float> %i.ch, ptr %i.cf, align 4, !tbaa !90
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.ci, label %middle.block117, label %vector.body112, !llvm.loop !989

middle.block117:                                  ; preds = %vector.body112
  br i1 %cmp.n118, label %._crit_edge72, label %scalar.ph106.preheader

scalar.ph106.preheader:                           ; preds = %.lr.ph71, %middle.block117
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph71 ], [ %n.vec109, %middle.block117 ]
  br label %scalar.ph106

._crit_edge72:                                    ; preds = %scalar.ph106, %middle.block117
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %._crit_edge76.split, label %.lr.ph71, !llvm.loop !990

scalar.ph106:                                     ; preds = %scalar.ph106.preheader, %scalar.ph106
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph106 ], [ %indvars.iv.ph, %scalar.ph106.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !90
  %i.cl = fmul float %i.bo, %i.ck
  store float %i.cl, ptr %i.cj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next, %i.bz
  br i1 %exitcond86.not, label %._crit_edge72, label %scalar.ph106, !llvm.loop !991

bb.f:                                             ; preds = %._crit_edge76.split
  %i.cm = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  br i1 %i.bx, label %.lr.ph79.preheader, label %.loopexit

.lr.ph79.preheader:                               ; preds = %bb.f
  %wide.trip.count95 = zext nneg i32 %i.br to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.br, 8
  br i1 %min.iters.check, label %.lr.ph79.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph79.preheader
  %n.vec = and i64 %wide.trip.count95, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.co, align 4, !tbaa !90
  %wide.load105 = load <4 x float>, ptr %i.cp, align 4, !tbaa !90
  %i.cq = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cr = fmul <4 x float> %broadcast.splat, %wide.load105
  store <4 x float> %i.cq, ptr %i.co, align 4, !tbaa !90
  store <4 x float> %i.cr, ptr %i.cp, align 4, !tbaa !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count95
  br i1 %cmp.n, label %.loopexit, label %.lr.ph79.preheader120

.lr.ph79.preheader120:                            ; preds = %.lr.ph79.preheader, %middle.block
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph79.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader120, %.lr.ph79
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph79 ], [ %indvars.iv92.ph, %.lr.ph79.preheader120 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv92 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !90
  %i.cv = fmul float %i.bo, %i.cu
  store float %i.cv, ptr %i.ct, align 4, !tbaa !90
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph79, !llvm.loop !993

.loopexit:                                        ; preds = %.lr.ph79, %middle.block, %bb.f, %._crit_edge76.split, %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !80
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !81 ; 2 uses
  %i.cz = load ptr, ptr %i.ac, align 8, !tbaa !80
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !81
  %i.da = trunc i64 %.05480 to i32
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.dc = sext i32 %i.cy to i64
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [112 x i8], ptr %i.dd, i64 %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store i32 %i.da, ptr %i.df, align 8, !tbaa !118
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !58
  %i.dj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, i64 noundef 0, i64 noundef %i.di, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit60.thread, %bb.b, %.loopexit, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dk = add nuw i64 %.05480, 1                  ; 2 uses
  %exitcond97.not = icmp eq i64 %i.dk, %i.i
  br i1 %exitcond97.not, label %._crit_edge83, label %bb.b, !llvm.loop !994
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize27fuse_convolution_activationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 8 uses
  %.not412 = icmp eq ptr %i.d, %i.e
  br i1 %.not412, label %._crit_edge411, label %.lr.ph401

.lr.ph401:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

.lr.ph410:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.br

bb.b:                                             ; preds = %.lr.ph401, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0108399 = phi i64 [ 0, %.lr.ph401 ], [ %i.ke, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0108399
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53 ; 36 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !58
  %i.ba = icmp eq i64 %i.az, 11
  br i1 %i.ba, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 1
  %i.be = xor i64 %i.bd, 8391732706658905923
  %i.bf = getelementptr i8, ptr %i.bc, i64 3
  %i.bg = load i64, ptr %i.bf, align 1
  %i.bh = xor i64 %i.bg, 7957695015494119286
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ne i64 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %.not290 = icmp eq i32 %i.bk, 0
  br i1 %.not290, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 136 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !80
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !81
  %.0113395 = add nuw i64 %.0108399, 1            ; 3 uses
  %i.bo = icmp ult i64 %.0113395, %i.i
  br i1 %i.bo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread
  %.0113396 = phi i64 [ %.0113, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread ], [ %.0113395, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265 ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0113396
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.bt, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit234
    i64 9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230: ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !57 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = icmp ne i32 %i.bv, 1431070034
  %i.bx = zext i1 %i.bw to i32
  %.not291 = icmp eq i32 %i.bx, 0
  br i1 %.not291, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit232

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit232: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230
  %i.by = load i32, ptr %i.bu, align 1
  %i.bz = icmp ne i32 %i.by, 1885957187
  %i.ca = zext i1 %i.bz to i32
  %.not292 = icmp eq i32 %i.ca, 0
  br i1 %.not292, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit234: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !57
  %bcmp.i.i233 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.181, i64 %i.bt)
  %.not293 = icmp eq i32 %bcmp.i.i233, 0
  br i1 %.not293, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit232
  %bcmp.i.i235 = call i32 @bcmp(ptr nonnull %i.bu, ptr nonnull @.str.182, i64 %i.bt)
  %.not294 = icmp eq i32 %bcmp.i.i235, 0
  br i1 %.not294, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238: ; preds = %.lr.ph
  %.pre418 = load ptr, ptr %i.br, align 8, !tbaa !57
  %bcmp.i.i237 = call i32 @bcmp(ptr %.pre418, ptr nonnull @.str.110, i64 %i.bt)
  %.not295 = icmp eq i32 %bcmp.i.i237, 0
  br i1 %.not295, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit234, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit232, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 120
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !80 ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %.not117 = icmp eq i64 %i.ch, 4
  br i1 %.not117, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !81
  %i.cj = icmp eq i32 %i.ci, %i.bn
  br i1 %i.cj, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit234, %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit230.thread266, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238
  %.0113 = add nuw i64 %.0113396, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0113, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !995

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265
  %.0113.lcssa = phi i64 [ %.0113395, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread265 ], [ %.0113396, %bb.c ] ; 2 uses
  %i.ck = icmp eq i64 %.0113.lcssa, %i.i
  br i1 %i.ck, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0113.lcssa
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !53 ; 9 uses
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.183, ptr noundef %i.cp, ptr noundef %i.cr) #27 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 48 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.cv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !57 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = icmp ne i32 %i.cx, 1431070034
  %i.cz = zext i1 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit240

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 208 ; 2 uses
  %i.dc = load float, ptr %i.db, align 8, !tbaa !197
  %i.dd = fcmp oeq float %i.dc, 0.000000e+00
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 268 ; 2 uses
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 1, ptr %i.de, align 4, !tbaa !145
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 2, ptr %i.de, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.ad, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 272 ; 4 uses
  %i.dg = icmp eq ptr %i.df, %1
  %.pre423 = load ptr, ptr %i.x, align 8, !tbaa !77 ; 3 uses
  br i1 %i.dg, label %_ZN4ncnn3MataSERKS0_.exit141, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i139 = icmp eq ptr %.pre423, null
  br i1 %.not.i139, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dh = atomicrmw add ptr %.pre423, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.ax, i64 280
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !77 ; 2 uses
  %.not.i142 = icmp eq ptr %i.dj, null
  br i1 %.not.i142, label %.noexc140, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = atomicrmw add ptr %i.dj, i32 -1 acq_rel, align 4
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.k, label %.noexc140

bb.k:                                             ; preds = %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef %i.do)
          to label %.noexc140 unwind label %bb.u, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i227 = icmp eq ptr %i.do, null
  br i1 %.not.i227, label %.noexc140, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.do) #25
  br label %.noexc140

.noexc140:                                        ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ax, i64 288
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ax, i64 296
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 328
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ax, i64 336
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.dy = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.dy, ptr %i.df, align 8, !tbaa !92
  %i.dz = load i64, ptr %i.y, align 16, !tbaa !93
  store i64 %i.dz, ptr %i.ds, align 8, !tbaa !93
  %i.ea = load i32, ptr %i.z, align 8, !tbaa !94
  store i32 %i.ea, ptr %i.dt, align 8, !tbaa !94
  %i.eb = load ptr, ptr %i.aa, align 16, !tbaa !78
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !78
  %i.ed = load <4 x i32>, ptr %i.ab, align 8, !tbaa !81
  store <4 x i32> %i.ed, ptr %i.du, align 8, !tbaa !81
  %i.ee = load i32, ptr %i.ac, align 8, !tbaa !88
  store i32 %i.ee, ptr %i.dv, align 8, !tbaa !88
  %i.ef = load i64, ptr %i.ad, align 16, !tbaa !76
  store i64 %i.ef, ptr %i.dw, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit141

_ZN4ncnn3MataSERKS0_.exit141:                     ; preds = %.noexc140, %bb.f
  %i.eg = phi ptr [ %i.dx, %.noexc140 ], [ %.pre423, %bb.f ] ; 2 uses
  %.not.i160 = icmp eq ptr %i.eg, null
  br i1 %.not.i160, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit141
  %i.eh = atomicrmw add ptr %i.eg, i32 -1 acq_rel, align 4
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit129

bb.p:                                             ; preds = %bb.o
  %i.ej = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i161 = icmp eq ptr %i.ej, null
  %i.ek = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i161, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !28
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.ek)
          to label %_ZN4ncnn3MatD2Ev.exit129 unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.p
  %.not.i217 = icmp eq ptr %i.ek, null
  br i1 %.not.i217, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.ek) #25
  br label %_ZN4ncnn3MatD2Ev.exit129

bb.t:                                             ; preds = %bb.q
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit129:                         ; preds = %bb.o, %_ZN4ncnn3MataSERKS0_.exit141, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.eq = load float, ptr %i.db, align 8, !tbaa !197
  %i.er = load ptr, ptr %i.df, align 8, !tbaa !79
  store float %i.eq, ptr %i.er, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275

bb.u:                                             ; preds = %bb.l
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !77  ; 2 uses
  %.not.i164 = icmp eq ptr %i.et, null
  br i1 %.not.i164, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = atomicrmw add ptr %i.et, i32 -1 acq_rel, align 4
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit128

bb.w:                                             ; preds = %bb.v
  %i.ew = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i165 = icmp eq ptr %i.ew, null
  %i.ex = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i165, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !28
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef %i.ex)
          to label %_ZN4ncnn3MatD2Ev.exit128 unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i215 = icmp eq ptr %i.ex, null
  br i1 %.not.i215, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ex) #25
  br label %_ZN4ncnn3MatD2Ev.exit128

end_hunk_5
begin_hunk_6_@_ZN11NetOptimize27fuse_convolution_activationEv:bb.a
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.bf, label %_ZN4ncnn3MatD2Ev.exit125

bb.bf:                                            ; preds = %bb.be
  %i.iu = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i177 = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i177, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !28
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  invoke void %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iu, ptr noundef %i.iv)
          to label %_ZN4ncnn3MatD2Ev.exit125 unwind label %bb.bj, !inline_history !1

bb.bh:                                            ; preds = %bb.bf
  %.not.i209 = icmp eq ptr %i.iv, null
  br i1 %.not.i209, label %_ZN4ncnn3MatD2Ev.exit125, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.iv) #25
  br label %_ZN4ncnn3MatD2Ev.exit125

bb.bj:                                            ; preds = %bb.bg
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit125:                         ; preds = %bb.be, %_ZN4ncnn3MataSERKS0_.exit135, %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cm, i64 208
  %i.jc = load float, ptr %i.jb, align 8, !tbaa !167
  %i.jd = load ptr, ptr %i.hq, align 8, !tbaa !79 ; 2 uses
  store float %i.jc, ptr %i.jd, align 4, !tbaa !90
  %i.je = getelementptr inbounds nuw i8, ptr %i.cm, i64 212
  %i.jf = load float, ptr %i.je, align 4, !tbaa !168
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store float %i.jf, ptr %i.jg, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275

bb.bk:                                            ; preds = %bb.bb
  %i.jh = landingpad { ptr, i32 }
          cleanup
  %i.ji = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i180 = icmp eq ptr %i.ji, null
  br i1 %.not.i180, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jj = atomicrmw add ptr %i.ji, i32 -1 acq_rel, align 4
  %i.jk = icmp eq i32 %i.jj, 1
  br i1 %i.jk, label %bb.bm, label %_ZN4ncnn3MatD2Ev.exit124

bb.bm:                                            ; preds = %bb.bl
  %i.jl = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i181 = icmp eq ptr %i.jl, null
  %i.jm = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i181, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jn = load ptr, ptr %i.jl, align 8, !tbaa !28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  invoke void %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jl, ptr noundef %i.jm)
          to label %_ZN4ncnn3MatD2Ev.exit124 unwind label %bb.bq, !inline_history !1

bb.bo:                                            ; preds = %bb.bm
  %.not.i207 = icmp eq ptr %i.jm, null
  br i1 %.not.i207, label %_ZN4ncnn3MatD2Ev.exit124, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.jm) #25
  br label %_ZN4ncnn3MatD2Ev.exit124

bb.bq:                                            ; preds = %bb.bn
  %i.jq = landingpad { ptr, i32 }
          catch ptr null
  %i.jr = extractvalue { ptr, i32 } %i.jq, 0
  call void @__clang_call_terminate(ptr %i.jr) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit124:                         ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.dm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit129, %_ZN4ncnn3MatD2Ev.exit127, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit244.thread, %_ZN4ncnn3MatD2Ev.exit125, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit242.thread
  %i.js = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !80
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !81 ; 2 uses
  %i.jv = load ptr, ptr %i.bl, align 8, !tbaa !80
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !81
  %i.jw = trunc i64 %.0108399 to i32
  %i.jx = load ptr, ptr %i.ae, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.jy = sext i32 %i.ju to i64
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !51
  %i.ka = getelementptr inbounds nuw [112 x i8], ptr %i.jz, i64 %i.jy
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  store i32 %i.jw, ptr %i.kb, align 8, !tbaa !118
  %i.kc = load i64, ptr %i.cu, align 8, !tbaa !58
  %i.kd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ct, i64 noundef 0, i64 noundef %i.kc, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit238.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit246.thread275, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ke = add nuw i64 %.0108399, 1                ; 2 uses
  %exitcond414.not = icmp eq i64 %i.ke, %i.i
  br i1 %exitcond414.not, label %.lr.ph410, label %bb.b, !llvm.loop !996

._crit_edge411:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread, %bb.a
  ret i32 0

bb.br:                                            ; preds = %.lr.ph410, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread
  %.0107409 = phi i64 [ 0, %.lr.ph410 ], [ %i.rl, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread ] ; 4 uses
  %i.kf = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !46 ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0107409
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !53 ; 26 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !58
  %i.kl = icmp eq i64 %i.kk, 13
  br i1 %i.kl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248: ; preds = %bb.br
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !57 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 1
  %i.kp = xor i64 %i.ko, 8391732706658905923
  %i.kq = getelementptr i8, ptr %i.kn, i64 5
  %i.kr = load i64, ptr %i.kq, align 1
  %i.ks = xor i64 %i.kr, 4913830093227586924
  %i.kt = or i64 %i.kp, %i.ks
  %i.ku = icmp ne i64 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %.not285 = icmp eq i32 %i.kv, 0
  br i1 %.not285, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 136 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !80
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !81
  %.0402 = add nuw i64 %.0107409, 1               ; 3 uses
  %i.kz = icmp ult i64 %.0402, %i.i
  br i1 %i.kz, label %.lr.ph404, label %._crit_edge405

.lr.ph404:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread
  %.0403 = phi i64 [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread ], [ %.0402, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276 ] ; 3 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0403
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !53 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !58 ; 3 uses
  switch i64 %i.le, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250: ; preds = %.lr.ph404
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !57 ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 1
  %i.lh = icmp ne i32 %i.lg, 1431070034
  %i.li = zext i1 %i.lh to i32
  %.not286 = icmp eq i32 %i.li, 0
  br i1 %.not286, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250
  %i.lj = load i32, ptr %i.lf, align 1
  %i.lk = icmp ne i32 %i.lj, 1885957187
  %i.ll = zext i1 %i.lk to i32
  %.not287 = icmp eq i32 %i.ll, 0
  br i1 %.not287, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254: ; preds = %.lr.ph404
  %.pre424 = load ptr, ptr %i.lc, align 8, !tbaa !57
  %bcmp.i.i253 = call i32 @bcmp(ptr %.pre424, ptr nonnull @.str.181, i64 %i.le)
  %.not288 = icmp eq i32 %bcmp.i.i253, 0
  br i1 %.not288, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252
  %bcmp.i.i255 = call i32 @bcmp(ptr nonnull %i.lf, ptr nonnull @.str.182, i64 %i.le)
  %.not289 = icmp eq i32 %bcmp.i.i255, 0
  br i1 %.not289, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lb, i64 112
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lb, i64 120
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !91
  %i.lp = load ptr, ptr %i.lm, align 8, !tbaa !80 ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = ptrtoint ptr %i.lp to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %.not = icmp eq i64 %i.ls, 4
  br i1 %.not, label %bb.bs, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread

bb.bs:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277
  %i.lt = load i32, ptr %i.lp, align 4, !tbaa !81
  %i.lu = icmp eq i32 %i.lt, %i.ky
  br i1 %i.lu, label %._crit_edge405, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit254, %.lr.ph404, %bb.bs, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit250.thread277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256
  %.0 = add nuw i64 %.0403, 1                     ; 2 uses
  %exitcond415.not = icmp eq i64 %.0, %i.i
  br i1 %exitcond415.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread, label %.lr.ph404, !llvm.loop !997

._crit_edge405:                                   ; preds = %bb.bs, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276
  %.0.lcssa = phi i64 [ %.0402, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread276 ], [ %.0403, %bb.bs ] ; 2 uses
  %i.lv = icmp eq i64 %.0.lcssa, %i.i
  br i1 %i.lv, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge405
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0.lcssa
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !53 ; 7 uses
  %i.ly = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !57
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 80
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !57
  %i.md = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ly, ptr noundef nonnull @.str.184, ptr noundef %i.ma, ptr noundef %i.mc) #27 ; 0 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 48 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lx, i64 56 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !58 ; 3 uses
  switch i64 %i.mg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258: ; preds = %bb.bt
  %i.mh = load ptr, ptr %i.me, align 8, !tbaa !57 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 1
  %i.mj = icmp ne i32 %i.mi, 1431070034
  %i.mk = zext i1 %i.mj to i32
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 208 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 8, !tbaa !197
  %i.mo = fcmp oeq float %i.mn, 0.000000e+00
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ki, i64 244 ; 2 uses
  br i1 %i.mo, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258.thread
  store i32 1, ptr %i.mp, align 4, !tbaa !147
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

bb.bv:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit258.thread
  store i32 2, ptr %i.mp, align 4, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 0, ptr %i.as, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.ap, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ki, i64 248 ; 4 uses
  %i.mr = icmp eq ptr %i.mq, %4
  %.pre427 = load ptr, ptr %i.am, align 8, !tbaa !77 ; 3 uses
  br i1 %i.mr, label %_ZN4ncnn3MataSERKS0_.exit132, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not.i130 = icmp eq ptr %.pre427, null
  br i1 %.not.i130, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ms = atomicrmw add ptr %.pre427, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ki, i64 256
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !77 ; 2 uses
  %.not.i152 = icmp eq ptr %i.mu, null
  br i1 %.not.i152, label %.noexc131, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mv = atomicrmw add ptr %i.mu, i32 -1 acq_rel, align 4
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.ca, label %.noexc131

bb.ca:                                            ; preds = %bb.bz
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ki, i64 280
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !78 ; 3 uses
  %.not3.i153 = icmp eq ptr %i.my, null
  %i.mz = load ptr, ptr %i.mq, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i153, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !28
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8
  invoke void %i.nc(ptr noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef %i.mz)
          to label %.noexc131 unwind label %bb.ck, !inline_history !1

bb.cc:                                            ; preds = %bb.ca
  %.not.i221 = icmp eq ptr %i.mz, null
  br i1 %.not.i221, label %.noexc131, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @free(ptr noundef nonnull %i.mz) #25
  br label %.noexc131

.noexc131:                                        ; preds = %bb.bz, %bb.by, %bb.cb, %bb.cc, %bb.cd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ki, i64 264
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ki, i64 272
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ki, i64 288
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ki, i64 304
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ki, i64 312
  %i.ni = load ptr, ptr %i.am, align 8, !tbaa !77
  %i.nj = load <2 x ptr>, ptr %4, align 16, !tbaa !92
  store <2 x ptr> %i.nj, ptr %i.mq, align 8, !tbaa !92
  %i.nk = load i64, ptr %i.an, align 16, !tbaa !93
  store i64 %i.nk, ptr %i.nd, align 8, !tbaa !93
  %i.nl = load i32, ptr %i.ao, align 8, !tbaa !94
  store i32 %i.nl, ptr %i.ne, align 8, !tbaa !94
  %i.nm = load ptr, ptr %i.ap, align 16, !tbaa !78
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ki, i64 280
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !78
  %i.no = load <4 x i32>, ptr %i.aq, align 8, !tbaa !81
  store <4 x i32> %i.no, ptr %i.nf, align 8, !tbaa !81
  %i.np = load i32, ptr %i.ar, align 8, !tbaa !88
  store i32 %i.np, ptr %i.ng, align 8, !tbaa !88
  %i.nq = load i64, ptr %i.as, align 16, !tbaa !76
  store i64 %i.nq, ptr %i.nh, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit132

_ZN4ncnn3MataSERKS0_.exit132:                     ; preds = %.noexc131, %bb.bv
  %i.nr = phi ptr [ %i.ni, %.noexc131 ], [ %.pre427, %bb.bv ] ; 2 uses
  %.not.i184 = icmp eq ptr %i.nr, null
  br i1 %.not.i184, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit132
  %i.ns = atomicrmw add ptr %i.nr, i32 -1 acq_rel, align 4
  %i.nt = icmp eq i32 %i.ns, 1
  br i1 %i.nt, label %bb.cf, label %_ZN4ncnn3MatD2Ev.exit123

bb.cf:                                            ; preds = %bb.ce
  %i.nu = load ptr, ptr %i.ap, align 16, !tbaa !78 ; 3 uses
  %.not3.i185 = icmp eq ptr %i.nu, null
  %i.nv = load ptr, ptr %4, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i185, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nw = load ptr, ptr %i.nu, align 8, !tbaa !28
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  invoke void %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.nu, ptr noundef %i.nv)
          to label %_ZN4ncnn3MatD2Ev.exit123 unwind label %bb.cj, !inline_history !1

bb.ch:                                            ; preds = %bb.cf
  %.not.i205 = icmp eq ptr %i.nv, null
  br i1 %.not.i205, label %_ZN4ncnn3MatD2Ev.exit123, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @free(ptr noundef nonnull %i.nv) #25
  br label %_ZN4ncnn3MatD2Ev.exit123

bb.cj:                                            ; preds = %bb.cg
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit123:                         ; preds = %bb.ce, %_ZN4ncnn3MataSERKS0_.exit132, %bb.cg, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ob = load float, ptr %i.mm, align 8, !tbaa !197
  %i.oc = load ptr, ptr %i.mq, align 8, !tbaa !79
  store float %i.ob, ptr %i.oc, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

bb.ck:                                            ; preds = %bb.cb
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = load ptr, ptr %i.am, align 8, !tbaa !77 ; 2 uses
  %.not.i188 = icmp eq ptr %i.oe, null
  br i1 %.not.i188, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.of = atomicrmw add ptr %i.oe, i32 -1 acq_rel, align 4
  %i.og = icmp eq i32 %i.of, 1
  br i1 %i.og, label %bb.cm, label %_ZN4ncnn3MatD2Ev.exit122

bb.cm:                                            ; preds = %bb.cl
  %i.oh = load ptr, ptr %i.ap, align 16, !tbaa !78 ; 3 uses
  %.not3.i189 = icmp eq ptr %i.oh, null
  %i.oi = load ptr, ptr %4, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i189, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.oj = load ptr, ptr %i.oh, align 8, !tbaa !28
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8
  invoke void %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oh, ptr noundef %i.oi)
          to label %_ZN4ncnn3MatD2Ev.exit122 unwind label %bb.cq, !inline_history !1

bb.co:                                            ; preds = %bb.cm
  %.not.i203 = icmp eq ptr %i.oi, null
  br i1 %.not.i203, label %_ZN4ncnn3MatD2Ev.exit122, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @free(ptr noundef nonnull %i.oi) #25
  br label %_ZN4ncnn3MatD2Ev.exit122

bb.cq:                                            ; preds = %bb.cn
end_hunk_6
begin_hunk_7_@_ZN11NetOptimize27fuse_convolution_activationEv:bb.a
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.dg, %bb.df, %bb.di, %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.dm

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262: ; preds = %bb.bt
  %.pre425 = load ptr, ptr %i.me, align 8, !tbaa !57
  %bcmp.i261 = call i32 @bcmp(ptr %.pre425, ptr nonnull @.str.181, i64 %i.mg)
  %i.qv = icmp eq i32 %bcmp.i261, 0
  br i1 %i.qv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ki, i64 244
  store i32 4, ptr %i.qw, align 4, !tbaa !147
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260
  %bcmp.i263 = call i32 @bcmp(ptr nonnull %i.mh, ptr nonnull @.str.182, i64 %i.mg)
  %i.qx = icmp eq i32 %bcmp.i263, 0
  br i1 %i.qx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ki, i64 244
  store i32 5, ptr %i.qy, align 4, !tbaa !147
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262, %bb.bt, %bb.bu, %_ZN4ncnn3MatD2Ev.exit123, %_ZN4ncnn3MatD2Ev.exit121, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit262.thread
  %i.qz = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !80
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !81 ; 2 uses
  %i.rc = load ptr, ptr %i.kw, align 8, !tbaa !80
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !81
  %i.rd = trunc i64 %.0107409 to i32
  %i.re = load ptr, ptr %i.at, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.rf = sext i32 %i.rb to i64
  %i.rg = load ptr, ptr %i.re, align 8, !tbaa !51
  %i.rh = getelementptr inbounds nuw [112 x i8], ptr %i.rg, i64 %i.rf
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  store i32 %i.rd, ptr %i.ri, align 8, !tbaa !118
  %i.rj = load i64, ptr %i.mf, align 8, !tbaa !58
  %i.rk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.me, i64 noundef 0, i64 noundef %i.rj, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit256.thread, %bb.br, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit264.thread284, %._crit_edge405, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit248
  %i.rl = add nuw i64 %.0107409, 1                ; 2 uses
  %exitcond417.not = icmp eq i64 %i.rl, %i.i
  br i1 %exitcond417.not, label %._crit_edge411, label %bb.br, !llvm.loop !998

bb.dm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit122, %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit128, %_ZN4ncnn3MatD2Ev.exit126, %_ZN4ncnn3MatD2Ev.exit124
  %.pn118.pn = phi { ptr, i32 } [ %i.jh, %_ZN4ncnn3MatD2Ev.exit124 ], [ %i.es, %_ZN4ncnn3MatD2Ev.exit128 ], [ %i.gz, %_ZN4ncnn3MatD2Ev.exit126 ], [ %i.od, %_ZN4ncnn3MatD2Ev.exit122 ], [ %i.qk, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn118.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize36fuse_convolutiondepthwise_activationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not228 = icmp eq ptr %i.d, %i.e
  br i1 %.not228, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge227:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph226, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.061224 = phi i64 [ 0, %.lr.ph226 ], [ %i.jq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.061224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 36 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.al = icmp eq i64 %i.ak, 20
  br i1 %i.al, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = load i128, ptr %i.an, align 1
  %i.ap = xor i128 %i.ao, 138844297650319802350679583742711721795
  %i.aq = getelementptr i8, ptr %i.an, i64 16
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = zext i32 %i.ar to i128
  %i.at = xor i128 %i.as, 1702062423
  %i.au = or i128 %i.ap, %i.at
  %i.av = icmp ne i128 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not155 = icmp eq i32 %i.aw, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !81
  %.060220 = add nuw i64 %.061224, 1              ; 3 uses
  %i.ba = icmp ult i64 %.060220, %i.i
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread
  %.060221 = phi i64 [ %.060, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread ], [ %.060220, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.060221
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131
    i64 9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127: ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = icmp ne i32 %i.bh, 1431070034
  %i.bj = zext i1 %i.bi to i32
  %.not156 = icmp eq i32 %i.bj, 0
  br i1 %.not156, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  %i.bk = load i32, ptr %i.bg, align 1
  %i.bl = icmp ne i32 %i.bk, 1885957187
  %i.bm = zext i1 %i.bl to i32
  %.not157 = icmp eq i32 %i.bm, 0
  br i1 %.not157, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !57
  %bcmp.i.i130 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.181, i64 %i.bf)
  %.not158 = icmp eq i32 %bcmp.i.i130, 0
  br i1 %.not158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129
  %bcmp.i.i132 = call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull @.str.182, i64 %i.bf)
  %.not159 = icmp eq i32 %bcmp.i.i132, 0
  br i1 %.not159, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135: ; preds = %.lr.ph
  %.pre230 = load ptr, ptr %i.bd, align 8, !tbaa !57
  %bcmp.i.i134 = call i32 @bcmp(ptr %.pre230, ptr nonnull @.str.110, i64 %i.bf)
  %.not160 = icmp eq i32 %bcmp.i.i134, 0
  br i1 %.not160, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !91
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !80 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.not = icmp eq i64 %i.bt, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !81
  %i.bv = icmp eq i32 %i.bu, %i.az
  br i1 %i.bv, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131, %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135
  %.060 = add nuw i64 %.060221, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.060, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !999

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144
  %.060.lcssa = phi i64 [ %.060220, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144 ], [ %.060221, %bb.c ] ; 2 uses
  %i.bw = icmp eq i64 %.060.lcssa, %i.i
  br i1 %i.bw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.060.lcssa
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53 ; 9 uses
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.185, ptr noundef %i.cb, ptr noundef %i.cd) #27 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !57 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = icmp ne i32 %i.cj, 1431070034
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 208 ; 2 uses
  %i.co = load float, ptr %i.cn, align 8, !tbaa !197
  %i.cp = fcmp oeq float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 272 ; 2 uses
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 1, ptr %i.cq, align 8, !tbaa !152
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 2, ptr %i.cq, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.ad, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 280 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, %1
  %.pre235 = load ptr, ptr %i.x, align 8, !tbaa !77 ; 3 uses
  br i1 %i.cs, label %_ZN4ncnn3MataSERKS0_.exit74, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i72 = icmp eq ptr %.pre235, null
  br i1 %.not.i72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = atomicrmw add ptr %.pre235, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77 ; 2 uses
  %.not.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i75, label %.noexc73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.k, label %.noexc73

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.cz, null
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.da)
          to label %.noexc73 unwind label %bb.u, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i124 = icmp eq ptr %i.da, null
  br i1 %.not.i124, label %.noexc73, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.da) #25
  br label %.noexc73

.noexc73:                                         ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 296
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 304
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 320
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 336
  %i.di = getelementptr inbounds nuw i8, ptr %i.ai, i64 344
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.dk = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.dk, ptr %i.cr, align 8, !tbaa !92
  %i.dl = load i64, ptr %i.y, align 16, !tbaa !93
  store i64 %i.dl, ptr %i.de, align 8, !tbaa !93
  %i.dm = load i32, ptr %i.z, align 8, !tbaa !94
  store i32 %i.dm, ptr %i.df, align 8, !tbaa !94
  %i.dn = load ptr, ptr %i.aa, align 16, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.ai, i64 312
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !78
  %i.dp = load <4 x i32>, ptr %i.ab, align 8, !tbaa !81
  store <4 x i32> %i.dp, ptr %i.dg, align 8, !tbaa !81
  %i.dq = load i32, ptr %i.ac, align 8, !tbaa !88
  store i32 %i.dq, ptr %i.dh, align 8, !tbaa !88
  %i.dr = load i64, ptr %i.ad, align 16, !tbaa !76
  store i64 %i.dr, ptr %i.di, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit74

_ZN4ncnn3MataSERKS0_.exit74:                      ; preds = %.noexc73, %bb.f
  %i.ds = phi ptr [ %i.dj, %.noexc73 ], [ %.pre235, %bb.f ] ; 2 uses
  %.not.i85 = icmp eq ptr %i.ds, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit74
  %i.dt = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %i.du = icmp eq i32 %i.dt, 1
  br i1 %i.du, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit68

bb.p:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i86 = icmp eq ptr %i.dv, null
  %i.dw = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.dw)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.p
  %.not.i118 = icmp eq ptr %i.dw, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.dw) #25
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.t:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.o, %_ZN4ncnn3MataSERKS0_.exit74, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ec = load float, ptr %i.cn, align 8, !tbaa !197
  %i.ed = load ptr, ptr %i.cr, align 8, !tbaa !79
  store float %i.ec, ptr %i.ed, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.u:                                             ; preds = %bb.l
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !77  ; 2 uses
  %.not.i89 = icmp eq ptr %i.ef, null
  br i1 %.not.i89, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = atomicrmw add ptr %i.ef, i32 -1 acq_rel, align 4
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit67

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i90 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej)
          to label %_ZN4ncnn3MatD2Ev.exit67 unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i116 = icmp eq ptr %i.ej, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ej) #25
  br label %_ZN4ncnn3MatD2Ev.exit67

end_hunk_7
begin_hunk_8_@_ZN11NetOptimize36fuse_convolutiondepthwise_activationEv:bb.a
  %i.ip = load ptr, ptr %i.hc, align 8, !tbaa !79 ; 2 uses
  store float %i.io, ptr %i.ip, align 4, !tbaa !90
  %i.iq = getelementptr inbounds nuw i8, ptr %i.by, i64 212
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !168
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.bk:                                            ; preds = %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i105 = icmp eq ptr %i.iu, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.bm, label %_ZN4ncnn3MatD2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i106 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i106, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bq, !inline_history !1

bb.bo:                                            ; preds = %bb.bm
  %.not.i109 = icmp eq ptr %i.iy, null
  br i1 %.not.i109, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.iy) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bq:                                            ; preds = %bb.bn
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.br

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit68, %_ZN4ncnn3MatD2Ev.exit66, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141.thread, %_ZN4ncnn3MatD2Ev.exit64, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139.thread
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !80
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !81 ; 2 uses
  %i.jh = load ptr, ptr %i.ax, align 8, !tbaa !80
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !81
  %i.ji = trunc i64 %.061224 to i32
  %i.jj = load ptr, ptr %i.ae, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.jk = sext i32 %i.jg to i64
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !51
  %i.jm = getelementptr inbounds nuw [112 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 %i.ji, ptr %i.jn, align 8, !tbaa !118
  %i.jo = load i64, ptr %i.cg, align 8, !tbaa !58
  %i.jp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 0, i64 noundef %i.jo, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jq = add nuw i64 %.061224, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.jq, %i.i
  br i1 %exitcond229.not, label %._crit_edge227, label %bb.b, !llvm.loop !1000

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit65, %_ZN4ncnn3MatD2Ev.exit67
  %.pn = phi { ptr, i32 } [ %i.ee, %_ZN4ncnn3MatD2Ev.exit67 ], [ %i.gl, %_ZN4ncnn3MatD2Ev.exit65 ], [ %i.it, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29fuse_deconvolution_activationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not159 = icmp eq ptr %i.d, %i.e
  br i1 %.not159, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge158:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph157, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.049155 = phi i64 [ 0, %.lr.ph157 ], [ %i.hc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.049155
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 25 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ae = icmp eq i64 %i.ad, 13
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = xor i64 %i.ah, 7813594095198364996
  %i.aj = getelementptr i8, ptr %i.ag, i64 5
  %i.ak = load i64, ptr %i.aj, align 1
  %i.al = xor i64 %i.ak, 7957695015494119286
  %i.am = or i64 %i.ai, %i.al
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not108 = icmp eq i32 %i.ao, 0
  br i1 %.not108, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 136 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !81
  %.048151 = add nuw i64 %.049155, 1              ; 3 uses
  %i.as = icmp ult i64 %.048151, %i.i
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread
  %.048152 = phi i64 [ %.048, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread ], [ %.048151, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.048152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  switch i64 %i.ax, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = icmp ne i32 %i.az, 1431070034
  %i.bb = zext i1 %i.ba to i32
  %.not109 = icmp eq i32 %i.bb, 0
  br i1 %.not109, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.bc = load i32, ptr %i.ay, align 1
  %i.bd = icmp ne i32 %i.bc, 1885957187
  %i.be = zext i1 %i.bd to i32
  %.not110 = icmp eq i32 %i.be, 0
  br i1 %.not110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !57
  %bcmp.i.i95 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.181, i64 %i.ax)
  %.not111 = icmp eq i32 %bcmp.i.i95, 0
  br i1 %.not111, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !80 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %.not = icmp eq i64 %i.bl, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !81
  %i.bn = icmp eq i32 %i.bm, %i.ar
  br i1 %i.bn, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  %.048 = add nuw i64 %.048152, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.048, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1001

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101
  %.048.lcssa = phi i64 [ %.048151, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101 ], [ %.048152, %bb.c ] ; 2 uses
  %i.bo = icmp eq i64 %.048.lcssa, %i.i
  br i1 %i.bo, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.048.lcssa
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 7 uses
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.186, ptr noundef %i.bt, ptr noundef %i.bv) #27 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !58 ; 2 uses
  switch i64 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !57 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = icmp ne i32 %i.cb, 1431070034
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 208 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !197
  %i.ch = fcmp oeq float %i.cg, 0.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 276 ; 2 uses
  br i1 %i.ch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 1, ptr %i.ci, align 4, !tbaa !157
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 2, ptr %i.ci, align 4, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.w, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 280 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, %1
  %.pre163 = load ptr, ptr %i.q, align 8, !tbaa !77 ; 3 uses
  br i1 %i.ck, label %_ZN4ncnn3MataSERKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i55 = icmp eq ptr %.pre163, null
  br i1 %.not.i55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = atomicrmw add ptr %.pre163, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 2 uses
  %.not.i58 = icmp eq ptr %i.cn, null
  br i1 %.not.i58, label %.noexc56, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = atomicrmw add ptr %i.cn, i32 -1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.k, label %.noexc56

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %.noexc56 unwind label %bb.u, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i89 = icmp eq ptr %i.cs, null
  br i1 %.not.i89, label %.noexc56, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cs) #25
  br label %.noexc56

.noexc56:                                         ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.dc = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.dc, ptr %i.cj, align 8, !tbaa !92
  %i.dd = load i64, ptr %i.r, align 16, !tbaa !93
  store i64 %i.dd, ptr %i.cw, align 8, !tbaa !93
  %i.de = load i32, ptr %i.s, align 8, !tbaa !94
  store i32 %i.de, ptr %i.cx, align 8, !tbaa !94
  %i.df = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !78
  %i.dh = load <4 x i32>, ptr %i.u, align 8, !tbaa !81
  store <4 x i32> %i.dh, ptr %i.cy, align 8, !tbaa !81
  %i.di = load i32, ptr %i.v, align 8, !tbaa !88
  store i32 %i.di, ptr %i.cz, align 8, !tbaa !88
  %i.dj = load i64, ptr %i.w, align 16, !tbaa !76
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit57

_ZN4ncnn3MataSERKS0_.exit57:                      ; preds = %.noexc56, %bb.f
  %i.dk = phi ptr [ %i.db, %.noexc56 ], [ %.pre163, %bb.f ] ; 2 uses
  %.not.i64 = icmp eq ptr %i.dk, null
  br i1 %.not.i64, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit57
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit54

bb.p:                                             ; preds = %bb.o
  %i.dn = load ptr, ptr %i.t, align 16, !tbaa !78 ; 3 uses
  %.not3.i65 = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef %i.do)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.p
  %.not.i85 = icmp eq ptr %i.do, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.do) #25
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.t:                                             ; preds = %bb.q
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.o, %_ZN4ncnn3MataSERKS0_.exit57, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.du = load float, ptr %i.cf, align 8, !tbaa !197
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !79
  store float %i.du, ptr %i.dv, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

bb.u:                                             ; preds = %bb.l
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !77  ; 2 uses
  %.not.i68 = icmp eq ptr %i.dx, null
  br i1 %.not.i68, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = atomicrmw add ptr %i.dx, i32 -1 acq_rel, align 4
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit53

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.t, align 16, !tbaa !78 ; 3 uses
  %.not3.i69 = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i83 = icmp eq ptr %i.eb, null
  br i1 %.not.i83, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.eb) #25
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.aa:                                            ; preds = %bb.x
end_hunk_8
begin_hunk_9_@_ZN11NetOptimize29fuse_deconvolution_activationEv:bb.a
  %i.ge = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i76 = icmp eq ptr %i.ge, null
  br i1 %.not.i76, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gf = atomicrmw add ptr %i.ge, i32 -1 acq_rel, align 4
  %i.gg = icmp eq i32 %i.gf, 1
  br i1 %i.gg, label %bb.ar, label %_ZN4ncnn3MatD2Ev.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gh = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i77 = icmp eq ptr %i.gh, null
  %i.gi = load ptr, ptr %2, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i77, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !28
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8
  invoke void %i.gl(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef %i.gi)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.av, !inline_history !1

bb.at:                                            ; preds = %bb.ar
  %.not.i80 = icmp eq ptr %i.gi, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.gi) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.av:                                            ; preds = %bb.as
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100: ; preds = %bb.d
  %.pre161 = load ptr, ptr %i.bx, align 8, !tbaa !57
  %bcmp.i99 = call i32 @bcmp(ptr %.pre161, ptr nonnull @.str.181, i64 %i.bz)
  %i.go = icmp eq i32 %bcmp.i99, 0
  br i1 %i.go, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ab, i64 276
  store i32 4, ptr %i.gp, align 4, !tbaa !157
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit54, %_ZN4ncnn3MatD2Ev.exit52, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !80
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !81 ; 2 uses
  %i.gt = load ptr, ptr %i.ap, align 8, !tbaa !80
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !81
  %i.gu = trunc i64 %.049155 to i32
  %i.gv = load ptr, ptr %i.x, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gw = sext i32 %i.gs to i64
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !51
  %i.gy = getelementptr inbounds nuw [112 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  store i32 %i.gu, ptr %i.gz, align 8, !tbaa !118
  %i.ha = load i64, ptr %i.by, align 8, !tbaa !58
  %i.hb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0, i64 noundef %i.ha, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hc = add nuw i64 %.049155, 1                 ; 2 uses
  %exitcond160.not = icmp eq i64 %i.hc, %i.i
  br i1 %exitcond160.not, label %._crit_edge158, label %bb.b, !llvm.loop !1002

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit53
  %.pn = phi { ptr, i32 } [ %i.dw, %_ZN4ncnn3MatD2Ev.exit53 ], [ %i.gd, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize38fuse_deconvolutiondepthwise_activationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not159 = icmp eq ptr %i.d, %i.e
  br i1 %.not159, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge158:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph157, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.049155 = phi i64 [ 0, %.lr.ph157 ], [ %i.hc, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.049155
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53 ; 25 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !58
  %i.ae = icmp eq i64 %i.ad, 22
  br i1 %i.ae, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !57 ; 2 uses
  %i.ah = load i128, ptr %i.ag, align 1
  %i.ai = xor i128 %i.ah, 149399345464053843500197436873427346756
  %i.aj = getelementptr i8, ptr %i.ag, i64 6
  %i.ak = load i128, ptr %i.aj, align 1
  %i.al = xor i128 %i.ak, 134851278291193737696550823383188991087
  %i.am = or i128 %i.ai, %i.al
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  %.not108 = icmp eq i32 %i.ao, 0
  br i1 %.not108, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 136 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !81
  %.048151 = add nuw i64 %.049155, 1              ; 3 uses
  %i.as = icmp ult i64 %.048151, %i.i
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread
  %.048152 = phi i64 [ %.048, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread ], [ %.048151, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.048152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
  switch i64 %i.ax, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 1
  %i.ba = icmp ne i32 %i.az, 1431070034
  %i.bb = zext i1 %i.ba to i32
  %.not109 = icmp eq i32 %i.bb, 0
  br i1 %.not109, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.bc = load i32, ptr %i.ay, align 1
  %i.bd = icmp ne i32 %i.bc, 1885957187
  %i.be = zext i1 %i.bd to i32
  %.not110 = icmp eq i32 %i.be, 0
  br i1 %.not110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !57
  %bcmp.i.i95 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.181, i64 %i.ax)
  %.not111 = icmp eq i32 %bcmp.i.i95, 0
  br i1 %.not111, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !91
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !80 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %.not = icmp eq i64 %i.bl, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !81
  %i.bn = icmp eq i32 %i.bm, %i.ar
  br i1 %i.bn, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit94, %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit92.thread102, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  %.048 = add nuw i64 %.048152, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.048, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1003

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101
  %.048.lcssa = phi i64 [ %.048151, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread101 ], [ %.048152, %bb.c ] ; 2 uses
  %i.bo = icmp eq i64 %.048.lcssa, %i.i
  br i1 %i.bo, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.048.lcssa
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53 ; 7 uses
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.187, ptr noundef %i.bt, ptr noundef %i.bv) #27 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !58 ; 2 uses
  switch i64 %i.bz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !57 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = icmp ne i32 %i.cb, 1431070034
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 208 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !197
  %i.ch = fcmp oeq float %i.cg, 0.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ab, i64 280 ; 2 uses
  br i1 %i.ch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 1, ptr %i.ci, align 8, !tbaa !161
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 2, ptr %i.ci, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.w, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ab, i64 288 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, %1
  %.pre163 = load ptr, ptr %i.q, align 8, !tbaa !77 ; 3 uses
  br i1 %i.ck, label %_ZN4ncnn3MataSERKS0_.exit57, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i55 = icmp eq ptr %.pre163, null
  br i1 %.not.i55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = atomicrmw add ptr %.pre163, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !77 ; 2 uses
  %.not.i58 = icmp eq ptr %i.cn, null
  br i1 %.not.i58, label %.noexc56, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = atomicrmw add ptr %i.cn, i32 -1 acq_rel, align 4
  %i.cp = icmp eq i32 %i.co, 1
  br i1 %i.cp, label %bb.k, label %.noexc56

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.cr, null
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs)
          to label %.noexc56 unwind label %bb.u, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i89 = icmp eq ptr %i.cs, null
  br i1 %.not.i89, label %.noexc56, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.cs) #25
  br label %.noexc56

.noexc56:                                         ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 304
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.da = getelementptr inbounds nuw i8, ptr %i.ab, i64 352
  %i.db = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.dc = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.dc, ptr %i.cj, align 8, !tbaa !92
  %i.dd = load i64, ptr %i.r, align 16, !tbaa !93
  store i64 %i.dd, ptr %i.cw, align 8, !tbaa !93
  %i.de = load i32, ptr %i.s, align 8, !tbaa !94
  store i32 %i.de, ptr %i.cx, align 8, !tbaa !94
  %i.df = load ptr, ptr %i.t, align 16, !tbaa !78
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !78
  %i.dh = load <4 x i32>, ptr %i.u, align 8, !tbaa !81
  store <4 x i32> %i.dh, ptr %i.cy, align 8, !tbaa !81
  %i.di = load i32, ptr %i.v, align 8, !tbaa !88
  store i32 %i.di, ptr %i.cz, align 8, !tbaa !88
  %i.dj = load i64, ptr %i.w, align 16, !tbaa !76
  store i64 %i.dj, ptr %i.da, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit57

_ZN4ncnn3MataSERKS0_.exit57:                      ; preds = %.noexc56, %bb.f
  %i.dk = phi ptr [ %i.db, %.noexc56 ], [ %.pre163, %bb.f ] ; 2 uses
  %.not.i64 = icmp eq ptr %i.dk, null
  br i1 %.not.i64, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit57
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit54

bb.p:                                             ; preds = %bb.o
  %i.dn = load ptr, ptr %i.t, align 16, !tbaa !78 ; 3 uses
  %.not3.i65 = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i65, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef %i.do)
          to label %_ZN4ncnn3MatD2Ev.exit54 unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.p
  %.not.i85 = icmp eq ptr %i.do, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.do) #25
  br label %_ZN4ncnn3MatD2Ev.exit54

bb.t:                                             ; preds = %bb.q
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit54:                          ; preds = %bb.o, %_ZN4ncnn3MataSERKS0_.exit57, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.du = load float, ptr %i.cf, align 8, !tbaa !197
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !79
  store float %i.du, ptr %i.dv, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

bb.u:                                             ; preds = %bb.l
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %i.q, align 8, !tbaa !77  ; 2 uses
  %.not.i68 = icmp eq ptr %i.dx, null
  br i1 %.not.i68, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dy = atomicrmw add ptr %i.dx, i32 -1 acq_rel, align 4
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit53

bb.w:                                             ; preds = %bb.v
  %i.ea = load ptr, ptr %i.t, align 16, !tbaa !78 ; 3 uses
  %.not3.i69 = icmp eq ptr %i.ea, null
  %i.eb = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  invoke void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef %i.eb)
          to label %_ZN4ncnn3MatD2Ev.exit53 unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i83 = icmp eq ptr %i.eb, null
  br i1 %.not.i83, label %_ZN4ncnn3MatD2Ev.exit53, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.eb) #25
  br label %_ZN4ncnn3MatD2Ev.exit53

bb.aa:                                            ; preds = %bb.x
end_hunk_9
begin_hunk_10_@_ZN11NetOptimize38fuse_deconvolutiondepthwise_activationEv:bb.a

bb.at:                                            ; preds = %bb.ar
  %.not.i80 = icmp eq ptr %i.gi, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.gi) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.av:                                            ; preds = %bb.as
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100: ; preds = %bb.d
  %.pre161 = load ptr, ptr %i.bx, align 8, !tbaa !57
  %bcmp.i99 = call i32 @bcmp(ptr %.pre161, ptr nonnull @.str.181, i64 %i.bz)
  %i.go = icmp eq i32 %bcmp.i99, 0
  br i1 %i.go, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  store i32 4, ptr %i.gp, align 8, !tbaa !161
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit98, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit54, %_ZN4ncnn3MatD2Ev.exit52, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !80
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !81 ; 2 uses
  %i.gt = load ptr, ptr %i.ap, align 8, !tbaa !80
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !81
  %i.gu = trunc i64 %.049155 to i32
  %i.gv = load ptr, ptr %i.x, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gw = sext i32 %i.gs to i64
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !51
  %i.gy = getelementptr inbounds nuw [112 x i8], ptr %i.gx, i64 %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  store i32 %i.gu, ptr %i.gz, align 8, !tbaa !118
  %i.ha = load i64, ptr %i.by, align 8, !tbaa !58
  %i.hb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0, i64 noundef %i.ha, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit100.thread107, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.hc = add nuw i64 %.049155, 1                 ; 2 uses
  %exitcond160.not = icmp eq i64 %i.hc, %i.i
  br i1 %exitcond160.not, label %._crit_edge158, label %bb.b, !llvm.loop !1004

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit53
  %.pn = phi { ptr, i32 } [ %i.dw, %_ZN4ncnn3MatD2Ev.exit53 ], [ %i.gd, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize28fuse_innerproduct_activationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not228 = icmp eq ptr %i.d, %i.e
  br i1 %.not228, label %._crit_edge227, label %.lr.ph226

.lr.ph226:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge227:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph226, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.061224 = phi i64 [ 0, %.lr.ph226 ], [ %i.jq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.061224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 36 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.al = icmp eq i64 %i.ak, 12
  br i1 %i.al, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 8030569537813245513
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = zext i32 %i.ar to i64
  %i.at = xor i64 %i.as, 1952675172
  %i.au = or i64 %i.ap, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not155 = icmp eq i32 %i.aw, 0
  br i1 %.not155, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 136 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !81
  %.060220 = add nuw i64 %.061224, 1              ; 3 uses
  %i.ba = icmp ult i64 %.060220, %i.i
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread
  %.060221 = phi i64 [ %.060, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread ], [ %.060220, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.060221
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !53 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread [
    i64 4, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
    i64 7, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131
    i64 9, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127: ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !57 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 1
  %i.bi = icmp ne i32 %i.bh, 1431070034
  %i.bj = zext i1 %i.bi to i32
  %.not156 = icmp eq i32 %i.bj, 0
  br i1 %.not156, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  %i.bk = load i32, ptr %i.bg, align 1
  %i.bl = icmp ne i32 %i.bk, 1885957187
  %i.bm = zext i1 %i.bl to i32
  %.not157 = icmp eq i32 %i.bm, 0
  br i1 %.not157, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !57
  %bcmp.i.i130 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.181, i64 %i.bf)
  %.not158 = icmp eq i32 %bcmp.i.i130, 0
  br i1 %.not158, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129
  %bcmp.i.i132 = call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull @.str.182, i64 %i.bf)
  %.not159 = icmp eq i32 %bcmp.i.i132, 0
  br i1 %.not159, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135: ; preds = %.lr.ph
  %.pre230 = load ptr, ptr %i.bd, align 8, !tbaa !57
  %bcmp.i.i134 = call i32 @bcmp(ptr %.pre230, ptr nonnull @.str.110, i64 %i.bf)
  %.not160 = icmp eq i32 %bcmp.i.i134, 0
  br i1 %.not160, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit129, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !91
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !80 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.not = icmp eq i64 %i.bt, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !81
  %i.bv = icmp eq i32 %i.bu, %i.az
  br i1 %i.bv, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131, %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread145, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135
  %.060 = add nuw i64 %.060221, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.060, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1005

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144
  %.060.lcssa = phi i64 [ %.060220, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread144 ], [ %.060221, %bb.c ] ; 2 uses
  %i.bw = icmp eq i64 %.060.lcssa, %i.i
  br i1 %i.bw, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.060.lcssa
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53 ; 9 uses
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.188, ptr noundef %i.cb, ptr noundef %i.cd) #27 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 48 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !58 ; 4 uses
  switch i64 %i.ch, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !57 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = icmp ne i32 %i.cj, 1431070034
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 208 ; 2 uses
  %i.co = load float, ptr %i.cn, align 8, !tbaa !197
  %i.cp = fcmp oeq float %i.co, 0.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 224 ; 2 uses
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 1, ptr %i.cq, align 8, !tbaa !174
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i32 2, ptr %i.cq, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.ad, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.aa, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 1, i64 noundef 4, ptr noundef null)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ai, i64 232 ; 4 uses
  %i.cs = icmp eq ptr %i.cr, %1
  %.pre235 = load ptr, ptr %i.x, align 8, !tbaa !77 ; 3 uses
  br i1 %i.cs, label %_ZN4ncnn3MataSERKS0_.exit74, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i72 = icmp eq ptr %.pre235, null
  br i1 %.not.i72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = atomicrmw add ptr %.pre235, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !77 ; 2 uses
  %.not.i75 = icmp eq ptr %i.cv, null
  br i1 %.not.i75, label %.noexc73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = atomicrmw add ptr %i.cv, i32 -1 acq_rel, align 4
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.k, label %.noexc73

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.cz, null
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, ptr noundef %i.da)
          to label %.noexc73 unwind label %bb.u, !inline_history !1

bb.m:                                             ; preds = %bb.k
  %.not.i124 = icmp eq ptr %i.da, null
  br i1 %.not.i124, label %.noexc73, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.da) #25
  br label %.noexc73

.noexc73:                                         ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 248
  %i.df = getelementptr inbounds nuw i8, ptr %i.ai, i64 256
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 272
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 288
  %i.di = getelementptr inbounds nuw i8, ptr %i.ai, i64 296
  %i.dj = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.dk = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.dk, ptr %i.cr, align 8, !tbaa !92
  %i.dl = load i64, ptr %i.y, align 16, !tbaa !93
  store i64 %i.dl, ptr %i.de, align 8, !tbaa !93
  %i.dm = load i32, ptr %i.z, align 8, !tbaa !94
  store i32 %i.dm, ptr %i.df, align 8, !tbaa !94
  %i.dn = load ptr, ptr %i.aa, align 16, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !78
  %i.dp = load <4 x i32>, ptr %i.ab, align 8, !tbaa !81
  store <4 x i32> %i.dp, ptr %i.dg, align 8, !tbaa !81
  %i.dq = load i32, ptr %i.ac, align 8, !tbaa !88
  store i32 %i.dq, ptr %i.dh, align 8, !tbaa !88
  %i.dr = load i64, ptr %i.ad, align 16, !tbaa !76
  store i64 %i.dr, ptr %i.di, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit74

_ZN4ncnn3MataSERKS0_.exit74:                      ; preds = %.noexc73, %bb.f
  %i.ds = phi ptr [ %i.dj, %.noexc73 ], [ %.pre235, %bb.f ] ; 2 uses
  %.not.i85 = icmp eq ptr %i.ds, null
  br i1 %.not.i85, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit74
  %i.dt = atomicrmw add ptr %i.ds, i32 -1 acq_rel, align 4
  %i.du = icmp eq i32 %i.dt, 1
  br i1 %i.du, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit68

bb.p:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i86 = icmp eq ptr %i.dv, null
  %i.dw = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i86, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !28
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef %i.dw)
          to label %_ZN4ncnn3MatD2Ev.exit68 unwind label %bb.t, !inline_history !1

bb.r:                                             ; preds = %bb.p
  %.not.i118 = icmp eq ptr %i.dw, null
  br i1 %.not.i118, label %_ZN4ncnn3MatD2Ev.exit68, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.dw) #25
  br label %_ZN4ncnn3MatD2Ev.exit68

bb.t:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit68:                          ; preds = %bb.o, %_ZN4ncnn3MataSERKS0_.exit74, %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ec = load float, ptr %i.cn, align 8, !tbaa !197
  %i.ed = load ptr, ptr %i.cr, align 8, !tbaa !79
  store float %i.ec, ptr %i.ed, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.u:                                             ; preds = %bb.l
  %i.ee = landingpad { ptr, i32 }
          cleanup
  %i.ef = load ptr, ptr %i.x, align 8, !tbaa !77  ; 2 uses
  %.not.i89 = icmp eq ptr %i.ef, null
  br i1 %.not.i89, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eg = atomicrmw add ptr %i.ef, i32 -1 acq_rel, align 4
  %i.eh = icmp eq i32 %i.eg, 1
  br i1 %i.eh, label %bb.w, label %_ZN4ncnn3MatD2Ev.exit67

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %i.aa, align 16, !tbaa !78 ; 3 uses
  %.not3.i90 = icmp eq ptr %i.ei, null
  %i.ej = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i90, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej)
          to label %_ZN4ncnn3MatD2Ev.exit67 unwind label %bb.aa, !inline_history !1

bb.y:                                             ; preds = %bb.w
  %.not.i116 = icmp eq ptr %i.ej, null
  br i1 %.not.i116, label %_ZN4ncnn3MatD2Ev.exit67, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.ej) #25
  br label %_ZN4ncnn3MatD2Ev.exit67

end_hunk_10
begin_hunk_11_@_ZN11NetOptimize28fuse_innerproduct_activationEv:bb.a
  %i.ig = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i102 = icmp eq ptr %i.ig, null
  %i.ih = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i102, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  invoke void %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ih)
          to label %_ZN4ncnn3MatD2Ev.exit64 unwind label %bb.bj, !inline_history !1

bb.bh:                                            ; preds = %bb.bf
  %.not.i110 = icmp eq ptr %i.ih, null
  br i1 %.not.i110, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.ih) #25
  br label %_ZN4ncnn3MatD2Ev.exit64

bb.bj:                                            ; preds = %bb.bg
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit64:                          ; preds = %bb.be, %_ZN4ncnn3MataSERKS0_.exit, %bb.bg, %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.in = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  %i.io = load float, ptr %i.in, align 8, !tbaa !167
  %i.ip = load ptr, ptr %i.hc, align 8, !tbaa !79 ; 2 uses
  store float %i.io, ptr %i.ip, align 4, !tbaa !90
  %i.iq = getelementptr inbounds nuw i8, ptr %i.by, i64 212
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !168
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !90
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154

bb.bk:                                            ; preds = %bb.bb
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i105 = icmp eq ptr %i.iu, null
  br i1 %.not.i105, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.bm, label %_ZN4ncnn3MatD2Ev.exit

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i106 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %3, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i106, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iy)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bq, !inline_history !1

bb.bo:                                            ; preds = %bb.bm
  %.not.i109 = icmp eq ptr %i.iy, null
  br i1 %.not.i109, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @free(ptr noundef nonnull %i.iy) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bq:                                            ; preds = %bb.bn
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bl, %bb.bk, %bb.bn, %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.br

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139, %bb.d, %bb.e, %_ZN4ncnn3MatD2Ev.exit68, %_ZN4ncnn3MatD2Ev.exit66, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141.thread, %_ZN4ncnn3MatD2Ev.exit64, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139.thread
  %i.je = getelementptr inbounds nuw i8, ptr %i.by, i64 136
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !80
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !81 ; 2 uses
  %i.jh = load ptr, ptr %i.ax, align 8, !tbaa !80
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !81
  %i.ji = trunc i64 %.061224 to i32
  %i.jj = load ptr, ptr %i.ae, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.jk = sext i32 %i.jg to i64
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !51
  %i.jm = getelementptr inbounds nuw [112 x i8], ptr %i.jl, i64 %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  store i32 %i.ji, ptr %i.jn, align 8, !tbaa !118
  %i.jo = load i64, ptr %i.cg, align 8, !tbaa !58
  %i.jp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 0, i64 noundef %i.jo, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit135.thread, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit143.thread154, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jq = add nuw i64 %.061224, 1                 ; 2 uses
  %exitcond229.not = icmp eq i64 %i.jq, %i.i
  br i1 %exitcond229.not, label %._crit_edge227, label %bb.b, !llvm.loop !1006

bb.br:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit65, %_ZN4ncnn3MatD2Ev.exit67
  %.pn = phi { ptr, i32 } [ %i.ee, %_ZN4ncnn3MatD2Ev.exit67 ], [ %i.gl, %_ZN4ncnn3MatD2Ev.exit65 ], [ %i.it, %_ZN4ncnn3MatD2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize24fuse_memorydata_binaryopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 11 uses
  %.not232 = icmp eq ptr %i.d, %i.e
  br i1 %.not232, label %._crit_edge231, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0209 = phi i64 [ %i.cq, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0209
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph211
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7008860452498007373
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %i.w, 24948
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not196 = icmp eq i32 %i.aa, 0
  br i1 %.not196, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81 ; 3 uses
  %.0143203 = add nuw i64 %.0209, 1               ; 3 uses
  %i.ae = icmp ult i64 %.0143203, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread
  %.0143204 = phi i64 [ %.0143, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread ], [ %.0143203, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180 ] ; 4 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0143204
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not197 = icmp eq i32 %i.ao, 0
  br i1 %.not197, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %.not154 = icmp eq i64 %i.av, 8
  br i1 %.not154, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !81
  %i.ax = icmp eq i32 %i.aw, %i.ad
  br i1 %i.ax, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !81
  %i.ba = icmp eq i32 %i.az, %i.ad
  br i1 %i.ba, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread181, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159
  %.0143 = add nuw i64 %.0143204, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %.0143, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1007

._crit_edge:                                      ; preds = %bb.c, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180
  %.0143.lcssa = phi i64 [ %.0143203, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread180 ], [ %.0143204, %bb.b ], [ %.0143204, %bb.c ] ; 2 uses
  %i.bb = icmp eq i64 %.0143.lcssa, %i.i
  br i1 %i.bb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0143.lcssa
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !176
  %.not155 = icmp eq i32 %i.bf, 1
  br i1 %.not155, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !177
  %.not156 = icmp eq i32 %i.bh, 0
  br i1 %.not156, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 220
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !178
  %.not157 = icmp eq i32 %i.bj, 0
  br i1 %.not157, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 112 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !80
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !81
  %i.bn = icmp eq i32 %i.bm, %i.ad
  br i1 %i.bn, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 208 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !134
  switch i32 %i.bp, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i32 5, label %.thread
    i32 4, label %.thread
    i32 2, label %.thread
    i32 0, label %.thread
    i32 1, label %.thread.sink.split
    i32 3, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.h, %bb.i
  %.sink = phi i32 [ 8, %bb.i ], [ 7, %bb.h ]
  store i32 %.sink, ptr %i.bo, align 8, !tbaa !134
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h, %bb.h, %bb.h, %bb.h, %bb.g
  %.2142 = phi i64 [ 1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %bb.h ], [ 0, %.thread.sink.split ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !79
  %i.bs = load float, ptr %i.br, align 4, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 212
  store i32 1, ptr %i.bt, align 4, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 216
  store float %i.bs, ptr %i.bu, align 8, !tbaa !136
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !57
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.189, ptr noundef %i.bx, ptr noundef %i.bz) #27 ; 0 uses
  %i.cb = load ptr, ptr %i.bk, align 8, !tbaa !204
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.2142 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 120 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !204 ; 5 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, 4
  br i1 %i.cj, label %bb.k, label %bb.l, !prof !205

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.cd, i64 %i.ci, i1 false)
  %.pre.i.i = load ptr, ptr %i.ce, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.ci, 4
  br i1 %i.ck, label %bb.m, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !81
  store i32 %i.cl, ptr %i.cc, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit: ; preds = %.thread, %bb.k, %bb.l, %bb.m
  %i.cm = phi ptr [ %i.cf, %bb.m ], [ %i.cf, %bb.l ], [ %.pre.i.i, %bb.k ], [ %i.cf, %.thread ]
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  store ptr %i.cn, ptr %i.ce, align 8, !tbaa !91
  %i.co = load i64, ptr %i.o, align 8, !tbaa !58
  %i.cp = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef 0, i64 noundef %i.co, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit159.thread, %.lr.ph211, %bb.h, %._crit_edge, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit, %bb.d, %bb.e, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cq = add nuw i64 %.0209, 1                   ; 2 uses
  %exitcond237.not = icmp eq i64 %i.cq, %i.i
  br i1 %exitcond237.not, label %.lr.ph230, label %.lr.ph211, !llvm.loop !1008

._crit_edge231:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, %bb.a
  ret i32 0

.lr.ph230:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread
  %.0134229 = phi i64 [ %i.im, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread ], [ 0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 15 uses
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46 ; 6 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0134229
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !58
  %i.cy = icmp eq i64 %i.cx, 10
  br i1 %i.cy, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161: ; preds = %.lr.ph230
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !57 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = xor i64 %i.da, 7008860452498007373
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i64
  %i.df = xor i64 %i.de, 24948
  %i.dg = or i64 %i.db, %i.df
  %i.dh = icmp ne i64 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
  %.not193 = icmp eq i32 %i.di, 0
  br i1 %.not193, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !81
  %.0133212 = add nuw i64 %.0134229, 1            ; 3 uses
  %i.dm = icmp ult i64 %.0133212, %i.i
  br i1 %i.dm, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread
  %.0133214 = phi i64 [ %.0133, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread ], [ %.0133212, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ] ; 4 uses
  %.0133.in213 = phi i64 [ %.0133214, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread ], [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133214
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !53 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !58
  %i.dr = icmp eq i64 %i.dq, 5
  br i1 %i.dr, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163: ; preds = %.lr.ph215
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = xor i32 %i.du, 1768714323
  %i.dw = getelementptr i8, ptr %i.dt, i64 4
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = zext i8 %i.dx to i32
  %i.dz = xor i32 %i.dy, 116
  %i.ea = or i32 %i.dv, %i.dz
  %i.eb = icmp ne i32 %i.ea, 0
  %i.ec = zext i1 %i.eb to i32
  %.not194 = icmp eq i32 %i.ec, 0
  br i1 %.not194, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 112
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !91
  %i.eg = load ptr, ptr %i.ed, align 8, !tbaa !80 ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.not = icmp eq i64 %i.ej, 4
  br i1 %.not, label %bb.n, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

bb.n:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !81
  %i.el = icmp eq i32 %i.ek, %i.dl
  br i1 %i.el, label %._crit_edge216, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread: ; preds = %.lr.ph215, %bb.n, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread185, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163
  %.0133 = add nuw i64 %.0133214, 1               ; 2 uses
  %exitcond238.not = icmp eq i64 %.0133, %i.i
  br i1 %exitcond238.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %.lr.ph215, !llvm.loop !1009

._crit_edge216:                                   ; preds = %bb.n, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184
  %.0133.in.lcssa = phi i64 [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ], [ %.0133.in213, %bb.n ]
  %.0133.lcssa = phi i64 [ %.0133212, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread184 ], [ %.0133214, %bb.n ] ; 3 uses
  %i.em = icmp eq i64 %.0133.lcssa, %i.i
  br i1 %i.em, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.o

bb.o:                                             ; preds = %._crit_edge216
  %i.en = add i64 %.0133.in.lcssa, 2              ; 3 uses
  %i.eo = icmp ult i64 %i.en, %i.i
  br i1 %i.eo, label %.lr.ph227, label %.thread187

.lr.ph227:                                        ; preds = %bb.o
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133.lcssa
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph227, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread
  %.0129224 = phi i64 [ %i.en, %.lr.ph227 ], [ %i.fz, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0129224
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !53 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 56
  %i.et = load i64, ptr %i.es, align 8, !tbaa !58
  %i.eu = icmp eq i64 %i.et, 8
  br i1 %i.eu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165: ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !57
  %i.ex = load i64, ptr %i.ew, align 1
  %i.ey = icmp ne i64 %i.ex, 8092820587575929154
  %i.ez = zext i1 %i.ey to i32
  %.not195 = icmp eq i32 %i.ez, 0
  br i1 %.not195, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 112
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 120
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !91
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 3 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %.not149 = icmp eq i64 %i.fg, 8
  br i1 %.not149, label %.preheader, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

.preheader:                                       ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186
  %i.fh = load ptr, ptr %i.ep, align 8, !tbaa !53 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 136
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 144
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !91
  %i.fl = load ptr, ptr %i.fi, align 8, !tbaa !80 ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = lshr exact i64 %i.fo, 2                 ; 2 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph223, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread

.lr.ph223:                                        ; preds = %.preheader
  %i.fs = load i32, ptr %i.fd, align 4, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %wide.trip.count = and i64 %i.fp, 2147483647
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph223, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !81 ; 2 uses
  %i.fw = icmp eq i32 %i.fs, %i.fv
  br i1 %i.fw, label %.thread187, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fx = load i32, ptr %i.ft, align 4, !tbaa !81
  %i.fy = icmp eq i32 %i.fx, %i.fv
  br i1 %i.fy, label %.thread187, label %bb.s

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond240.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread, label %bb.q, !llvm.loop !1010

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread: ; preds = %bb.s, %.preheader, %bb.p, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread186, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165
  %i.fz = add nuw i64 %.0129224, 1                ; 2 uses
  %exitcond241.not = icmp eq i64 %i.fz, %i.i
  br i1 %exitcond241.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.p, !llvm.loop !1011

.thread187:                                       ; preds = %bb.q, %bb.r, %bb.o
  %.0129202 = phi i64 [ %i.en, %bb.o ], [ %.0129224, %bb.r ], [ %.0129224, %bb.q ] ; 2 uses
  %.3 = phi i64 [ -1, %bb.o ], [ %indvars.iv, %bb.r ], [ %indvars.iv, %bb.q ] ; 2 uses
  %i.ga = icmp eq i64 %.0129202, %i.i
  br i1 %i.ga, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread, label %bb.t

bb.t:                                             ; preds = %.thread187
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0133.lcssa
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !53 ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.0129202
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !53 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cu, i64 208
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !176
  %.not151 = icmp eq i32 %i.gg, 1
  br i1 %.not151, label %bb.u, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.u:                                             ; preds = %bb.t
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cu, i64 212
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !177
  %.not152 = icmp eq i32 %i.gi, 0
  br i1 %.not152, label %bb.v, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.v:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cu, i64 220
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !178
  %.not153 = icmp eq i32 %i.gk, 0
  br i1 %.not153, label %bb.w, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

bb.w:                                             ; preds = %bb.v
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 112 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !80
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !81
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 136 ; 3 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !80
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.3
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !81
  %i.gs = icmp eq i32 %i.gn, %i.gr
  br i1 %i.gs, label %bb.x, label %.thread190

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ge, i64 208 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !134
  switch i32 %i.gu, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread [
    i32 5, label %.thread190
    i32 4, label %.thread190
    i32 2, label %.thread190
    i32 0, label %.thread190
    i32 1, label %.thread190.sink.split
    i32 3, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  br label %.thread190.sink.split

.thread190.sink.split:                            ; preds = %bb.x, %bb.y
  %.sink276 = phi i32 [ 8, %bb.y ], [ 7, %bb.x ]
  store i32 %.sink276, ptr %i.gt, align 8, !tbaa !134
  br label %.thread190

.thread190:                                       ; preds = %.thread190.sink.split, %bb.x, %bb.x, %bb.x, %bb.x, %bb.w
  %.2 = phi i64 [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %bb.x ], [ 0, %.thread190.sink.split ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !79
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !90
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ge, i64 212
  store i32 1, ptr %i.gy, align 4, !tbaa !135
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ge, i64 216
  store float %i.gx, ptr %i.gz, align 8, !tbaa !136
  %i.ha = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !57
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ge, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !57
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ha, ptr noundef nonnull @.str.189, ptr noundef %i.hc, ptr noundef %i.he) #27 ; 0 uses
  %i.hg = load ptr, ptr %i.gl, align 8, !tbaa !204
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.2 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 120 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !204 ; 5 uses
  %.not.i.i166 = icmp eq ptr %i.hi, %i.hk
  br i1 %.not.i.i166, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168, label %bb.z

bb.z:                                             ; preds = %.thread190
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm                    ; 3 uses
  %i.ho = icmp sgt i64 %i.hn, 4
  br i1 %i.ho, label %bb.aa, label %bb.ab, !prof !205

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hh, ptr nonnull align 4 %i.hi, i64 %i.hn, i1 false)
  %.pre.i.i167 = load ptr, ptr %i.hj, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

bb.ab:                                            ; preds = %bb.z
  %i.hp = icmp eq i64 %i.hn, 4
  br i1 %i.hp, label %bb.ac, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

bb.ac:                                            ; preds = %bb.ab
  %i.hq = load i32, ptr %i.hi, align 4, !tbaa !81
  store i32 %i.hq, ptr %i.hh, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168: ; preds = %.thread190, %bb.aa, %bb.ab, %bb.ac
  %i.hr = phi ptr [ %i.hk, %bb.ac ], [ %i.hk, %bb.ab ], [ %.pre.i.i167, %bb.aa ], [ %i.hk, %.thread190 ]
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -4
  store ptr %i.hs, ptr %i.hj, align 8, !tbaa !91
  %i.ht = load ptr, ptr %i.go, align 8, !tbaa !204
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %.3 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gc, i64 144 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !204 ; 5 uses
  %.not.i.i169 = icmp eq ptr %i.hv, %i.hx
  br i1 %.not.i.i169, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = ptrtoint ptr %i.hv to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp sgt i64 %i.ia, 4
  br i1 %i.ib, label %bb.ae, label %bb.af, !prof !205

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hu, ptr nonnull align 4 %i.hv, i64 %i.ia, i1 false)
  %.pre.i.i170 = load ptr, ptr %i.hw, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

bb.af:                                            ; preds = %bb.ad
  %i.ic = icmp eq i64 %i.ia, 4
  br i1 %i.ic, label %bb.ag, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

bb.ag:                                            ; preds = %bb.af
  %i.id = load i32, ptr %i.hv, align 4, !tbaa !81
  store i32 %i.id, ptr %i.hu, align 4, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171: ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168, %bb.ae, %bb.af, %bb.ag
  %i.ie = phi ptr [ %i.hx, %bb.ag ], [ %i.hx, %bb.af ], [ %.pre.i.i170, %bb.ae ], [ %i.hx, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit168 ]
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 2 uses
  store ptr %i.if, ptr %i.hw, align 8, !tbaa !91
  %i.ig = load ptr, ptr %i.go, align 8, !tbaa !204
  %i.ih = icmp eq ptr %i.ig, %i.if
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ij = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull @.str.8) ; 0 uses
  %i.ik = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull @.str.8) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EE.exit171
  %i.il = add i64 %.0134229, -1
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread, %.lr.ph230, %bb.x, %._crit_edge216, %bb.v, %bb.u, %bb.t, %bb.ai, %.thread187, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161
  %.5 = phi i64 [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit161 ], [ %.0134229, %._crit_edge216 ], [ %.0134229, %.thread187 ], [ %.0134229, %bb.t ], [ %.0134229, %bb.v ], [ %.0134229, %bb.u ], [ %i.il, %bb.ai ], [ %.0134229, %bb.x ], [ %.0134229, %.lr.ph230 ], [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit165.thread ], [ %.0134229, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit163.thread ]
  %i.im = add i64 %.5, 1                          ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.i
  br i1 %i.in, label %.lr.ph230, label %._crit_edge231, !llvm.loop !1012
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize21fuse_binaryop_eltwiseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %2 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not183 = icmp eq ptr %i.d, %i.e
  br i1 %.not183, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  br label %bb.b

._crit_edge182:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph181, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.088179 = phi i64 [ 0, %.lr.ph181 ], [ %i.hp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 10 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
end_hunk_11
begin_hunk_12_@_ZN11NetOptimize15eliminate_splitEv:bb.a
  %i.ce = xor i64 %i.cd, 7310315702952289134
  %i.cf = getelementptr i8, ptr %i.cc, i64 8
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = zext i8 %i.cg to i64
  %i.ci = xor i64 %i.ch, 100
  %i.cj = or i64 %i.ce, %i.ci
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = zext i1 %i.ck to i32
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.co = getelementptr inbounds nuw i8, ptr %i.bx, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !91 ; 2 uses
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !80 ; 3 uses
  %.not79 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not79, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59.preheader

.lr.ph59.preheader:                               ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.04058 = phi i64 [ %i.cy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph59.preheader ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.04058
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !81
  %i.cx = icmp eq i32 %i.cw, %i.bt
  br i1 %i.cx, label %bb.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph59
  %i.cy = add nuw i64 %.04058, 1                  ; 2 uses
  %exitcond82.not = icmp eq i64 %i.cy, %i.cu
  br i1 %exitcond82.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph59, !llvm.loop !1029

bb.d:                                             ; preds = %.lr.ph59
  %i.cz = and i64 %.04058, 4294967295
  %.not = icmp eq i64 %i.cz, 4294967295
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %._crit_edge65.loopexit.split.loop.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split, %bb.d
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1
  %i.da = icmp sgt i64 %indvars.iv83, 0
  %i.db = trunc nuw nsw i64 %indvars.iv83 to i32
  br i1 %i.da, label %.lr.ph64, label %._crit_edge65, !llvm.loop !1030

._crit_edge65.loopexit.split.loop.exit:           ; preds = %bb.d
  %i.dc = trunc nuw nsw i64 %indvars.iv83 to i32
  %i.dd = shl i64 %.04058, 32
  %i.de = ashr exact i64 %i.dd, 30
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge65.loopexit.split.loop.exit, %._crit_edge.thread
  %.041.in.lcssa = phi i32 [ %i.bu, %._crit_edge.thread ], [ %.041.in61, %._crit_edge65.loopexit.split.loop.exit ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %.041.lcssa = phi i32 [ %.04160, %._crit_edge.thread ], [ %i.dc, %._crit_edge65.loopexit.split.loop.exit ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.3 = phi i64 [ -4, %._crit_edge.thread ], [ %i.de, %._crit_edge65.loopexit.split.loop.exit ], [ -4, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.df = icmp eq i32 %.041.in.lcssa, 0
  br i1 %i.df, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge65
  %i.dg = sext i32 %.041.lcssa to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53 ; 2 uses
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !57
  %i.do = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.197, ptr noundef %i.dl, ptr noundef %i.dn) #27 ; 0 uses
  %i.dp = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.044.lcssa93
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !81 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.3
  store i32 %i.dr, ptr %i.du, align 4, !tbaa !81
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.dw = sext i32 %i.dr to i64
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !51
  %i.dy = getelementptr inbounds nuw [112 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i32 %.041.lcssa, ptr %i.dz, align 8, !tbaa !118
  %i.ea = load i64, ptr %i.q, align 8, !tbaa !58
  %i.eb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.ea, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.b, %._crit_edge, %._crit_edge65, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ec = add nuw i64 %.073, 1                    ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond87.not = icmp eq i64 %i.ec, %i.i
  br i1 %exitcond87.not, label %._crit_edge76, label %bb.b, !llvm.loop !1031
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29eliminate_orphaned_memorydataEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %.not38 = icmp eq ptr %i.d, %i.e
  br i1 %.not38, label %._crit_edge, label %.lr.ph37

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph37:                                         ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.02536 = phi i64 [ %i.bu, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 4 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02536
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp eq i64 %i.o, 10
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph37
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7008860452498007373
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i16, ptr %i.u, align 1
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %i.w, 24948
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.02333 = add nuw i64 %.02536, 1                ; 2 uses
  %i.ae = icmp ult i64 %.02333, %i.i
  br i1 %i.ae, label %.lr.ph35, label %.critedge

.lr.ph35:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, %.critedge28
  %.02334 = phi i64 [ %.023, %.critedge28 ], [ %.02333, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29 ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02334
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 9
  br i1 %i.aj, label %.split, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

.split:                                           ; preds = %.lr.ph35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 7310315702952289134
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = xor i64 %i.aq, 100
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.critedge28, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader: ; preds = %.split, %.lr.ph35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91 ; 2 uses
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 3 uses
  %.not31.not = icmp eq ptr %i.ay, %i.az
  br i1 %.not31.not, label %.critedge28, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 2
  br label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.be = add nuw i64 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.bd
  br i1 %exitcond.not, label %.critedge28, label %.lr.ph, !llvm.loop !1032

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.032 = phi i64 [ %i.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.032
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bh = icmp eq i32 %i.bg, %i.ad
  br i1 %i.bh, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

.critedge28:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.preheader, %.split
  %.023 = add nuw i64 %.02334, 1                  ; 2 uses
  %exitcond39.not = icmp eq i64 %.023, %i.i
  br i1 %exitcond39.not, label %.critedge, label %.lr.ph35, !llvm.loop !1033

.critedge:                                        ; preds = %.critedge28, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.198, ptr noundef %i.bk) #27 ; 0 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.02536
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !58
  %i.bt = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef 0, i64 noundef %i.bs, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph, %.lr.ph37, %.critedge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bu = add nuw i64 %.02536, 1                  ; 2 uses
  %exitcond41.not = icmp eq i64 %i.bu, %i.i
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !1034
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize38eliminate_reshape_after_global_poolingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not47 = icmp eq ptr %i.d, %i.e
  br i1 %.not47, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge46:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph45, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.02943 = phi i64 [ 0, %.lr.ph45 ], [ %i.ck, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02943
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 7
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1819242320
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1735289196
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not37 = icmp eq i32 %i.aa, 0
  br i1 %.not37, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 244
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !189
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %.039 = add nuw i64 %.02943, 1                  ; 3 uses
  %i.ah = icmp ult i64 %.039, %i.i
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread
  %.040 = phi i64 [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread ], [ %.039, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.040
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %i.am = icmp eq i64 %i.al, 7
  br i1 %i.am, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1752393042
  %i.ar = getelementptr i8, ptr %i.ao, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1701863784
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not38 = icmp eq i32 %i.aw, 0
  br i1 %.not38, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread36, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread36: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 4
  br i1 %.not, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread36
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !81
  %i.bf = icmp eq i32 %i.be, %i.ag
  br i1 %i.bf, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %.lr.ph, %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread36, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %.0 = add nuw i64 %.040, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %.0, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1035

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i64 [ %.039, %bb.c ], [ %.040, %bb.d ] ; 2 uses
  %i.bg = icmp eq i64 %.0.lcssa, %i.i
  br i1 %i.bg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0.lcssa
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 212
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !200
  %.not31 = icmp eq i32 %i.bk, -233
  br i1 %.not31, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 220
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !201
  %.not32 = icmp eq i32 %i.bm, -233
  br i1 %.not32, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !58
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !57
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.199, ptr noundef %i.bs, ptr noundef %i.bu) #27 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !80
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !81 ; 2 uses
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !80
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !81
  %i.ca = trunc i64 %.02943 to i32
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.cc = sext i32 %i.by to i64
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw [112 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  store i32 %i.ca, ptr %i.cf, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !58
  %i.cj = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef 0, i64 noundef %i.ci, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread35, %bb.h, %bb.f, %bb.e, %bb.g, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ck = add nuw i64 %.02943, 1                  ; 2 uses
  %exitcond48.not = icmp eq i64 %i.ck, %i.i
  br i1 %exitcond48.not, label %._crit_edge46, label %bb.b, !llvm.loop !1036
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize38eliminate_flatten_after_global_poolingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not42 = icmp eq ptr %i.d, %i.e
  br i1 %.not42, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge41:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph40, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.038 = phi i64 [ 0, %.lr.ph40 ], [ %i.cd, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.038
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 7
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1819242320
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1735289196
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not32 = icmp eq i32 %i.aa, 0
  br i1 %.not32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread30: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 244
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !189
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %.02634 = add nuw i64 %.038, 1                  ; 3 uses
  %i.ah = icmp ult i64 %.02634, %i.i
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread
  %.02635 = phi i64 [ %.026, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread ], [ %.02634, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02635
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %i.am = icmp eq i64 %i.al, 7
  br i1 %i.am, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29: ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = xor i32 %i.ap, 1952541766
  %i.ar = getelementptr i8, ptr %i.ao, i64 3
  %i.as = load i32, ptr %i.ar, align 1
  %i.at = xor i32 %i.as, 1852142708
  %i.au = or i32 %i.aq, %i.at
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %.not33 = icmp eq i32 %i.aw, 0
  br i1 %.not33, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread31, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread31: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 4
  br i1 %.not, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread

bb.d:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread31
  %i.be = load i32, ptr %i.ba, align 4, !tbaa !81
  %i.bf = icmp eq i32 %i.be, %i.ag
  br i1 %i.bf, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread: ; preds = %.lr.ph, %bb.d, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread31, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29
  %.026 = add nuw i64 %.02635, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.026, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1037

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.026.lcssa = phi i64 [ %.02634, %bb.c ], [ %.02635, %bb.d ] ; 2 uses
  %i.bg = icmp eq i64 %.026.lcssa, %i.i
  br i1 %i.bg, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.026.lcssa
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !53 ; 4 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.201, ptr noundef %i.bl, ptr noundef %i.bn) #27 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !80
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !81 ; 2 uses
  %i.bs = load ptr, ptr %i.ae, align 8, !tbaa !80
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !81
  %i.bt = trunc i64 %.038 to i32
  %i.bu = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.bv = sext i32 %i.br to i64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw [112 x i8], ptr %i.bw, i64 %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 %i.bt, ptr %i.by, align 8, !tbaa !118
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !58
  %i.cc = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef 0, i64 noundef %i.cb, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit29.thread, %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread30, %._crit_edge, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cd = add nuw i64 %.038, 1                    ; 2 uses
  %exitcond43.not = icmp eq i64 %i.cd, %i.i
  br i1 %exitcond43.not, label %._crit_edge41, label %bb.b, !llvm.loop !1038
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize36eliminate_flatten_after_innerproductEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not41 = icmp eq ptr %i.d, %i.e
  br i1 %.not41, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge40:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph39, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.037 = phi i64 [ 0, %.lr.ph39 ], [ %i.cb, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.037
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 12
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8030569537813245513
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i32, ptr %i.v, align 1
  %i.x = zext i32 %i.w to i64
  %i.y = xor i64 %i.x, 1952675172
  %i.z = or i64 %i.u, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %.02533 = add nuw i64 %.037, 1                  ; 3 uses
  %i.af = icmp ult i64 %.02533, %i.i
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread
  %.02534 = phi i64 [ %.025, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread ], [ %.02533, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.02534
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = icmp eq i64 %i.aj, 7
  br i1 %i.ak, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57 ; 2 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = xor i32 %i.an, 1952541766
  %i.ap = getelementptr i8, ptr %i.am, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1852142708
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not32 = icmp eq i32 %i.au, 0
  br i1 %.not32, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread30: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !91
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !80 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not = icmp eq i64 %i.bb, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread30
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !81
  %i.bd = icmp eq i32 %i.bc, %i.ae
  br i1 %i.bd, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread30, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %.025 = add nuw i64 %.02534, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.025, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1039

._crit_edge:                                      ; preds = %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29
  %.025.lcssa = phi i64 [ %.02533, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread29 ], [ %.02534, %bb.c ] ; 2 uses
  %i.be = icmp eq i64 %.025.lcssa, %i.i
  br i1 %i.be, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.025.lcssa
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53 ; 4 uses
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.202, ptr noundef %i.bj, ptr noundef %i.bl) #27 ; 0 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !81 ; 2 uses
  %i.bq = load ptr, ptr %i.ac, align 8, !tbaa !80
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !81
  %i.br = trunc i64 %.037 to i32
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.bt = sext i32 %i.bp to i64
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 %i.br, ptr %i.bw, align 8, !tbaa !118
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !58
  %i.ca = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef 0, i64 noundef %i.bz, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, %bb.b, %bb.d, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cb = add nuw i64 %.037, 1                    ; 2 uses
  %exitcond42.not = icmp eq i64 %i.cb, %i.i
  br i1 %exitcond42.not, label %._crit_edge40, label %bb.b, !llvm.loop !1040
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize33eliminate_reshape_before_binaryopEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not57 = icmp eq ptr %i.d, %i.e
  br i1 %.not57, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge56:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph55, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.03653 = phi i64 [ 0, %.lr.ph55 ], [ %i.cs, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.03653
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %i.t = load i32, ptr %i.s, align 1
  %i.u = xor i32 %i.t, 1752393042
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i32, ptr %i.v, align 1
  %i.x = xor i32 %i.w, 1701863784
  %i.y = or i32 %i.u, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not45 = icmp eq i32 %i.aa, 0
  br i1 %.not45, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread43, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread43: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !199
  %.not = icmp eq i32 %i.ac, 1
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread43
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !200
  %.not39 = icmp eq i32 %i.ae, 1
  br i1 %.not39, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !58
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.e, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !80
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81 ; 4 uses
  %.047 = add nuw i64 %.03653, 1                  ; 3 uses
  %i.al = icmp ult i64 %.047, %i.i
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
  %.048 = phi i64 [ %.0, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread ], [ %.047, %bb.e ] ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.048
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !58
  %i.aq = icmp eq i64 %i.ap, 8
  br i1 %i.aq, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !57
  %i.at = load i64, ptr %i.as, align 1
  %i.au = icmp ne i64 %i.at, 8092820587575929154
  %i.av = zext i1 %i.au to i32
  %.not46 = icmp eq i32 %i.av, 0
  br i1 %.not46, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread44, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread44: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 3 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not40 = icmp eq i64 %i.bc, 8
  br i1 %.not40, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread44
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !81
  %i.be = icmp eq i32 %i.bd, %i.ak
  br i1 %i.be, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !81
  %i.bh = icmp eq i32 %i.bg, %i.ak
  br i1 %i.bh, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread: ; preds = %.lr.ph, %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread44, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
  %.0 = add nuw i64 %.048, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %.0, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1041

._crit_edge:                                      ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa = phi i64 [ %.047, %bb.e ], [ %.048, %bb.f ], [ %.048, %bb.g ] ; 4 uses
  %i.bi = icmp eq i64 %.0.lcssa, %i.i
  br i1 %i.bi, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0.lcssa
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53 ; 3 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !57
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.203, ptr noundef %i.bn, ptr noundef %i.bp) #27 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !80
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !81 ; 3 uses
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !46
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.0.lcssa
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !80 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !81
  %i.cb = icmp eq i32 %i.ca, %i.ak
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  store i32 %i.bt, ptr %i.cd, align 4, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !81
  %i.cg = icmp eq i32 %i.cf, %i.ak
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.bt, ptr %i.cj, align 4, !tbaa !81
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ck = trunc i64 %.0.lcssa to i32
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.cm = sext i32 %i.bt to i64
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw [112 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 36
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !206
  %i.cq = load i64, ptr %i.p, align 8, !tbaa !58
  %i.cr = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef %i.cq, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread, %bb.b, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread43, %bb.d, %._crit_edge, %bb.l, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.cs = add nuw i64 %.03653, 1                  ; 2 uses
  %exitcond58.not = icmp eq i64 %i.cs, %i.i
  br i1 %exitcond58.not, label %._crit_edge56, label %bb.b, !llvm.loop !1042
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize37replace_reduction_with_global_poolingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not83 = icmp eq ptr %i.d, %i.e
  br i1 %.not83, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge82:                                    ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph81, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.05579 = phi i64 [ 0, %.lr.ph81 ], [ %i.du, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05579
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !58
  %i.r = icmp eq i64 %i.q, 9
  br i1 %i.r, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8028075781284717906
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = xor i64 %i.x, 110
  %i.z = or i64 %i.u, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not73 = icmp eq i32 %i.ab, 0
  br i1 %.not73, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !193
  %.not = icmp eq i32 %i.ad, 3
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !194
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !195
  %i.ai = fcmp une float %i.ah, 1.000000e+00
  br i1 %i.ai, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 268
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1045
  %.not60 = icmp eq i32 %i.ak, 1
  br i1 %.not60, label %bb.f, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79
  %i.an = load i32, ptr %i.am, align 4, !tbaa !81
  %i.ao = and i32 %i.an, -2
  %switch = icmp eq i32 %i.ao, 2
  br i1 %switch, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !81
  %.05475 = add nuw i64 %.05579, 1                ; 3 uses
  %i.as = icmp ult i64 %.05475, %i.i
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread
  %.05476 = phi i64 [ %.054, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread ], [ %.05475, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05476
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !58
  %i.ax = icmp eq i64 %i.aw, 9
  br i1 %i.ax, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70: ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !57 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 1
  %i.bb = xor i64 %i.ba, 8028075781284717906
  %i.bc = getelementptr i8, ptr %i.az, i64 8
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext i8 %i.bd to i64
  %i.bf = xor i64 %i.be, 110
  %i.bg = or i64 %i.bb, %i.bf
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %.not74 = icmp eq i32 %i.bi, 0
  br i1 %.not74, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread72, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread72: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %.not63 = icmp eq i64 %i.bp, 4
  br i1 %.not63, label %bb.h, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread72
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !81
  %i.br = icmp eq i32 %i.bq, %i.ar
  br i1 %i.br, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread: ; preds = %.lr.ph, %bb.h, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread72, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70
  %.054 = add nuw i64 %.05476, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %.054, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1043

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.054.lcssa = phi i64 [ %.05475, %bb.g ], [ %.05476, %bb.h ] ; 4 uses
  %i.bs = icmp eq i64 %.054.lcssa, %i.i
  br i1 %i.bs, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.054.lcssa
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53 ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 208
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !193
  %.not64 = icmp eq i32 %i.bw, 3
  br i1 %.not64, label %bb.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 212
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !194
  %.not65 = icmp eq i32 %i.by, 0
  br i1 %.not65, label %bb.k, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !195
  %i.cb = fcmp une float %i.ca, 1.000000e+00
  br i1 %i.cb, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 268
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !1045
  %.not66 = icmp eq i32 %i.cd, 1
  br i1 %.not66, label %bb.m, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !79
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !81
  %.not67 = icmp eq i32 %i.cg, 2
  br i1 %.not67, label %bb.n, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.cm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ch, ptr noundef nonnull @.str.204, ptr noundef %i.cj, ptr noundef %i.cl) #27 ; 0 uses
  %i.cn = call noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef nonnull @.str.128) ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull @.str.128) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.ck)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 112 ; 2 uses
  %i.ct = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.cr) ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  %i.cw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cu) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.cx = load ptr, ptr %i.cn, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(268) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.o unwind label %bb.q       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 208
  store i32 1, ptr %i.db, align 8, !tbaa !180
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 244
  store i32 1, ptr %i.dc, align 4, !tbaa !189
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !46
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.054.lcssa
  store ptr %i.cn, ptr %i.df, align 8, !tbaa !53
  %i.dg = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(300) %i.bu) #25
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !81 ; 2 uses
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !80
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !81
  %i.dn = trunc i64 %.054.lcssa to i32
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.dp = sext i32 %i.dl to i64
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !51
  %i.dr = getelementptr inbounds nuw [112 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 36
  store i32 %i.dn, ptr %i.ds, align 4, !tbaa !206
  %i.dt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull @.str.8)
          to label %bb.p unwind label %bb.q       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70.thread, %bb.b, %bb.f, %bb.d, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread71, %bb.e, %._crit_edge, %bb.p, %bb.m, %bb.l, %bb.i, %bb.j, %bb.k, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.du = add nuw i64 %.05579, 1                  ; 2 uses
  %exitcond84.not = icmp eq i64 %i.du, %i.i
  br i1 %exitcond84.not, label %._crit_edge82, label %bb.b, !llvm.loop !1044

bb.q:                                             ; preds = %bb.n, %bb.o
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.dv
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29replace_prelu_with_leaky_reluEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not26 = icmp eq ptr %i.d, %i.e
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.025 = phi i64 [ %i.bh, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.025
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = xor i32 %i.s, 1281708624
  %i.u = getelementptr i8, ptr %i.r, i64 4
  %i.v = load i8, ptr %i.u, align 1
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.w, 85
  %i.y = or i32 %i.t, %i.x
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not24 = icmp eq i32 %i.aa, 0
  br i1 %.not24, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !191
  %.not = icmp eq i32 %i.ac, 1
  br i1 %.not, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.205, ptr noundef %i.af) #27 ; 0 uses
  %i.ah = call noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef nonnull @.str.141) ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.ak, ptr noundef nonnull @.str.141, i64 noundef 4) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  %i.as = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79
  %i.az = load float, ptr %i.ay, align 4, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  store float %i.az, ptr %i.ba, align 8, !tbaa !197
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.025
  store ptr %i.ah, ptr %i.bd, align 8, !tbaa !53
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(288) %i.m) #25
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread23, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bh = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1046

bb.d:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.bi
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize58replace_convolution_with_innerproduct_after_global_poolingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not109 = icmp eq ptr %i.d, %i.e
  br i1 %.not109, label %._crit_edge108, label %.lr.ph107

._crit_edge108:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

.lr.ph107:                                        ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0105 = phi i64 [ %i.jp, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0105
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp eq i64 %i.o, 7
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph107
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = load i32, ptr %i.r, align 1
  %i.t = xor i32 %i.s, 1819242320
  %i.u = getelementptr i8, ptr %i.r, i64 3
  %i.v = load i32, ptr %i.u, align 1
  %i.w = xor i32 %i.v, 1735289196
  %i.x = or i32 %i.t, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not99 = icmp eq i32 %i.z, 0
  br i1 %.not99, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread97: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 244
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !189
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81
  %.053101 = add nuw i64 %.0105, 1                ; 3 uses
  %i.ag = icmp ult i64 %.053101, %i.i
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread
  %.053102 = phi i64 [ %.053, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread ], [ %.053101, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.053102
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !58
  %i.al = icmp eq i64 %i.ak, 11
  br i1 %i.al, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96: ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 8391732706658905923
  %i.aq = getelementptr i8, ptr %i.an, i64 3
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = xor i64 %i.ar, 7957695015494119286
  %i.at = or i64 %i.ap, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %.not100 = icmp eq i32 %i.av, 0
  br i1 %.not100, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread98: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !80 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %.not = icmp eq i64 %i.bc, 4
  br i1 %.not, label %bb.c, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

bb.c:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread98
  %i.bd = load i32, ptr %i.az, align 4, !tbaa !81
  %i.be = icmp eq i32 %i.bd, %i.af
  br i1 %i.be, label %._crit_edge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread: ; preds = %.lr.ph, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread98, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
  %.053 = add nuw i64 %.053102, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %.053, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph, !llvm.loop !1047

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.053.lcssa = phi i64 [ %.053101, %bb.b ], [ %.053102, %bb.c ] ; 3 uses
  %i.bf = icmp eq i64 %.053.lcssa, %i.i
  br i1 %i.bf, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.053.lcssa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !53 ; 49 uses
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 80 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !57
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.206, ptr noundef %i.bk, ptr noundef %i.bm) #27 ; 0 uses
  %i.bo = call noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef nonnull @.str.111) ; 57 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !58
  %i.bs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 noundef 0, i64 noundef %i.br, ptr noundef nonnull @.str.111, i64 noundef 12) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  %i.bw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bu) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.bz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = invoke noundef i32 %i.cc(ptr noundef nonnull align 8 dereferenceable(592) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.e unwind label %bb.au      ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !141
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !170
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 256
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 212
  %i.cj = load <2 x i32>, ptr %i.ch, align 8, !tbaa !81
  store <2 x i32> %i.cj, ptr %i.ci, align 4, !tbaa !81
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !144
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 220
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !173
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 352 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bo, i64 304 ; 4 uses
  %i.cp = icmp eq ptr %i.co, %i.cn
  br i1 %i.cp, label %_ZN4ncnn3MataSERKS0_.exit67, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 360
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !77 ; 2 uses
  %.not.i65 = icmp eq ptr %i.cr, null
  br i1 %.not.i65, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cs = atomicrmw add ptr %i.cr, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bo, i64 312
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !77 ; 2 uses
  %.not.i68 = icmp eq ptr %i.cu, null
  br i1 %.not.i68, label %.noexc66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cv = atomicrmw add ptr %i.cu, i32 -1 acq_rel, align 4
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.j, label %.noexc66

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.cy, null
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr noundef %i.cz)
          to label %.noexc66 unwind label %bb.au, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %.not.i93 = icmp eq ptr %i.cz, null
  br i1 %.not.i93, label %.noexc66, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.cz) #25
  br label %.noexc66

.noexc66:                                         ; preds = %bb.i, %bb.h, %bb.k, %bb.l, %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 320
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 328
  %i.df = getelementptr inbounds nuw i8, ptr %i.bo, i64 344 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bo, i64 360
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bo, i64 368 ; 2 uses
  store i64 0, ptr %i.dh, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.co, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.df, i8 0, i64 20, i1 false)
  %i.di = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !92
  store <2 x ptr> %i.di, ptr %i.co, align 8, !tbaa !92
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bh, i64 368
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !93
  store i64 %i.dk, ptr %i.dd, align 8, !tbaa !93
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 376
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !94
  store i32 %i.dm, ptr %i.de, align 8, !tbaa !94
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bh, i64 384
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !78
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 336
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !78
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bh, i64 392
  %i.dr = load <4 x i32>, ptr %i.dq, align 8, !tbaa !81
  store <4 x i32> %i.dr, ptr %i.df, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bh, i64 408
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !88
  store i32 %i.dt, ptr %i.dg, align 8, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 416
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !76
  store i64 %i.dv, ptr %i.dh, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit67

_ZN4ncnn3MataSERKS0_.exit67:                      ; preds = %.noexc66, %bb.e
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bh, i64 424 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 376 ; 4 uses
  %i.dy = icmp eq ptr %i.dx, %i.dw
  br i1 %i.dy, label %_ZN4ncnn3MataSERKS0_.exit64, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit67
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bh, i64 432
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !77 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ea, null
  br i1 %.not.i62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = atomicrmw add ptr %i.ea, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 384
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !77 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ed, null
  br i1 %.not.i70, label %.noexc63, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = atomicrmw add ptr %i.ed, i32 -1 acq_rel, align 4
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.r, label %.noexc63

bb.r:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !78 ; 3 uses
  %.not3.i71 = icmp eq ptr %i.eh, null
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i71, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = load ptr, ptr %i.eh, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei)
          to label %.noexc63 unwind label %bb.au, !inline_history !1

bb.t:                                             ; preds = %bb.r
  %.not.i91 = icmp eq ptr %i.ei, null
  br i1 %.not.i91, label %.noexc63, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.ei) #25
  br label %.noexc63

.noexc63:                                         ; preds = %bb.q, %bb.p, %bb.s, %bb.t, %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %i.bo, i64 392
  %i.en = getelementptr inbounds nuw i8, ptr %i.bo, i64 400
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bo, i64 416 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 432
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bo, i64 440 ; 2 uses
  store i64 0, ptr %i.eq, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dx, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eo, i8 0, i64 20, i1 false)
  %i.er = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !92
  store <2 x ptr> %i.er, ptr %i.dx, align 8, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.bh, i64 440
  %i.et = load i64, ptr %i.es, align 8, !tbaa !93
  store i64 %i.et, ptr %i.em, align 8, !tbaa !93
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !94
  store i32 %i.ev, ptr %i.en, align 8, !tbaa !94
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bh, i64 456
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !78
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bo, i64 408
end_hunk_12
begin_hunk_13_@_ZN11NetOptimize58replace_convolution_with_innerproduct_after_global_poolingEv:bb.a
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !145
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  store i32 %i.hy, ptr %i.hz, align 8, !tbaa !174
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bh, i64 272 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bo, i64 232 ; 4 uses
  %i.ic = icmp eq ptr %i.ib, %i.ia
  br i1 %i.ic, label %bb.at, label %bb.al

bb.al:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit58
  %i.id = getelementptr inbounds nuw i8, ptr %i.bh, i64 280
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq ptr %i.ie, null
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.if = atomicrmw add ptr %i.ie, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !77 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ih, null
  br i1 %.not.i82, label %.noexc, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ii = atomicrmw add ptr %i.ih, i32 -1 acq_rel, align 4
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.ap, label %.noexc

bb.ap:                                            ; preds = %bb.ao
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bo, i64 264
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !78 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.il, null
  %i.im = load ptr, ptr %i.ib, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i83, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.in = load ptr, ptr %i.il, align 8, !tbaa !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  invoke void %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.il, ptr noundef %i.im)
          to label %.noexc unwind label %bb.au, !inline_history !1

bb.ar:                                            ; preds = %bb.ap
  %.not.i86 = icmp eq ptr %i.im, null
  br i1 %.not.i86, label %.noexc, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.im) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.ao, %bb.an, %bb.aq, %bb.ar, %bb.as
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bo, i64 248
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bo, i64 256
  %i.is = getelementptr inbounds nuw i8, ptr %i.bo, i64 272 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.bo, i64 288
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bo, i64 296 ; 2 uses
  store i64 0, ptr %i.iu, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ib, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.is, i8 0, i64 20, i1 false)
  %i.iv = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !92
  store <2 x ptr> %i.iv, ptr %i.ib, align 8, !tbaa !92
  %i.iw = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !93
  store i64 %i.ix, ptr %i.iq, align 8, !tbaa !93
  %i.iy = getelementptr inbounds nuw i8, ptr %i.bh, i64 296
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !94
  store i32 %i.iz, ptr %i.ir, align 8, !tbaa !94
  %i.ja = getelementptr inbounds nuw i8, ptr %i.bh, i64 304
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !78
  %i.jc = getelementptr inbounds nuw i8, ptr %i.bo, i64 264
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.bh, i64 312
  %i.je = load <4 x i32>, ptr %i.jd, align 8, !tbaa !81
  store <4 x i32> %i.je, ptr %i.is, align 8, !tbaa !81
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bh, i64 328
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !88
  store i32 %i.jg, ptr %i.it, align 8, !tbaa !88
  %i.jh = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !76
  store i64 %i.ji, ptr %i.iu, align 8, !tbaa !76
  br label %bb.at

bb.at:                                            ; preds = %.noexc, %_ZN4ncnn3MataSERKS0_.exit58
  %i.jj = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.053.lcssa
  store ptr %i.bo, ptr %i.jl, align 8, !tbaa !53
  %i.jm = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(712) %i.bh) #25
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread, %.lr.ph107, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread97, %._crit_edge, %bb.at, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.jp = add nuw i64 %.0105, 1                   ; 2 uses
  %exitcond110.not = icmp eq i64 %i.jp, %i.i
  br i1 %exitcond110.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !1048

bb.au:                                            ; preds = %bb.aq, %bb.ai, %bb.aa, %bb.s, %bb.k, %bb.d
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.jq
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize56replace_convolution_with_innerproduct_after_innerproductEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.split118.us, label %.lr.ph112.us

.lr.ph112.us:                                     ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us
  %.0110.us = phi i1 [ %.2.us.mux, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us ], [ false, %bb.a ] ; 4 uses
  %.056109.us = phi i64 [ %.mux, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.056109.us
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 23 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %i.p = icmp eq i64 %i.o, 12
  br i1 %i.p, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us: ; preds = %.lr.ph112.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 8030569537813245513
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %i.v = load i32, ptr %i.u, align 1
  %i.w = zext i32 %i.v to i64
  %i.x = xor i64 %i.w, 1952675172
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not102.us = icmp eq i32 %i.aa, 0
  br i1 %.not102.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.054105.us = add nuw i64 %.056109.us, 1        ; 3 uses
  %i.ae = icmp ult i64 %.054105.us, %i.i
  br i1 %i.ae, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us
  %.054106.us = phi i64 [ %.054.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us ], [ %.054105.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.054106.us
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 11
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.us: ; preds = %.lr.ph.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 8391732706658905923
  %i.ao = getelementptr i8, ptr %i.al, i64 3
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 7957695015494119286
  %i.ar = or i64 %i.an, %i.aq
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not103.us = icmp eq i32 %i.at, 0
  br i1 %.not103.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread101.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread101.us: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !91
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !80 ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %.not.us = icmp eq i64 %i.ba, 4
  br i1 %.not.us, label %bb.b, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread101.us
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !81
  %i.bc = icmp eq i32 %i.bb, %i.ad
  br i1 %i.bc, label %._crit_edge.us, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread.us: ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.thread101.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit99.us, %.lr.ph.us
  %.054.us = add nuw i64 %.054106.us, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %.054.us, %i.i
  br i1 %exitcond.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us, label %.lr.ph.us, !llvm.loop !1049

._crit_edge.us:                                   ; preds = %bb.b, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us
  %.054.lcssa.us = phi i64 [ %.054105.us, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread100.us ], [ %.054106.us, %bb.b ] ; 3 uses
  %i.bd = icmp eq i64 %.054.lcssa.us, %i.i
  br i1 %i.bd, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.054.lcssa.us
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53 ; 49 uses
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !57
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.207, ptr noundef %i.bi, ptr noundef %i.bk) #27 ; 0 uses
  %i.bm = call noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef nonnull @.str.111) ; 38 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !58
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef 0, i64 noundef %i.bp, ptr noundef nonnull @.str.111, i64 noundef 12) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %i.bu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bv) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(592) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.d unwind label %.split116.us ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 208
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !170
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 256
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 212
  %i.ch = load <2 x i32>, ptr %i.cf, align 8, !tbaa !81
  store <2 x i32> %i.ch, ptr %i.cg, align 4, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 264
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !144
  %i.ck = getelementptr inbounds nuw i8, ptr %i.m, i64 220
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !173
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 352 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 304 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_ZN4ncnn3MataSERKS0_.exit70.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 360
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !77 ; 2 uses
  %.not.i68.us = icmp eq ptr %i.cp, null
  br i1 %.not.i68.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = atomicrmw add ptr %i.cp, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !77 ; 2 uses
  %.not.i71.us = icmp eq ptr %i.cs, null
  br i1 %.not.i71.us, label %.noexc69.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ct = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.i, label %.noexc69.us

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bm, i64 336
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !78 ; 3 uses
  %.not3.i.us = icmp eq ptr %i.cw, null
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx)
          to label %.noexc69.us unwind label %.split116.us, !inline_history !1

bb.k:                                             ; preds = %bb.i
  %.not.i96.us = icmp eq ptr %i.cx, null
  br i1 %.not.i96.us, label %.noexc69.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.cx) #25
  br label %.noexc69.us

.noexc69.us:                                      ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 320
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 328
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bm, i64 344 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 360
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 368 ; 2 uses
  store i64 0, ptr %i.df, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cm, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.dd, i8 0, i64 20, i1 false)
  %i.dg = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !92
  store <2 x ptr> %i.dg, ptr %i.cm, align 8, !tbaa !92
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bf, i64 368
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !93
  store i64 %i.di, ptr %i.db, align 8, !tbaa !93
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bf, i64 376
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !94
  store i32 %i.dk, ptr %i.dc, align 8, !tbaa !94
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bf, i64 384
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 336
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw i8, ptr %i.bf, i64 392
  %i.dp = load <4 x i32>, ptr %i.do, align 8, !tbaa !81
  store <4 x i32> %i.dp, ptr %i.dd, align 8, !tbaa !81
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bf, i64 408
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !88
  store i32 %i.dr, ptr %i.de, align 8, !tbaa !88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bf, i64 416
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !76
  store i64 %i.dt, ptr %i.df, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit70.us

_ZN4ncnn3MataSERKS0_.exit70.us:                   ; preds = %.noexc69.us, %bb.d
  %i.du = getelementptr inbounds nuw i8, ptr %i.bf, i64 424 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 376 ; 4 uses
  %i.dw = icmp eq ptr %i.dv, %i.du
  br i1 %i.dw, label %_ZN4ncnn3MataSERKS0_.exit67.us, label %bb.m

bb.m:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit70.us
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bf, i64 432
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !77 ; 2 uses
  %.not.i65.us = icmp eq ptr %i.dy, null
  br i1 %.not.i65.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = atomicrmw add ptr %i.dy, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 384
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !77 ; 2 uses
  %.not.i73.us = icmp eq ptr %i.eb, null
  br i1 %.not.i73.us, label %.noexc66.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.q, label %.noexc66.us

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 408
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !78 ; 3 uses
  %.not3.i74.us = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr %i.dv, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i74.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  invoke void %i.ej(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef %i.eg)
          to label %.noexc66.us unwind label %.split116.us, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i94.us = icmp eq ptr %i.eg, null
  br i1 %.not.i94.us, label %.noexc66.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.eg) #25
  br label %.noexc66.us

.noexc66.us:                                      ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bm, i64 392
  %i.el = getelementptr inbounds nuw i8, ptr %i.bm, i64 400
  %i.em = getelementptr inbounds nuw i8, ptr %i.bm, i64 416 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 432
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bm, i64 440 ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.dv, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.em, i8 0, i64 20, i1 false)
  %i.ep = load <2 x ptr>, ptr %i.du, align 8, !tbaa !92
  store <2 x ptr> %i.ep, ptr %i.dv, align 8, !tbaa !92
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bf, i64 440
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !93
  store i64 %i.er, ptr %i.ek, align 8, !tbaa !93
  %i.es = getelementptr inbounds nuw i8, ptr %i.bf, i64 448
  %i.et = load i32, ptr %i.es, align 8, !tbaa !94
  store i32 %i.et, ptr %i.el, align 8, !tbaa !94
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bf, i64 456
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !78
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bm, i64 408
end_hunk_13
