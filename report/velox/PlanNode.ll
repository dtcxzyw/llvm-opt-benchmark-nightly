inline.NumInlined: 17231
inline.NumDeleted: 5946
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK8facebook5velox4core19IndexLookupJoinNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE:bb.a
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4                   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 288230376151711743
  br i1 %i.j, label %bb.c, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.413) #42
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = shl nuw nsw i64 %i.h, 1
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #41
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %2, align 8, !tbaa !88
  store ptr %i.m, ptr %i.n, align 8, !tbaa !87
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.i
  store ptr %i.o, ptr %i.k, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.157, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %._crit_edge, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.e:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.073.076 = phi ptr [ %i.b, %.lr.ph ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  %i.v = load ptr, ptr %.sroa.073.076, align 8, !tbaa !984 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !87   ; 7 uses
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !89
  %.not.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !8
  %i.ac = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.q
  br i1 %i.ad, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !16  ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !12
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !15
  store i64 %i.ah, ptr %i.ab, align 8, !tbaa !15
  %.pre = load i64, ptr %i.r, align 8, !tbaa !16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ai = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ae, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !16
  store ptr %i.q, ptr %3, align 8, !tbaa !12
  store i64 0, ptr %i.r, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre77 = load ptr, ptr %3, align 8, !tbaa !12  ; 2 uses
  %i.al = icmp eq ptr %.pre77, %i.q
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.am = load i64, ptr %i.q, align 8, !tbaa !15
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %.pre77, i64 noundef %i.an) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.073.076, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.d
  br i1 %i.ap, label %._crit_edge, label %bb.e

bb.j:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.k:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.q
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.k
  %i.au = load i64, ptr %i.q, align 8, !tbaa !15
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.j
  %.pn25 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.z

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !8, !alias.scope !1010
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !90, !noalias !1010 ; 13 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !90, !noalias !1010 ; 5 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64
  store i64 0, ptr %i.ax, align 8, !tbaa !16, !alias.scope !1010
  store i8 0, ptr %i.aw, align 8, !tbaa !15, !alias.scope !1010
  %i.bd = icmp eq ptr %i.ay, %i.bb
  br i1 %i.bd, label %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, %i.bb
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.l
  %i.bi = add i64 %i.bc, -64
  %i.bj = sub i64 %i.bi, %i.az                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 5
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 4 uses
  %min.iters.check = icmp ult i64 %i.bj, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i64 %i.bj, 512
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bl, 15                   ; 2 uses
  %i.bm = icmp eq i64 %n.mod.vf, 0
  %i.bn = select i1 %i.bm, i64 16, i64 %n.mod.vf  ; 2 uses
  %n.vec = sub nsw i64 %i.bl, %i.bn               ; 3 uses
  %i.bo = shl i64 %n.vec, 5                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.ay, i64 %i.bo
  %i.br = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.bf, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.br, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi119 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi120 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi121 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %i.bs = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bs
  %i.bt = getelementptr i8, ptr %i.ay, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.ay, i64 %i.bs
  %i.bv = getelementptr i8, ptr %i.ay, i64 %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.bx = getelementptr i8, ptr %i.bt, i64 168
  %i.by = getelementptr i8, ptr %i.bu, i64 296
  %i.bz = getelementptr i8, ptr %i.bv, i64 424
  %wide.vec = load <16 x i64>, ptr %i.bw, align 8, !tbaa !16
  %strided.vec = shufflevector <16 x i64> %wide.vec, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec125 = load <16 x i64>, ptr %i.bx, align 8, !tbaa !16
  %strided.vec126 = shufflevector <16 x i64> %wide.vec125, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec127 = load <16 x i64>, ptr %i.by, align 8, !tbaa !16
  %strided.vec128 = shufflevector <16 x i64> %wide.vec127, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec129 = load <16 x i64>, ptr %i.bz, align 8, !tbaa !16
  %strided.vec130 = shufflevector <16 x i64> %wide.vec129, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ca = add <4 x i64> %vec.phi, splat (i64 2)
  %i.cb = add <4 x i64> %vec.phi119, splat (i64 2)
  %i.cc = add <4 x i64> %vec.phi120, splat (i64 2)
  %i.cd = add <4 x i64> %vec.phi121, splat (i64 2)
  %i.ce = add <4 x i64> %i.ca, %strided.vec       ; 2 uses
  %i.cf = add <4 x i64> %i.cb, %strided.vec126    ; 2 uses
  %i.cg = add <4 x i64> %i.cc, %strided.vec128    ; 2 uses
  %i.ch = add <4 x i64> %i.cd, %strided.vec130    ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1013

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.cf, %i.ce
  %bin.rdx131 = add <4 x i64> %i.cg, %bin.rdx
  %bin.rdx132 = add <4 x i64> %i.ch, %bin.rdx131
  %i.cj = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx132) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bn, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1014

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.cj, %vec.epilog.iter.check ], [ %i.bf, %vector.main.loop.iter.check ]
  %n.mod.vf134 = and i64 %i.bl, 3                 ; 2 uses
  %i.ck = icmp eq i64 %n.mod.vf134, 0
  %i.cl = select i1 %i.ck, i64 4, i64 %n.mod.vf134
  %n.vec135 = sub nsw i64 %i.bl, %i.cl            ; 2 uses
  %i.cm = shl i64 %n.vec135, 5                    ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bg, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ay, i64 %i.cm
  %i.cp = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi137 = phi <4 x i64> [ %i.cp, %vec.epilog.ph ], [ %i.ct, %vec.epilog.vector.body ]
  %i.cq = shl i64 %index136, 5
  %next.gep138 = getelementptr i8, ptr %i.ay, i64 %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %next.gep138, i64 40
  %wide.vec139 = load <16 x i64>, ptr %i.cr, align 8, !tbaa !16
  %strided.vec140 = shufflevector <16 x i64> %wide.vec139, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.cs = add <4 x i64> %vec.phi137, splat (i64 2)
  %i.ct = add <4 x i64> %i.cs, %strided.vec140    ; 2 uses
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1015

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cv = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.ct)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bp, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.017.i.i.i.ph = phi i64 [ %i.bf, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.cv, %vec.epilog.middle.block ]
  %.sroa.0.016.i.i.i.ph = phi ptr [ %i.ay, %iter.check ], [ %i.bq, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.cw = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.017.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.0.016.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.cz = add i64 %.017.i.i.i, 2
  %i.da = add i64 %i.cz, %i.cy                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bb
  br i1 %i.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1016

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.l
  %.0.lcssa.i.i.i = phi i64 [ %i.bf, %bb.l ], [ %i.da, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i67 = icmp ugt i64 %.0.lcssa.i.i.i, 15
  br i1 %.not.i67, label %bb.m, label %.noexc.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.dd = icmp slt i64 %.0.lcssa.i.i.i, 0
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
          to label %.noexc69 unwind label %bb.q

.noexc69:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %.0.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i.i.i, i64 30) ; 2 uses
  %i.de = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.df = icmp slt i64 %i.de, 0
  br i1 %i.df, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !17

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc70 unwind label %bb.q

.noexc70:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.o
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #41
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.q ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.dg, align 1, !tbaa !15
  store ptr %i.dg, ptr %4, align 8, !tbaa !12
  store i64 %.0.i, ptr %i.aw, align 8, !tbaa !15
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESD_EEvT_T0_SL_RT1_(ptr nonnull align 1 dereferenceable(3) @.str.28, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 2), ptr nonnull %i.ay, ptr %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge unwind label %bb.q

.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge: ; preds = %.noexc.i
  %.pre78 = load ptr, ptr %4, align 8, !tbaa !12
  %.pre79 = load i64, ptr %i.ax, align 8, !tbaa !16
  br label %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.p, %bb.n, %.noexc.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %4, align 8, !tbaa !12, !alias.scope !1010 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.aw
  br i1 %i.dj, label %.body, label %.body.sink.split

_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit: ; preds = %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dk = phi i64 [ %.pre79, %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.dl = phi ptr [ %.pre78, %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge ], [ %i.aw, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ]
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.dl, i64 noundef %i.dk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.v ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.158, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !189 ; 3 uses
  %.not.i = icmp eq ptr %i.dp, null
  br i1 %.not.i, label %._crit_edge.i.i, label %bb.r

._crit_edge.i.i:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.dq, ptr %5, align 8, !tbaa !8
  store i32 1819047278, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %i.dr, align 8, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i8 0, ptr %i.ds, align 4, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8
  invoke void %i.dv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.dp)
          to label %._crit_edge80 unwind label %bb.w

._crit_edge80:                                    ; preds = %bb.r
  %.pre81 = load ptr, ptr %5, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre82 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge80, %._crit_edge.i.i
  %i.dw = phi i64 [ %.pre82, %._crit_edge80 ], [ 4, %._crit_edge.i.i ]
  %i.dx = phi ptr [ %.pre81, %._crit_edge80 ], [ %i.dq, %._crit_edge.i.i ]
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef %i.dx, i64 noundef %i.dw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44 unwind label %bb.x ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44: ; preds = %bb.s
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.160, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !878, !range !29, !noundef !30
  %i.ec = trunc nuw i8 %i.eb to i1                ; 2 uses
  %i.ed = select i1 %i.ec, ptr @.str.161, ptr @.str.162
  %i.ee = select i1 %i.ec, i64 4, i64 5
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.ed, i64 noundef %i.ee)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull @.str.58, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51 unwind label %bb.x ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit49
  %i.eh = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !15
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #43
  br label %.critedge

.critedge:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.em = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.aw
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %.critedge
  %i.eo = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %i.eq = load ptr, ptr %2, align 8, !tbaa !88    ; 3 uses
  %i.er = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ex, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 3 uses
  %i.es = load ptr, ptr %.05.i.i.i, align 8, !tbaa !12 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59: ; preds = %.lr.ph.i.i.i58
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !15
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #43
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i59
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ex, %i.er
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i58, !llvm.loop !146

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4core12_GLOBAL__N_120validateGroupingKeysERKNS1_15ColumnStatsSpecERKNS0_7RowTypeESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.cq = add nuw nsw i64 %i.cp, 1
  %.not.i.i.i23 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i23, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31, label %.lr.ph.i.i.i24.preheader

.lr.ph.i.i.i24.preheader:                         ; preds = %bb.u
  %.pre21 = load ptr, ptr %6, align 8, !tbaa !403
  br label %.lr.ph.i.i.i24

.lr.ph.i.i.i24:                                   ; preds = %.lr.ph.i.i.i24.preheader, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27
  %i.cr = phi ptr [ %i.cy, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27 ], [ %.pre21, %.lr.ph.i.i.i24.preheader ] ; 2 uses
  %.05.i.i.i25 = phi i64 [ %i.cz, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27 ], [ 0, %.lr.ph.i.i.i24.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %.05.i.i.i25 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !12 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %.lr.ph.i.i.i24
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !15
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #43
  %.pre = load ptr, ptr %6, align 8, !tbaa !403
  br label %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27

_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27: ; preds = %.lr.ph.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26
  %i.cy = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ %i.cr, %.lr.ph.i.i.i24 ]
  %i.cz = add nuw nsw i64 %.05.i.i.i25, 1         ; 2 uses
  %exitcond.not.i.i.i28 = icmp eq i64 %i.cz, %i.ck
  br i1 %exitcond.not.i.i.i28, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29, label %.lr.ph.i.i.i24, !llvm.loop !420

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i27
  %.pre.i30 = load i64, ptr %i.b, align 8, !tbaa !227
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29, %bb.u
  %i.da = phi i64 [ %.pre.i30, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i29 ], [ %i.cj, %bb.u ] ; 3 uses
  %i.db = icmp ult i64 %i.da, 256
  br i1 %i.db, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32, label %bb.v

bb.v:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31
  %i.dc = and i64 %i.da, 255                      ; 2 uses
  store i64 %i.dc, ptr %i.b, align 8, !tbaa !227
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32: ; preds = %bb.v, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31
  %i.dd = phi i64 [ %i.dc, %bb.v ], [ %i.da, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i31 ] ; 2 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !405 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %.0.copyload.i.i33 = load i16, ptr %i.df, align 1
  %i.dg = zext i16 %.0.copyload.i.i33 to i64
  %i.dh = icmp eq i64 %i.dd, 0
  %i.di = shl nuw nsw i64 %i.dg, 2
  %.neg17.i34 = sub nuw nsw i64 -16, %i.di
  %.neg18.i35 = shl i64 -64, %i.dd
  %.0.i.neg.i36 = select i1 %i.dh, i64 %.neg17.i34, i64 %.neg18.i35
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !405
  store i64 0, ptr %i.b, align 8, !tbaa !227
  %i.dj = and i64 %.0.i.neg.i36, -8
  %i.dk = shl nuw nsw i64 %i.cn, 5
  %i.dl = mul i64 %i.dk, %i.cq
  %i.dm = sub i64 %i.dl, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dm) #40
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit38

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEEEE9clearImplILb1EEEvv.exit38: ; preds = %bb.t, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %.pn13.pn
}

declare void @_ZN8facebook5velox4core16TableWriteTraits10outputTypeERKSt8optionalINS1_15ColumnStatsSpecEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.33") align 8, ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4core17InsertTableHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !104
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !182
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40, !inline_history !182
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !84
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #40
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox4core14TableWriteNode10addDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1340 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d, i64 noundef %i.f) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !8, !alias.scope !1387
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !90, !noalias !1387 ; 13 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90, !noalias !1387 ; 5 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  store i64 0, ptr %i.k, align 8, !tbaa !16, !alias.scope !1387
  store i8 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !1387
  %i.q = icmp eq ptr %i.l, %i.o
  br i1 %i.q, label %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !16   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 4 uses
  %i.u = icmp eq ptr %i.t, %i.o
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.v = add i64 %i.p, -64
  %i.w = sub i64 %i.v, %i.m                       ; 3 uses
  %i.x = lshr i64 %i.w, 5
  %i.y = add nuw nsw i64 %i.x, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.w, 128
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.w, 512
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 15                    ; 2 uses
  %i.z = icmp eq i64 %n.mod.vf, 0
  %i.aa = select i1 %i.z, i64 16, i64 %n.mod.vf   ; 2 uses
  %n.vec = sub nsw i64 %i.y, %i.aa                ; 3 uses
  %i.ab = shl i64 %n.vec, 5                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.ab
  %i.ae = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %i.s, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.ae, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi21 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi22 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi23 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.af = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ag = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %next.gep, i64 40
  %i.ak = getelementptr i8, ptr %i.ag, i64 168
  %i.al = getelementptr i8, ptr %i.ah, i64 296
  %i.am = getelementptr i8, ptr %i.ai, i64 424
  %wide.vec = load <16 x i64>, ptr %i.aj, align 8, !tbaa !16
  %strided.vec = shufflevector <16 x i64> %wide.vec, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec27 = load <16 x i64>, ptr %i.ak, align 8, !tbaa !16
  %strided.vec28 = shufflevector <16 x i64> %wide.vec27, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec29 = load <16 x i64>, ptr %i.al, align 8, !tbaa !16
  %strided.vec30 = shufflevector <16 x i64> %wide.vec29, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %wide.vec31 = load <16 x i64>, ptr %i.am, align 8, !tbaa !16
  %strided.vec32 = shufflevector <16 x i64> %wide.vec31, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.an = add <4 x i64> %vec.phi, splat (i64 2)
  %i.ao = add <4 x i64> %vec.phi21, splat (i64 2)
  %i.ap = add <4 x i64> %vec.phi22, splat (i64 2)
  %i.aq = add <4 x i64> %vec.phi23, splat (i64 2)
  %i.ar = add <4 x i64> %i.an, %strided.vec       ; 2 uses
  %i.as = add <4 x i64> %i.ao, %strided.vec28     ; 2 uses
  %i.at = add <4 x i64> %i.ap, %strided.vec30     ; 2 uses
  %i.au = add <4 x i64> %i.aq, %strided.vec32     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !1390

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.as, %i.ar
  %bin.rdx33 = add <4 x i64> %i.at, %bin.rdx
  %bin.rdx34 = add <4 x i64> %i.au, %bin.rdx33
  %i.aw = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx34) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aa, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !1014

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.aw, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %n.mod.vf36 = and i64 %i.y, 3                   ; 2 uses
  %i.ax = icmp eq i64 %n.mod.vf36, 0
  %i.ay = select i1 %i.ax, i64 4, i64 %n.mod.vf36
  %n.vec37 = sub nsw i64 %i.y, %i.ay              ; 2 uses
  %i.az = shl i64 %n.vec37, 5                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.t, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.l, i64 %i.az
  %i.bc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi39 = phi <4 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.bg, %vec.epilog.vector.body ]
  %i.bd = shl i64 %index38, 5
  %next.gep40 = getelementptr i8, ptr %i.l, i64 %i.bd
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep40, i64 40
  %wide.vec41 = load <16 x i64>, ptr %i.be, align 8, !tbaa !16
  %strided.vec42 = shufflevector <16 x i64> %wide.vec41, <16 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.bf = add <4 x i64> %vec.phi39, splat (i64 2)
  %i.bg = add <4 x i64> %i.bf, %strided.vec42     ; 2 uses
  %index.next43 = add nuw i64 %index38, 4         ; 2 uses
  %i.bh = icmp eq i64 %index.next43, %n.vec37
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1391

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bi = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bg)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.t, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.017.i.i.i.ph = phi i64 [ %i.s, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.sroa.0.016.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bj = phi ptr [ %i.bo, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.017.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i ], [ %.017.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.sroa.0.016.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bm = add i64 %.017.i.i.i, 2
  %i.bn = add i64 %i.bm, %i.bl                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.o
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1392

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %i.s, %bb.b ], [ %i.bn, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i = icmp ugt i64 %.0.lcssa.i.i.i, 15
  br i1 %.not.i, label %bb.c, label %.noexc.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.bq = icmp slt i64 %.0.lcssa.i.i.i, 0
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.376) #42
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.0.i = call i64 @llvm.umax.i64(i64 %.0.lcssa.i.i.i, i64 30) ; 2 uses
  %i.br = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !17

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #42
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #41
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i unwind label %bb.g ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  store i8 0, ptr %i.bt, align 1, !tbaa !15
  store ptr %i.bt, ptr %2, align 8, !tbaa !12
  store i64 %.0.i, ptr %i.j, align 8, !tbaa !15
  br label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZN5folly6detail18internalJoinAppendINS_5RangeIPKcEEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISD_SaISD_EEEESD_EEvT_T0_SL_RT1_(ptr nonnull align 1 dereferenceable(3) @.str.28, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.28, i64 2), ptr nonnull %i.l, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge unwind label %bb.g

.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge: ; preds = %.noexc.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !12
  %.pre12 = load i64, ptr %i.k, align 8, !tbaa !16
  br label %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.f, %bb.d, %.noexc.i
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %2, align 8, !tbaa !12, !alias.scope !1387 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.j
  br i1 %i.bw, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.bx = load i64, ptr %i.j, align 8, !tbaa !15, !alias.scope !1387
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #43
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.bu, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit: ; preds = %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge, %bb.a
  %i.bz = phi i64 [ %.pre12, %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge ], [ 0, %bb.a ]
  %i.ca = phi ptr [ %.pre, %.noexc.i._ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit_crit_edge ], [ %i.j, %bb.a ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.ca, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit
  %i.cc = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.j
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !1336, !range !29, !noundef !30
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  call fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_119addStatsSpecDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_15ColumnStatsSpecEE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(96) %i.cj)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5folly4joinIA3_cSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_RKT0_.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.j
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.i
  %i.co = load i64, ptr %i.j, align 8, !tbaa !15
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %common.resume

bb.j:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox4core12_GLOBAL__N_119addStatsSpecDetailsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKSt8optionalINS1_15ColumnStatsSpecEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1336, !range !29, !noundef !30
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.488, i64 noundef 6) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1338
  %i.h = tail call { i64, ptr } @_ZN8facebook5velox4core15AggregationNode6toNameENS2_4StepE(i32 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.j, i64 noundef %i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.489, i64 noundef 2) ; 0 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !79   ; 2 uses
  %.not9.i = icmp eq ptr %i.r, %i.s
  br i1 %.not9.i, label %_ZN8facebook5velox4core12_GLOBAL__N_19addFieldsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISE_EE.exit, label %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel.i

_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 64
  %.pre14.i = load i64, ptr %.phi.trans.insert13.i, align 8, !tbaa !16
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre12.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !12
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %.pre12.i, i64 noundef %.pre14.i) ; 0 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 16
  br i1 %i.z, label %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.i, label %_ZN8facebook5velox4core12_GLOBAL__N_19addFieldsERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERKSt6vectorISt10shared_ptrIKNS1_20FieldAccessTypedExprEESaISE_EE.exit

_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel.i, %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.i ], [ 1, %_ZN8facebook5velox4core12_GLOBAL__N_111appendCommaEiRNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE.exit.peel.i ] ; 2 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %.pre15.i = load ptr, ptr %i.l, align 8, !tbaa !79
  %.phi.trans.insert16.i = getelementptr inbounds nuw [16 x i8], ptr %.pre15.i, i64 %indvars.iv.i
  %.pre17.i = load ptr, ptr %.phi.trans.insert16.i, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %.pre17.i, i64 64
  %.pre21.i = load i64, ptr %.phi.trans.insert20.i, align 8, !tbaa !16
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %.pre17.i, i64 56
end_hunk_1
