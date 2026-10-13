Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/sst_dump_tool?download=true
inline.NumInlined: 5471
inline.NumDeleted: 2149
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !69
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.aa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !163
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !384 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !386
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #34
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !384    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !384
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !385
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !211

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !69
  store i8 %i.t, ptr %i.i, align 1, !tbaa !69
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !385
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #33
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !163
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #34
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !388 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !387 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !388
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !389
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !435 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !435 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = ptrtoaddr ptr %i.bg to i64
  %i.bl = add i64 %i.bj, -2
  %i.bm = sub i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 14
  %2 = ptrtoaddr ptr %i.bc to i64
  %3 = ptrtoaddr ptr %i.bg to i64
  %i.bp = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.bp, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bm, 126
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 56
  %n.vec = and i64 %i.bo, -64                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 4 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 4 uses
  %i.bv = getelementptr i8, ptr %next.gep45, i64 32
  %i.bw = getelementptr i8, ptr %next.gep45, i64 64
  %i.bx = getelementptr i8, ptr %next.gep45, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <16 x i16>, ptr %i.bv, align 1
  %wide.load47 = load <16 x i16>, ptr %i.bw, align 1
  %wide.load48 = load <16 x i16>, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %next.gep, i64 32
  %i.bz = getelementptr i8, ptr %next.gep, i64 64
  %i.ca = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 1
  store <16 x i16> %wide.load46, ptr %i.by, align 1
  store <16 x i16> %wide.load47, ptr %i.bz, align 1
  store <16 x i16> %wide.load48, ptr %i.ca, align 1
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1091

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !438

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -8                    ; 3 uses
  %i.cc = shl i64 %n.vec50, 1                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bc, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cf = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cf
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %wide.load54 = load <8 x i16>, ptr %next.gep53, align 1
  store <8 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1092

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ch = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ch, ptr %.08.i.i.i.i.i, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.bh
  br i1 %i.ck, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !1093

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.cd, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !388
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !427 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !394 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.ct = icmp ugt i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #33
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cv = phi ptr [ null, %.loopexit28 ], [ %i.cu, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !394
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !427
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !391
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !390 ; 8 uses
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !390 ; 3 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %.loopexit, label %iter.check79

iter.check79:                                     ; preds = %.noexc25
  %i.dc = ptrtoaddr ptr %i.da to i64
  %i.dd = ptrtoaddr ptr %i.cz to i64
  %i.de = add i64 %i.dc, -4
  %i.df = sub i64 %i.de, %i.dd                    ; 3 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 5 uses
  %min.iters.check61 = icmp ult i64 %i.df, 28
  %4 = ptrtoaddr ptr %i.cv to i64
  %5 = ptrtoaddr ptr %i.cz to i64
  %i.di = sub i64 %5, %4
  %diff.check60 = icmp ugt i64 %i.di, -128
  %or.cond95 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond95, label %.lr.ph.i.i.i.i.i19.preheader, label %vector.main.loop.iter.check62

vector.main.loop.iter.check62:                    ; preds = %iter.check79
  %min.iters.check63 = icmp ult i64 %i.df, 124
  br i1 %min.iters.check63, label %vec.epilog.ph83, label %vector.ph64

vector.ph64:                                      ; preds = %vector.main.loop.iter.check62
  %i.dj = and i64 %i.dh, 24
  %n.vec65 = and i64 %i.dh, 9223372036854775776   ; 4 uses
  %i.dk = shl i64 %n.vec65, 2                     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cv, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cz, i64 %i.dk
  br label %vector.body66

vector.body66:                                    ; preds = %vector.ph64, %vector.body66
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next74, %vector.body66 ] ; 2 uses
  %i.dn = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cv, i64 %i.dn ; 4 uses
  %next.gep69 = getelementptr i8, ptr %i.cz, i64 %i.dn ; 4 uses
  %i.do = getelementptr i8, ptr %next.gep69, i64 32
  %i.dp = getelementptr i8, ptr %next.gep69, i64 64
  %i.dq = getelementptr i8, ptr %next.gep69, i64 96
  %wide.load70 = load <8 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <8 x i32>, ptr %i.do, align 2
  %wide.load72 = load <8 x i32>, ptr %i.dp, align 2
  %wide.load73 = load <8 x i32>, ptr %i.dq, align 2
  %i.dr = getelementptr i8, ptr %next.gep68, i64 32
  %i.ds = getelementptr i8, ptr %next.gep68, i64 64
  %i.dt = getelementptr i8, ptr %next.gep68, i64 96
  store <8 x i32> %wide.load70, ptr %next.gep68, align 2
  store <8 x i32> %wide.load71, ptr %i.dr, align 2
  store <8 x i32> %wide.load72, ptr %i.ds, align 2
  store <8 x i32> %wide.load73, ptr %i.dt, align 2
  %index.next74 = add nuw i64 %index67, 32        ; 2 uses
  %i.du = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.du, label %middle.block75, label %vector.body66, !llvm.loop !1094

middle.block75:                                   ; preds = %vector.body66
  %cmp.n76 = icmp eq i64 %i.dh, %n.vec65
  br i1 %cmp.n76, label %.loopexit, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block75
  %min.epilog.iters.check82 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check82, label %.lr.ph.i.i.i.i.i19.preheader, label %vec.epilog.ph83, !prof !430

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check62, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec65, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check62 ]
  %n.vec84 = and i64 %i.dh, 9223372036854775800   ; 3 uses
  %i.dv = shl i64 %n.vec84, 2                     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.cv, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %i.cz, i64 %i.dv
  br label %vec.epilog.vector.body85

vec.epilog.vector.body85:                         ; preds = %vec.epilog.vector.body85, %vec.epilog.ph83
  %index86 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next90, %vec.epilog.vector.body85 ] ; 2 uses
  %i.dy = shl i64 %index86, 2                     ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.cv, i64 %i.dy
  %next.gep88 = getelementptr i8, ptr %i.cz, i64 %i.dy
  %wide.load89 = load <8 x i32>, ptr %next.gep88, align 2
  store <8 x i32> %wide.load89, ptr %next.gep87, align 2
  %index.next90 = add nuw i64 %index86, 8         ; 2 uses
  %i.dz = icmp eq i64 %index.next90, %n.vec84
  br i1 %i.dz, label %vec.epilog.middle.block91, label %vec.epilog.vector.body85, !llvm.loop !1095

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body85
  %cmp.n92 = icmp eq i64 %i.dh, %n.vec84
  br i1 %cmp.n92, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block91
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cv, %iter.check79 ], [ %i.dl, %vec.epilog.iter.check81 ], [ %i.dw, %vec.epilog.middle.block91 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cz, %iter.check79 ], [ %i.dm, %vec.epilog.iter.check81 ], [ %i.dx, %vec.epilog.middle.block91 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader ] ; 2 uses
  %i.ea = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.ea, ptr %.08.i.i.i.i.i20, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.da
  br i1 %i.ed, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !1096

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block75, %vec.epilog.middle.block91, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cv, %.noexc25 ], [ %i.dw, %vec.epilog.middle.block91 ], [ %i.dl, %middle.block75 ], [ %i.ec, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.cw, align 8, !tbaa !427
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ee, ptr noundef nonnull align 8 dereferenceable(56) %i.ef, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = load ptr, ptr %i.bf, align 8, !tbaa !389
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #34
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.n ], [ %i.ei, %bb.o ], [ %i.ei, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.eg, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.eo = load ptr, ptr %0, align 8, !tbaa !384   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !386
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.p, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.010.018 = phi ptr [ %i.o, %bb.f ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !64
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.147) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !65

.noexc6.i.i:                                      ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #33
          to label %.noexc9 unwind label %.loopexit ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.j, ptr %.019, align 8, !tbaa !68
  store i64 %i.e, ptr %i.b, align 8, !tbaa !69
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc9, %.lr.ph
  %i.k = phi ptr [ %i.j, %.noexc9 ], [ %i.b, %.lr.ph ] ; 3 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !69
  store i8 %i.l, ptr %i.k, align 1, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !408
  store ptr %i.a, ptr %0, align 8, !tbaa !408
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !423
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !408
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #34
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !408
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !408    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #34
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !384    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !384
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !385
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !211

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !69
  store i8 %i.t, ptr %i.i, align 1, !tbaa !69
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !385
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #33
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !163
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #34
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !427 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !394 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !394
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !427
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !391
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !390 ; 8 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !390 ; 3 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bl = ptrtoaddr ptr %i.bj to i64
  %i.bm = ptrtoaddr ptr %i.bi to i64
  %i.bn = add i64 %i.bl, -4
  %i.bo = sub i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bo, 28
  %2 = ptrtoaddr ptr %i.be to i64
  %3 = ptrtoaddr ptr %i.bi to i64
  %i.br = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.br, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.bo, 124
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bq, 24
  %n.vec = and i64 %i.bq, 9223372036854775776     ; 4 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bw ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %i.bw ; 4 uses
  %i.bx = getelementptr i8, ptr %next.gep27, i64 32
  %i.by = getelementptr i8, ptr %next.gep27, i64 64
  %i.bz = getelementptr i8, ptr %next.gep27, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <8 x i32>, ptr %i.bx, align 2
  %wide.load29 = load <8 x i32>, ptr %i.by, align 2
  %wide.load30 = load <8 x i32>, ptr %i.bz, align 2
  %i.ca = getelementptr i8, ptr %next.gep, i64 32
  %i.cb = getelementptr i8, ptr %next.gep, i64 64
  %i.cc = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 2
  store <8 x i32> %wide.load28, ptr %i.ca, align 2
  store <8 x i32> %wide.load29, ptr %i.cb, align 2
  store <8 x i32> %wide.load30, ptr %i.cc, align 2
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !430

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.bq, 9223372036854775800   ; 3 uses
  %i.ce = shl i64 %n.vec32, 2                     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.be, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.ce
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.be, i64 %i.ch
  %next.gep35 = getelementptr i8, ptr %i.bi, i64 %i.ch
  %wide.load36 = load <8 x i32>, ptr %next.gep35, align 2
  store <8 x i32> %wide.load36, ptr %next.gep34, align 2
  %index.next37 = add nuw i64 %index33, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.bq, %n.vec32
  br i1 %cmp.n38, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.be, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bi, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.04.07.i.i.i.i.i, align 2
  store i32 %i.cj, ptr %.08.i.i.i.i.i, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.bj
  br i1 %i.cm, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1116

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.cf, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !427
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.o ], [ %i.cq, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cs = load ptr, ptr %0, align 8, !tbaa !384   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !386
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !404    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775744
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, !prof !65

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !404
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !405
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !406
  %i.m = load ptr, ptr %1, align 8, !tbaa !444    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !444  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %.013.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.08.012.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 64 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1117

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvT_S9_(ptr noundef %i.i, ptr noundef nonnull %.013.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

end_hunk_1
begin_hunk_2_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !69
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.z, %i.t
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i
  %i.aa = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !163
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !384 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !386
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #34
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #34
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !384    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !384
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !385
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !211

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !69
  store i8 %i.t, ptr %i.i, align 1, !tbaa !69
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !385
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #33
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !163
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #34
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !388 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !387 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #33
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !387
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !388
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !389
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !435 ; 8 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !435 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = ptrtoaddr ptr %i.bg to i64
  %i.bl = add i64 %i.bj, -2
  %i.bm = sub i64 %i.bl, %i.bk                    ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw i64 %i.bn, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bm, 14
  %2 = ptrtoaddr ptr %i.bc to i64
  %3 = ptrtoaddr ptr %i.bg to i64
  %i.bp = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.bp, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bm, 126
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bo, 56
  %n.vec = and i64 %i.bo, -64                     ; 4 uses
  %i.br = shl i64 %n.vec, 1                       ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bc, i64 %i.br  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bg, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bu ; 4 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bu ; 4 uses
  %i.bv = getelementptr i8, ptr %next.gep45, i64 32
  %i.bw = getelementptr i8, ptr %next.gep45, i64 64
  %i.bx = getelementptr i8, ptr %next.gep45, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <16 x i16>, ptr %i.bv, align 1
  %wide.load47 = load <16 x i16>, ptr %i.bw, align 1
  %wide.load48 = load <16 x i16>, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %next.gep, i64 32
  %i.bz = getelementptr i8, ptr %next.gep, i64 64
  %i.ca = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %wide.load, ptr %next.gep, align 1
  store <16 x i16> %wide.load46, ptr %i.by, align 1
  store <16 x i16> %wide.load47, ptr %i.bz, align 1
  store <16 x i16> %wide.load48, ptr %i.ca, align 1
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !438

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.bo, -8                    ; 3 uses
  %i.cc = shl i64 %n.vec50, 1                     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bc, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cc
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %i.cf = shl i64 %index51, 1                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.bc, i64 %i.cf
  %next.gep53 = getelementptr i8, ptr %i.bg, i64 %i.cf
  %wide.load54 = load <8 x i16>, ptr %next.gep53, align 1
  store <8 x i16> %wide.load54, ptr %next.gep52, align 1
  %index.next55 = add nuw i64 %index51, 8         ; 2 uses
  %i.cg = icmp eq i64 %index.next55, %n.vec50
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1129

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %i.bo, %n.vec50
  br i1 %cmp.n56, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bs, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ch = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ch, ptr %.08.i.i.i.i.i, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.bh
  br i1 %i.ck, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !1130

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.cd, %vec.epilog.middle.block ], [ %i.bs, %middle.block ], [ %i.cj, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !388
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !427 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !394 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.ct = icmp ugt i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #33
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cv = phi ptr [ null, %.loopexit28 ], [ %i.cu, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.cv, ptr %i.cl, align 8, !tbaa !394
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !427
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cs
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !391
  %i.cz = load ptr, ptr %i.cm, align 8, !tbaa !390 ; 8 uses
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !390 ; 3 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %.loopexit, label %iter.check79

iter.check79:                                     ; preds = %.noexc25
  %i.dc = ptrtoaddr ptr %i.da to i64
  %i.dd = ptrtoaddr ptr %i.cz to i64
  %i.de = add i64 %i.dc, -4
  %i.df = sub i64 %i.de, %i.dd                    ; 3 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 5 uses
  %min.iters.check61 = icmp ult i64 %i.df, 28
  %4 = ptrtoaddr ptr %i.cv to i64
  %5 = ptrtoaddr ptr %i.cz to i64
  %i.di = sub i64 %5, %4
  %diff.check60 = icmp ugt i64 %i.di, -128
  %or.cond95 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond95, label %.lr.ph.i.i.i.i.i19.preheader, label %vector.main.loop.iter.check62

vector.main.loop.iter.check62:                    ; preds = %iter.check79
  %min.iters.check63 = icmp ult i64 %i.df, 124
  br i1 %min.iters.check63, label %vec.epilog.ph83, label %vector.ph64

vector.ph64:                                      ; preds = %vector.main.loop.iter.check62
  %i.dj = and i64 %i.dh, 24
  %n.vec65 = and i64 %i.dh, 9223372036854775776   ; 4 uses
  %i.dk = shl i64 %n.vec65, 2                     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.cv, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cz, i64 %i.dk
  br label %vector.body66

vector.body66:                                    ; preds = %vector.ph64, %vector.body66
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next74, %vector.body66 ] ; 2 uses
  %i.dn = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cv, i64 %i.dn ; 4 uses
  %next.gep69 = getelementptr i8, ptr %i.cz, i64 %i.dn ; 4 uses
  %i.do = getelementptr i8, ptr %next.gep69, i64 32
  %i.dp = getelementptr i8, ptr %next.gep69, i64 64
  %i.dq = getelementptr i8, ptr %next.gep69, i64 96
  %wide.load70 = load <8 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <8 x i32>, ptr %i.do, align 2
  %wide.load72 = load <8 x i32>, ptr %i.dp, align 2
  %wide.load73 = load <8 x i32>, ptr %i.dq, align 2
  %i.dr = getelementptr i8, ptr %next.gep68, i64 32
  %i.ds = getelementptr i8, ptr %next.gep68, i64 64
  %i.dt = getelementptr i8, ptr %next.gep68, i64 96
  store <8 x i32> %wide.load70, ptr %next.gep68, align 2
  store <8 x i32> %wide.load71, ptr %i.dr, align 2
  store <8 x i32> %wide.load72, ptr %i.ds, align 2
  store <8 x i32> %wide.load73, ptr %i.dt, align 2
  %index.next74 = add nuw i64 %index67, 32        ; 2 uses
  %i.du = icmp eq i64 %index.next74, %n.vec65
  br i1 %i.du, label %middle.block75, label %vector.body66, !llvm.loop !1131

middle.block75:                                   ; preds = %vector.body66
  %cmp.n76 = icmp eq i64 %i.dh, %n.vec65
  br i1 %cmp.n76, label %.loopexit, label %vec.epilog.iter.check81

vec.epilog.iter.check81:                          ; preds = %middle.block75
  %min.epilog.iters.check82 = icmp eq i64 %i.dj, 0
  br i1 %min.epilog.iters.check82, label %.lr.ph.i.i.i.i.i19.preheader, label %vec.epilog.ph83, !prof !430

vec.epilog.ph83:                                  ; preds = %vector.main.loop.iter.check62, %vec.epilog.iter.check81
  %vec.epilog.resume.val77 = phi i64 [ %n.vec65, %vec.epilog.iter.check81 ], [ 0, %vector.main.loop.iter.check62 ]
  %n.vec84 = and i64 %i.dh, 9223372036854775800   ; 3 uses
  %i.dv = shl i64 %n.vec84, 2                     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.cv, i64 %i.dv  ; 2 uses
  %i.dx = getelementptr i8, ptr %i.cz, i64 %i.dv
  br label %vec.epilog.vector.body85

vec.epilog.vector.body85:                         ; preds = %vec.epilog.vector.body85, %vec.epilog.ph83
  %index86 = phi i64 [ %vec.epilog.resume.val77, %vec.epilog.ph83 ], [ %index.next90, %vec.epilog.vector.body85 ] ; 2 uses
  %i.dy = shl i64 %index86, 2                     ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.cv, i64 %i.dy
  %next.gep88 = getelementptr i8, ptr %i.cz, i64 %i.dy
  %wide.load89 = load <8 x i32>, ptr %next.gep88, align 2
  store <8 x i32> %wide.load89, ptr %next.gep87, align 2
  %index.next90 = add nuw i64 %index86, 8         ; 2 uses
  %i.dz = icmp eq i64 %index.next90, %n.vec84
  br i1 %i.dz, label %vec.epilog.middle.block91, label %vec.epilog.vector.body85, !llvm.loop !1132

vec.epilog.middle.block91:                        ; preds = %vec.epilog.vector.body85
  %cmp.n92 = icmp eq i64 %i.dh, %n.vec84
  br i1 %cmp.n92, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %iter.check79, %vec.epilog.iter.check81, %vec.epilog.middle.block91
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cv, %iter.check79 ], [ %i.dl, %vec.epilog.iter.check81 ], [ %i.dw, %vec.epilog.middle.block91 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cz, %iter.check79 ], [ %i.dm, %vec.epilog.iter.check81 ], [ %i.dx, %vec.epilog.middle.block91 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader ] ; 2 uses
  %i.ea = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.ea, ptr %.08.i.i.i.i.i20, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.da
  br i1 %i.ed, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !1133

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block75, %vec.epilog.middle.block91, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cv, %.noexc25 ], [ %i.dw, %vec.epilog.middle.block91 ], [ %i.dl, %middle.block75 ], [ %i.ec, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.cw, align 8, !tbaa !427
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ee, ptr noundef nonnull align 8 dereferenceable(64) %i.ef, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = load ptr, ptr %i.bf, align 8, !tbaa !389
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.en) #34
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.n ], [ %i.ei, %bb.o ], [ %i.ei, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.eg, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.eo = load ptr, ptr %0, align 8, !tbaa !384   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ep = load ptr, ptr %i.l, align 8, !tbaa !386
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449, !nonnull !156, !align !222
  %i.c = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.180) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !382
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !383
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !427  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !391
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !427
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !427
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !394  ; 9 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFbcENSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:bb.a
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !420
  store ptr %i.a, ptr %0, align 8, !tbaa !420
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !423
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !420
  %i.c = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 3 uses
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.b)
          to label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 160) #34
  resume { ptr, i32 } %i.d

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !420
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !420    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.e) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 160) #34
  br label %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.g, %bb.f, %_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEEE15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !384    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !384
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !385
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !386
  %i.m = load ptr, ptr %1, align 8, !tbaa !94     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !211

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !69
  store i8 %i.t, ptr %i.i, align 1, !tbaa !69
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !385
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !164  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #33
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !162
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !163
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !160
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !160
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !164 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !163
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #34
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !427 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !394 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %.noexc.i.i15, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !65

.noexc.i.i15:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #31
          to label %.noexc16 unwind label %bb.o

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #33
          to label %.noexc17 unwind label %bb.o

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %bb.k
  %i.be = phi ptr [ null, %bb.k ], [ %i.bd, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.be, ptr %i.au, align 8, !tbaa !394
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !427
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !391
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !390 ; 8 uses
  %i.bj = load ptr, ptr %i.aw, align 8, !tbaa !390 ; 3 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bl = ptrtoaddr ptr %i.bj to i64
  %i.bm = ptrtoaddr ptr %i.bi to i64
  %i.bn = add i64 %i.bl, -4
  %i.bo = sub i64 %i.bn, %i.bm                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bo, 28
  %2 = ptrtoaddr ptr %i.be to i64
  %3 = ptrtoaddr ptr %i.bi to i64
  %i.br = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.br, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check26 = icmp ult i64 %i.bo, 124
  br i1 %min.iters.check26, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bq, 24
  %n.vec = and i64 %i.bq, 9223372036854775776     ; 4 uses
  %i.bt = shl i64 %n.vec, 2                       ; 2 uses
  %i.bu = getelementptr i8, ptr %i.be, i64 %i.bt  ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bw ; 4 uses
  %next.gep27 = getelementptr i8, ptr %i.bi, i64 %i.bw ; 4 uses
  %i.bx = getelementptr i8, ptr %next.gep27, i64 32
  %i.by = getelementptr i8, ptr %next.gep27, i64 64
  %i.bz = getelementptr i8, ptr %next.gep27, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep27, align 2
  %wide.load28 = load <8 x i32>, ptr %i.bx, align 2
  %wide.load29 = load <8 x i32>, ptr %i.by, align 2
  %wide.load30 = load <8 x i32>, ptr %i.bz, align 2
  %i.ca = getelementptr i8, ptr %next.gep, i64 32
  %i.cb = getelementptr i8, ptr %next.gep, i64 64
  %i.cc = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 2
  store <8 x i32> %wide.load28, ptr %i.ca, align 2
  store <8 x i32> %wide.load29, ptr %i.cb, align 2
  store <8 x i32> %wide.load30, ptr %i.cc, align 2
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !430

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.bq, 9223372036854775800   ; 3 uses
  %i.ce = shl i64 %n.vec32, 2                     ; 2 uses
  %i.cf = getelementptr i8, ptr %i.be, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.ce
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 2 uses
  %i.ch = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.be, i64 %i.ch
  %next.gep35 = getelementptr i8, ptr %i.bi, i64 %i.ch
  %wide.load36 = load <8 x i32>, ptr %next.gep35, align 2
  store <8 x i32> %wide.load36, ptr %next.gep34, align 2
  %index.next37 = add nuw i64 %index33, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next37, %n.vec32
  br i1 %i.ci, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.bq, %n.vec32
  br i1 %cmp.n38, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.be, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bi, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.cj = load i32, ptr %.sroa.04.07.i.i.i.i.i, align 2
  store i32 %i.cj, ptr %.08.i.i.i.i.i, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.bj
  br i1 %i.cm, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1149

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.be, %.noexc17 ], [ %i.cf, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bf, align 8, !tbaa !427
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.j
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.cr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.o ], [ %i.cq, %bb.n ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.p ], [ %i.cp, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.cs = load ptr, ptr %0, align 8, !tbaa !384   ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !386
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #34
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE25_M_insert_bracket_matcherILb0ELb0EEEvb(ptr noundef nonnull align 8 dereferenceable(400) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_BracketMatcher", align 8 ; 28 uses
  %3 = alloca %"struct.std::__detail::_Compiler<std::__cxx11::regex_traits<char>>::_BracketState", align 1 ; 8 uses
  %4 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %5 = alloca %"class.std::function.307", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344, !nonnull !156, !align !222
  %i.c = zext i1 %1 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 99, i1 false)
  store ptr %i.b, ptr %i.d, align 8, !tbaa !276
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i8 %i.c, ptr %i.e, align 8, !tbaa !381
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 0, ptr %3, align 1, !tbaa !455
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  store i8 0, ptr %i.g, align 1, !tbaa !456
  %i.h = invoke noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_M_try_charEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.k = load i8, ptr %i.j, align 1, !tbaa !69
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split

.loopexit:                                        ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.a, %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE11_M_add_charEc.exit, %bb.e, %bb.h, %bb.i, %bb.j, %bb.p, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !293
  %i.o = icmp eq i32 %i.n, 28
  br i1 %i.o, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !294
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !295
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc
  store i32 27, ptr %i.m, align 8, !tbaa !293
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.sink.split
end_hunk_3
