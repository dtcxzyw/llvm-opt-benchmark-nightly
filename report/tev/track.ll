Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/track?download=true
inline.NumInlined: 5838
inline.NumDeleted: 3256
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSG_1EJSD_SE_EEEEEEDcSI_DpT0_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJj5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSA_1EJjS8_EEEEEEDcSC_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJj5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSA_1EJjS8_EEEEEEDcSC_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJj5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #29
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJj5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJj5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__insert_with_sizeB8ne180100IPKcS6_EENS_11__wrap_iterIPhEENS7_IPKhEET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  %i.d = ptrtoint ptr %1 to i64                   ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 14 uses
  %i.h = icmp sgt i64 %4, 0
  br i1 %i.h, label %bb.b, label %_ZNSt3__14copyB8ne180100IPKcPhEET0_T_S5_S4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 10 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 10 uses
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp sgt i64 %4, %i.o
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %4
  %i.q = sub i64 %i.n, %i.d                       ; 3 uses
  %i.r = icmp sgt i64 %4, %i.q
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q ; 7 uses
  %.not13.i.i.i = icmp eq ptr %i.s, %3
  br i1 %.not13.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.t = add i64 %i.a, %i.d
  %i.u = add i64 %i.n, %i.b
  %i.v = sub i64 %i.t, %i.u                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.w = sub i64 %i.b, %i.d
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i64 %i.v, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.v, 24
  %n.vec = and i64 %i.v, -32                      ; 5 uses
  %i.y = getelementptr i8, ptr %i.s, i64 %n.vec
  %i.z = getelementptr i8, ptr %i.l, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %index ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.l, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !52
  %wide.load84 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !52
  %i.ab = getelementptr i8, ptr %next.gep83, i64 16
  store <16 x i8> %wide.load, ptr %next.gep83, align 1, !tbaa !52
  store <16 x i8> %wide.load84, ptr %i.ab, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1035

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !371

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.v, -8                     ; 4 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %n.vec86
  %i.ae = getelementptr i8, ptr %i.l, i64 %n.vec86 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 3 uses
  %next.gep88 = getelementptr i8, ptr %i.s, i64 %index87
  %next.gep89 = getelementptr i8, ptr %i.l, i64 %index87
  %wide.load90 = load <8 x i8>, ptr %next.gep88, align 1, !tbaa !52
  store <8 x i8> %wide.load90, ptr %next.gep89, align 1, !tbaa !52
  %index.next91 = add nuw i64 %index87, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next91, %n.vec86
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1036

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.v, %n.vec86
  br i1 %cmp.n92, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.015.i.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 3 uses
  %.01214.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 2 uses
  %.015.i.i.i.ph167 = ptrtoaddr ptr %.015.i.i.i.ph to i64 ; 2 uses
  %i.ag = sub i64 %i.a, %.015.i.i.i.ph167
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.015.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.prol ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01214.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.prol ], [ %.01214.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ah = load i8, ptr %.015.i.i.i.prol, align 1, !tbaa !52
  store i8 %i.ah, ptr %.01214.i.i.i.prol, align 1, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1037

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa166.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.prol ]
  %.015.i.i.i.unr = phi ptr [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.prol ]
  %.01214.i.i.i.unr = phi ptr [ %.01214.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.prol ]
  %i.ak = sub i64 %.015.i.i.i.ph167, %i.a
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.01214.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.am = load i8, ptr %.015.i.i.i, align 1, !tbaa !52
  store i8 %i.am, ptr %.01214.i.i.i, align 1, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 1
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !52
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !52
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 2
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !52
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !52
  %i.at = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 3
  %i.av = load i8, ptr %i.at, align 1, !tbaa !52
  store i8 %i.av, ptr %i.au, align 1, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 4
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !52
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !52
  %i.az = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 5
  %i.ba = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 5
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !52
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 6
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 6
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !52
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 7
  %i.bg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 7
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !52
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bi, %3
  br i1 %.not.i.i.i.7, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !1038

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa81 = phi ptr [ %i.ae, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.lcssa166.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i ]
  %.pre66 = ptrtoint ptr %.lcssa81 to i64
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre66, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit.loopexit ], [ %i.n, %bb.d ]
  %i.bk = sub i64 %.pre-phi, %i.n
  %i.bl = getelementptr inbounds i8, ptr %i.l, i64 %i.bk ; 3 uses
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !81
  %i.bm = icmp sgt i64 %i.q, 0
  br i1 %i.bm, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__14copyB8ne180100IPKcPhEET0_T_S5_S4_.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit
  %.pre67 = ptrtoint ptr %i.bl to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi68 = phi i64 [ %.pre67, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.n, %bb.c ] ; 3 uses
  %i.bn = phi ptr [ %i.bl, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.l, %bb.c ] ; 10 uses
  %.0 = phi ptr [ %i.s, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPKcS6_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.p, %bb.c ] ; 2 uses
  %i.bo = ptrtoaddr ptr %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 %4 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %.pre-phi68, %i.bq              ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %i.g, i64 %i.br ; 7 uses
  %i.bt = icmp ult ptr %i.bs, %i.l
  br i1 %i.bt, label %iter.check113, label %._crit_edge.i

iter.check113:                                    ; preds = %.critedge
  %i.bu = add i64 %4, %i.n
  %i.bv = sub i64 %i.bu, %.pre-phi68              ; 7 uses
  %min.iters.check97 = icmp ult i64 %i.bv, 8
  br i1 %min.iters.check97, label %.lr.ph.i.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %iter.check113
  %i.bw = add i64 %4, %i.bo
  %i.bx = sub i64 %.pre-phi68, %i.bw
  %diff.check96 = icmp ugt i64 %i.bx, -32
  br i1 %diff.check96, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check98

vector.main.loop.iter.check98:                    ; preds = %vector.memcheck95
  %min.iters.check99 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check99, label %vec.epilog.ph117, label %vector.ph100

vector.ph100:                                     ; preds = %vector.main.loop.iter.check98
  %i.by = and i64 %i.bv, 24
  %n.vec101 = and i64 %i.bv, -32                  ; 5 uses
  %i.bz = getelementptr i8, ptr %i.bs, i64 %n.vec101
  %i.ca = getelementptr i8, ptr %i.bn, i64 %n.vec101 ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next108, %vector.body102 ] ; 3 uses
  %next.gep104 = getelementptr i8, ptr %i.bs, i64 %index103 ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.bn, i64 %index103 ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep104, i64 16
  %wide.load106 = load <16 x i8>, ptr %next.gep104, align 1, !tbaa !52
  %wide.load107 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !52
  %i.cc = getelementptr i8, ptr %next.gep105, i64 16
  store <16 x i8> %wide.load106, ptr %next.gep105, align 1, !tbaa !52
  store <16 x i8> %wide.load107, ptr %i.cc, align 1, !tbaa !52
  %index.next108 = add nuw i64 %index103, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next108, %n.vec101
  br i1 %i.cd, label %middle.block109, label %vector.body102, !llvm.loop !1039

middle.block109:                                  ; preds = %vector.body102
  %cmp.n110 = icmp eq i64 %i.bv, %n.vec101
  br i1 %cmp.n110, label %._crit_edge.i, label %vec.epilog.iter.check115

vec.epilog.iter.check115:                         ; preds = %middle.block109
  %min.epilog.iters.check116 = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check116, label %.lr.ph.i.preheader, label %vec.epilog.ph117, !prof !371

vec.epilog.ph117:                                 ; preds = %vector.main.loop.iter.check98, %vec.epilog.iter.check115
  %vec.epilog.resume.val111 = phi i64 [ %n.vec101, %vec.epilog.iter.check115 ], [ 0, %vector.main.loop.iter.check98 ]
  %n.vec118 = and i64 %i.bv, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.bs, i64 %n.vec118
  %i.cf = getelementptr i8, ptr %i.bn, i64 %n.vec118 ; 2 uses
  br label %vec.epilog.vector.body119

vec.epilog.vector.body119:                        ; preds = %vec.epilog.vector.body119, %vec.epilog.ph117
  %index120 = phi i64 [ %vec.epilog.resume.val111, %vec.epilog.ph117 ], [ %index.next124, %vec.epilog.vector.body119 ] ; 3 uses
  %next.gep121 = getelementptr i8, ptr %i.bs, i64 %index120
  %next.gep122 = getelementptr i8, ptr %i.bn, i64 %index120
  %wide.load123 = load <8 x i8>, ptr %next.gep121, align 1, !tbaa !52
  store <8 x i8> %wide.load123, ptr %next.gep122, align 1, !tbaa !52
  %index.next124 = add nuw i64 %index120, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next124, %n.vec118
  br i1 %i.cg, label %vec.epilog.middle.block125, label %vec.epilog.vector.body119, !llvm.loop !1040

vec.epilog.middle.block125:                       ; preds = %vec.epilog.vector.body119
  %cmp.n126 = icmp eq i64 %i.bv, %n.vec118
  br i1 %cmp.n126, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck95, %iter.check113, %vec.epilog.iter.check115, %vec.epilog.middle.block125
  %.01924.i.ph = phi ptr [ %i.bs, %iter.check113 ], [ %i.bs, %vector.memcheck95 ], [ %i.bz, %vec.epilog.iter.check115 ], [ %i.ce, %vec.epilog.middle.block125 ] ; 3 uses
  %.sroa.6.023.i.ph = phi ptr [ %i.bn, %iter.check113 ], [ %i.bn, %vector.memcheck95 ], [ %i.ca, %vec.epilog.iter.check115 ], [ %i.cf, %vec.epilog.middle.block125 ] ; 2 uses
  %.01924.i.ph168 = ptrtoaddr ptr %.01924.i.ph to i64 ; 2 uses
  %i.ch = sub i64 %i.n, %.01924.i.ph168
  %xtraiter169 = and i64 %i.ch, 7                 ; 2 uses
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.01924.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.01924.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.6.023.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.sroa.6.023.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter171 = phi i64 [ %prol.iter171.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = load i8, ptr %.01924.i.prol, align 1, !tbaa !52
  store i8 %i.ci, ptr %.sroa.6.023.i.prol, align 1, !tbaa !52
  %i.cj = getelementptr inbounds nuw i8, ptr %.01924.i.prol, i64 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i.prol, i64 1 ; 3 uses
  %prol.iter171.next = add i64 %prol.iter171, 1   ; 2 uses
  %prol.iter171.cmp.not = icmp eq i64 %prol.iter171.next, %xtraiter169
  br i1 %prol.iter171.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1041

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa165.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.01924.i.unr = phi ptr [ %.01924.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %.sroa.6.023.i.unr = phi ptr [ %.sroa.6.023.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.01924.i.ph168, %i.n
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block109, %vec.epilog.middle.block125, %.critedge
  %.sroa.6.0.lcssa.i = phi ptr [ %i.bn, %.critedge ], [ %i.cf, %vec.epilog.middle.block125 ], [ %i.ca, %middle.block109 ], [ %.lcssa165.unr, %.lr.ph.i.prol.loopexit ], [ %i.dm, %.lr.ph.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.k, align 8, !tbaa !81
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE12__move_rangeEPhS4_S4_.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.cn = sub i64 0, %i.br
  %i.co = getelementptr inbounds i8, ptr %i.bn, i64 %i.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.co, ptr align 1 %i.g, i64 %i.br, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE12__move_rangeEPhS4_S4_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01924.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.01924.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.sroa.6.023.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.sroa.6.023.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cp = load i8, ptr %.01924.i, align 1, !tbaa !52
  store i8 %i.cp, ptr %.sroa.6.023.i, align 1, !tbaa !52
  %i.cq = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 1
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !52
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %.01924.i, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 2
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !52
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !52
  %i.cw = getelementptr inbounds nuw i8, ptr %.01924.i, i64 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 3
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !52
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %.01924.i, i64 4
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 4
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !52
  store i8 %i.db, ptr %i.da, align 1, !tbaa !52
  %i.dc = getelementptr inbounds nuw i8, ptr %.01924.i, i64 5
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 5
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !52
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !52
  %i.df = getelementptr inbounds nuw i8, ptr %.01924.i, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 6
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !52
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !52
  %i.di = getelementptr inbounds nuw i8, ptr %.01924.i, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 7
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !52
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !52
  %i.dl = getelementptr inbounds nuw i8, ptr %.01924.i, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.6.023.i, i64 8 ; 2 uses
  %exitcond.not.7 = icmp eq ptr %i.dl, %i.l
  br i1 %exitcond.not.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1042

_ZNSt3__16vectorIhNS_9allocatorIhEEE12__move_rangeEPhS4_S4_.exit: ; preds = %._crit_edge.i, %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.0, %2
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPKcPhEET0_T_S5_S4_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE12__move_rangeEPhS4_S4_.exit
  %i.dn = ptrtoint ptr %.0 to i64
  %i.do = ptrtoint ptr %2 to i64
  %i.dp = sub i64 %i.dn, %i.do
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %2, i64 %i.dp, i1 false)
  br label %_ZNSt3__14copyB8ne180100IPKcPhEET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.dq = sub i64 %i.n, %i.e
  %i.dr = add i64 %i.dq, %4                       ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.h, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit: ; preds = %bb.g
  %i.dt = sub i64 %i.m, %i.e                      ; 2 uses
  %.not.i = icmp ult i64 %i.dt, 4611686018427387903
  %i.du = shl nuw nsw i64 %i.dt, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.du, i64 %i.dr)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 3 uses
  %i.dv = icmp eq i64 %.0.i, 0
  br i1 %i.dv, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit
  %i.dw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #27
  %.pre = load ptr, ptr %0, align 8, !tbaa !80
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit: ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit, %bb.i
  %i.dx = phi ptr [ %.pre, %bb.i ], [ %i.c, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %storemerge.i = phi ptr [ %i.dw, %bb.i ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.f ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %2, i64 %4, i1 false), !tbaa !52
  %i.dz = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %.0.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %4 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %1, %i.dx
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIhEENS_16reverse_iteratorIPhEES5_hvEET1_RT_T0_S9_S6_.exit.i, label %iter.check148

iter.check148:                                    ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEEC2EmmS3_.exit
  %storemerge.i130 = ptrtoaddr ptr %storemerge.i to i64
end_hunk_0
