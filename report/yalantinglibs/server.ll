Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3106
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #53
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 152) #53
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3145 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3115   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #54
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !3115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3145
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3106
  %i.m = load ptr, ptr %1, align 8, !tbaa !515    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !515
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !622

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !279
  store i8 %i.t, ptr %i.i, align 1, !tbaa !279
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !3145
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2905 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !2904 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !2904
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2905
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !2906
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !2119
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !2119
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !2904 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !2906
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #53
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !2905
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3150 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !3114 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #55
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !3114
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !3150
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3108
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !3107 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !3107 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bk = ptrtoaddr ptr %i.bc to i64
  %i.bl = ptrtoaddr ptr %i.bh to i64
  %i.bm = add i64 %i.bl, -2
  %i.bn = sub i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.bs = shl i64 %n.vec, 1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bc, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bv ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <8 x i16>, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load46, ptr %i.bx, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !8692

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.bp, -4                    ; 3 uses
  %i.bz = shl i64 %n.vec48, 1                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bc, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = shl i64 %index49, 1                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bc, i64 %i.cc
  %next.gep51 = getelementptr i8, ptr %i.bg, i64 %i.cc
  %wide.load52 = load <4 x i16>, ptr %next.gep51, align 1
  store <4 x i16> %wide.load52, ptr %next.gep50, align 1
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8693

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.bp, %n.vec48
  br i1 %cmp.n54, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ce = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ce, ptr %.08.i.i.i.i.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.bh
  br i1 %i.ch, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !8694

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bt, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !3150
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !3144 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !3113 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #55
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cs = phi ptr [ null, %.loopexit28 ], [ %i.cr, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !3113
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !3144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !3110
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !3109 ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !3109 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %.noexc25
  %i.cz = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.da = ptrtoaddr ptr %i.cs to i64
  %i.db = ptrtoaddr ptr %i.cx to i64
  %i.dc = add i64 %i.db, -4
  %i.dd = sub i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.dd, 44
  %i.dg = sub i64 %i.cz, %i.da
  %diff.check58 = icmp ugt i64 %i.dg, -32
  %or.cond72 = or i1 %min.iters.check59, %diff.check58
  br i1 %or.cond72, label %.lr.ph.i.i.i.i.i19.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %n.vec61 = and i64 %i.df, 9223372036854775800   ; 3 uses
  %i.dh = shl i64 %n.vec61, 2                     ; 2 uses
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.dh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dk = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.dk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cw, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 2
  %wide.load67 = load <4 x i32>, ptr %i.dl, align 2
  %i.dm = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 2
  store <4 x i32> %wide.load67, ptr %i.dm, align 2
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dn, label %middle.block69, label %vector.body62, !llvm.loop !8695

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.df, %n.vec61
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader73

.lr.ph.i.i.i.i.i19.preheader73:                   ; preds = %.lr.ph.i.i.i.i.i19.preheader, %middle.block69
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.di, %middle.block69 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dj, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader73, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.do, ptr %.08.i.i.i.i.i20, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.cx
  br i1 %i.dr, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !8696

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block69, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cs, %.noexc25 ], [ %i.di, %middle.block69 ], [ %i.dq, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.ct, align 8, !tbaa !3144
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ds, ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.as, align 8, !tbaa !3114 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %i.bf, align 8, !tbaa !3108
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #53
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.n ], [ %i.dw, %bb.o ], [ %i.dw, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #43
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.du, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !3115  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ec, null
end_hunk_0
begin_hunk_1_@_ZNSt14_Function_base13_Base_managerINSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEEE10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:bb.a
  %.not.i.i.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i3.i, label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !3106
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #53
  br label %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit

_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #53
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3145 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !3115   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #54
  unreachable

_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #55
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIcE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !3115
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3145
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3106
  %i.m = load ptr, ptr %1, align 8, !tbaa !515    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !515
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %bb.e, !prof !622

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 1
  br i1 %i.s, label %bb.f, label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !tbaa !279
  store i8 %i.t, ptr %i.i, align 1, !tbaa !279
  br label %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit

_ZNSt6vectorIcSaIcEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !3145
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2905 ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !2904 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i11, label %.noexc13, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775776
  br i1 %i.ad, label %.noexc.i.i12, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i12:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i12
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #55
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit
  %i.af = phi ptr [ null, %_ZNSt6vectorIcSaIcEEC2ERKS1_.exit ], [ %i.ae, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !2904
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !2905
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !2906
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !2119
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !2119
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.aj, ptr %i.ak, ptr noundef %i.af)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %.noexc13
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !2904 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !2906
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #53
  br label %.body

bb.j:                                             ; preds = %.noexc13
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !2905
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3150 ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !3114 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %.not.i.i.i.i14 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i14, label %.noexc17, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = icmp ugt i64 %i.az, 9223372036854775806
  br i1 %i.ba, label %.noexc.i.i15, label %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i15:                                     ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc16 unwind label %bb.n

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #55
          to label %.noexc17 unwind label %bb.n

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %bb.j
  %i.bc = phi ptr [ null, %bb.j ], [ %i.bb, %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !3114
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !3150
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !3108
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !3107 ; 7 uses
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !3107 ; 3 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %.loopexit28, label %iter.check

iter.check:                                       ; preds = %.noexc17
  %i.bj = ptrtoaddr ptr %i.bg to i64              ; 2 uses
  %i.bk = ptrtoaddr ptr %i.bc to i64
  %i.bl = ptrtoaddr ptr %i.bh to i64
  %i.bm = add i64 %i.bl, -2
  %i.bn = sub i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = add nuw i64 %i.bo, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.bn, 6
  %i.bq = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bn, 30
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bp, 12
  %n.vec = and i64 %i.bp, -16                     ; 4 uses
  %i.bs = shl i64 %n.vec, 1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bc, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bg, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bv ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.bg, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep45, align 1
  %wide.load46 = load <8 x i16>, ptr %i.bw, align 1
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1
  store <8 x i16> %wide.load46, ptr %i.bx, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !8725

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit28, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.bp, -4                    ; 3 uses
  %i.bz = shl i64 %n.vec48, 1                     ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bc, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = shl i64 %index49, 1                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bc, i64 %i.cc
  %next.gep51 = getelementptr i8, ptr %i.bg, i64 %i.cc
  %wide.load52 = load <4 x i16>, ptr %next.gep51, align 1
  store <4 x i16> %wide.load52, ptr %next.gep50, align 1
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8726

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.bp, %n.vec48
  br i1 %cmp.n54, label %.loopexit28, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.i.i.ph = phi ptr [ %i.bc, %iter.check ], [ %i.bt, %vec.epilog.iter.check ], [ %i.ca, %vec.epilog.middle.block ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.bg, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ce = load i16, ptr %.sroa.04.07.i.i.i.i.i, align 1
  store i16 %i.ce, ptr %.08.i.i.i.i.i, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 2 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.bh
  br i1 %i.ch, label %.loopexit28, label %.lr.ph.i.i.i.i.i, !llvm.loop !8727

.loopexit28:                                      ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc17
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc17 ], [ %i.ca, %vec.epilog.middle.block ], [ %i.bt, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bd, align 8, !tbaa !3150
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !3144 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !3113 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %.not.i.i.i.i18 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i.i.i18, label %.noexc25, label %bb.l

bb.l:                                             ; preds = %.loopexit28
  %i.cq = icmp ugt i64 %i.cp, 9223372036854775804
  br i1 %i.cq, label %.noexc.i.i23, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !284

.noexc.i.i23:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #54
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %.noexc.i.i23
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #55
          to label %.noexc25 unwind label %bb.o

.noexc25:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit28
  %i.cs = phi ptr [ null, %.loopexit28 ], [ %i.cr, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cs, ptr %i.ci, align 8, !tbaa !3113
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !3144
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cp
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !3110
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !3109 ; 5 uses
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !3109 ; 3 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i19.preheader:                     ; preds = %.noexc25
  %i.cz = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.da = ptrtoaddr ptr %i.cs to i64
  %i.db = ptrtoaddr ptr %i.cx to i64
  %i.dc = add i64 %i.db, -4
  %i.dd = sub i64 %i.dc, %i.cz                    ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.dd, 44
  %i.dg = sub i64 %i.cz, %i.da
  %diff.check58 = icmp ugt i64 %i.dg, -32
  %or.cond72 = or i1 %min.iters.check59, %diff.check58
  br i1 %or.cond72, label %.lr.ph.i.i.i.i.i19.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.i.i.i.i.i19.preheader
  %n.vec61 = and i64 %i.df, 9223372036854775800   ; 3 uses
  %i.dh = shl i64 %n.vec61, 2                     ; 2 uses
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.dh  ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cw, i64 %i.dh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dk = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.cs, i64 %i.dk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %i.cw, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep65, i64 16
  %wide.load66 = load <4 x i32>, ptr %next.gep65, align 2
  %wide.load67 = load <4 x i32>, ptr %i.dl, align 2
  %i.dm = getelementptr i8, ptr %next.gep64, i64 16
  store <4 x i32> %wide.load66, ptr %next.gep64, align 2
  store <4 x i32> %wide.load67, ptr %i.dm, align 2
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.dn, label %middle.block69, label %vector.body62, !llvm.loop !8728

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.df, %n.vec61
  br i1 %cmp.n70, label %.loopexit, label %.lr.ph.i.i.i.i.i19.preheader73

.lr.ph.i.i.i.i.i19.preheader73:                   ; preds = %.lr.ph.i.i.i.i.i19.preheader, %middle.block69
  %.08.i.i.i.i.i20.ph = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.di, %middle.block69 ]
  %.sroa.04.07.i.i.i.i.i21.ph = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i19.preheader ], [ %i.dj, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %.lr.ph.i.i.i.i.i19.preheader73, %.lr.ph.i.i.i.i.i19
  %.08.i.i.i.i.i20 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i19 ], [ %.08.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i21 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i19 ], [ %.sroa.04.07.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i19.preheader73 ] ; 2 uses
  %i.do = load i32, ptr %.sroa.04.07.i.i.i.i.i21, align 2
  store i32 %i.do, ptr %.08.i.i.i.i.i20, align 2
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i21, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i20, i64 4 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.cx
  br i1 %i.dr, label %.loopexit, label %.lr.ph.i.i.i.i.i19, !llvm.loop !8729

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i19, %middle.block69, %.noexc25
  %.0.lcssa.i.i.i.i.i22 = phi ptr [ %i.cs, %.noexc25 ], [ %i.di, %middle.block69 ], [ %i.dq, %.lr.ph.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i22, ptr %i.ct, align 8, !tbaa !3144
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 8 dereferenceable(64) %i.dt, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i23
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %i.as, align 8, !tbaa !3114 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load ptr, ptr %i.bf, align 8, !tbaa !3108
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = sub i64 %i.dz, %i.ea
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.eb) #53
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.n ], [ %i.dw, %bb.o ], [ %i.dw, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #43
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.du, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.ec = load ptr, ptr %0, align 8, !tbaa !3115  ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.ec, null
end_hunk_1
begin_hunk_2_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2905 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2906
  %.not.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i7, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !283
  %i.ar = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.as = load i64, ptr %i.g, align 8, !tbaa !288 ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !284

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #54
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #55
          to label %.noexc9 unwind label %bb.d    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !287
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !279
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.l
  %i.ay = phi ptr [ %i.ax, %.noexc9 ], [ %i.aq, %bb.l ] ; 3 uses
  switch i64 %i.as, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !279
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !279
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !288
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !279
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !2905
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !2905
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.q
  %i.bf = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !279
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bj, %bb.r ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !279
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.1512) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3150 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3108
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !3150
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !3150
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3114 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #54
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %i.j, -2
  %i.x = sub i64 %i.w, %i.k                       ; 3 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 6
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.x, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ac = shl i64 %n.vec, 1                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8761)
  %i.ag = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !8761, !noalias !8760
  %wide.load12 = load <8 x i16>, ptr %i.ag, align 1, !alias.scope !8761, !noalias !8760
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !8760, !noalias !8761
  store <8 x i16> %wide.load12, ptr %i.ah, align 1, !alias.scope !8760, !noalias !8761
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !8757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.z, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.i, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.am = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8761)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !8761, !noalias !8760
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !8760, !noalias !8761
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8758

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.z, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8760)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8761)
  %i.ao = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !8761, !noalias !8760
  store i16 %i.ao, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !8760, !noalias !8761
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8759

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #53
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !3114
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !3150
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.as, ptr %i.e, align 8, !tbaa !3108
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #43
  %i.b = load ptr, ptr %1, align 8, !tbaa !2997
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3001
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3003 ; 9 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #54
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !283
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.h, align 8, !tbaa !288
  store i8 0, ptr %i.g, align 8, !tbaa !279
  %.not45 = icmp eq ptr %2, %3
  br i1 %.not45, label %.preheader.split.us.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 313
  br label %bb.c

.preheader:                                       ; preds = %bb.n
  %.pre = load i64, ptr %i.h, align 8, !tbaa !288
  %.pre54 = load ptr, ptr %4, align 8             ; 4 uses
  %i.j = freeze i64 %.pre                         ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.preheader.split.us.preheader, label %.preheader.split

.preheader.split.us.preheader:                    ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %.preheader
  %i.l = phi ptr [ %.pre54, %.preheader ], [ %i.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ] ; 5 uses
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.critedge.us.3, %.preheader.split.us.preheader
  %.017.idx47.us = phi i64 [ 0, %.preheader.split.us.preheader ], [ %.017.add.us.3, %.critedge.us.3 ] ; 6 uses
  %.017.ptr.us = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.idx47.us
  %i.m = load ptr, ptr %.017.ptr.us, align 16, !tbaa !515
  %char0 = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %char0, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.split.us
  %.017.add.us = or disjoint i64 %.017.idx47.us, 8 ; 2 uses
  %.017.ptr.us.1 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us
  %i.o = load ptr, ptr %.017.ptr.us.1, align 8, !tbaa !515
  %char0.1 = load i8, ptr %i.o, align 1
  %i.p = icmp eq i8 %char0.1, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %.critedge.us
  %.017.add.us.1 = or disjoint i64 %.017.idx47.us, 16 ; 2 uses
  %.017.ptr.us.2 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.1
  %i.q = load ptr, ptr %.017.ptr.us.2, align 16, !tbaa !515
  %char0.2 = load i8, ptr %i.q, align 1
  %i.r = icmp eq i8 %char0.2, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.2

.critedge.us.2:                                   ; preds = %.critedge.us.1
  %.017.add.us.2 = or disjoint i64 %.017.idx47.us, 24 ; 2 uses
  %.017.ptr.us.3 = getelementptr inbounds nuw i8, ptr @_ZZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_E14__collatenames, i64 %.017.add.us.2
  %i.s = load ptr, ptr %.017.ptr.us.3, align 8, !tbaa !515
  %char0.3 = load i8, ptr %i.s, align 1
  %i.t = icmp eq i8 %char0.3, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge.us.3

.critedge.us.3:                                   ; preds = %.critedge.us.2
  %.017.add.us.3 = add nuw nsw i64 %.017.idx47.us, 32 ; 2 uses
  %.not23.us.3 = icmp eq i64 %.017.add.us.3, 1024
  br i1 %.not23.us.3, label %.critedge28, label %.preheader.split.us

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.02246 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %bb.n ] ; 2 uses
  %i.u = load i8, ptr %.02246, align 1, !tbaa !279 ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !279   ; 2 uses
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.d, label %_ZNKSt5ctypeIcE6narrowEcc.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef signext i8 %i.aa(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.u, i8 noundef signext 0)
          to label %.noexc unwind label %.loopexit, !inline_history !164 ; 3 uses

.noexc:                                           ; preds = %bb.d
  %.not11.i = icmp eq i8 %i.ab, 0
  br i1 %.not11.i, label %_ZNKSt5ctypeIcE6narrowEcc.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  store i8 %i.ab, ptr %i.w, align 1, !tbaa !279
  br label %_ZNKSt5ctypeIcE6narrowEcc.exit

_ZNKSt5ctypeIcE6narrowEcc.exit:                   ; preds = %bb.e, %.noexc, %bb.c
  %.0.i = phi i8 [ %i.x, %bb.c ], [ %i.ab, %bb.e ], [ 0, %.noexc ]
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !288 ; 6 uses
  %i.ad = add i64 %i.ac, 1                        ; 9 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !287   ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.g                 ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt5ctypeIcE6narrowEcc.exit
  %i.ag = icmp samesign ult i64 %i.ac, 16
end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE24_M_add_equivalence_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2905 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2906
  %.not.i7 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i7, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !283
  %i.ar = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.as = load i64, ptr %i.g, align 8, !tbaa !288 ; 8 uses
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %bb.m, label %._crit_edge.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.au = icmp slt i64 %i.as, 0
  br i1 %i.au, label %.noexc.i.i.i, label %bb.n

.noexc.i.i.i:                                     ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.909) #54
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.av = add nuw i64 %i.as, 1                    ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !284

.noexc6.i.i.i:                                    ; preds = %bb.n
  invoke void @_ZSt17__throw_bad_allocv() #54
          to label %.noexc8 unwind label %bb.d

.noexc8:                                          ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #55
          to label %.noexc9 unwind label %bb.d    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !287
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !279
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc9, %bb.l
  %i.ay = phi ptr [ %i.ax, %.noexc9 ], [ %i.aq, %bb.l ] ; 3 uses
  switch i64 %i.as, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !279
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !279
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.as, ptr %i.ba, align 8, !tbaa !288
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  store i8 0, ptr %i.bb, align 1, !tbaa !279
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !2905
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bd, ptr %i.am, align 8, !tbaa !2905
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.d

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.q
  %i.bf = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !279
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.bj, %bb.r ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !287   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.s
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !279
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE13_M_make_rangeEcc(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef signext %1, i8 noundef signext %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i8 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 8, ptr noundef nonnull @.str.1512) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i8 %2 to i16
  %.sroa.2.0.insert.shift.i = shl nuw i16 %.sroa.2.0.insert.ext.i, 8
  %.sroa.0.0.insert.ext.i = zext i8 %1 to i16
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3150 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3108
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !3150
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %i.c, align 8, !tbaa !3150
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !3114 ; 9 uses
  %i.j = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775806
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #54
  unreachable

_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 1                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add i64 %.sroa.speculated.i.i.i.i, %i.n  ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 4611686018427387903)
  %i.r = select i1 %i.p, i64 4611686018427387903, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #55 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i16 %.sroa.0.0.insert.insert.i, ptr %i.u, align 1
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %i.j, -2
  %i.x = sub i64 %i.w, %i.k                       ; 3 uses
  %i.y = lshr i64 %i.x, 1
  %i.z = add nuw i64 %i.y, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 6
  %i.aa = sub i64 %i.k, %i.v
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.x, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.ac = shl i64 %n.vec, 1                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.af ; 2 uses
  %next.gep11 = getelementptr i8, ptr %i.i, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8813)
  %i.ag = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 1, !alias.scope !8813, !noalias !8812
  %wide.load12 = load <8 x i16>, ptr %i.ag, align 1, !alias.scope !8813, !noalias !8812
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 1, !alias.scope !8812, !noalias !8813
  store <8 x i16> %wide.load12, ptr %i.ah, align 1, !alias.scope !8812, !noalias !8813
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !8809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %i.z, -4                     ; 3 uses
  %i.aj = shl i64 %n.vec14, 1                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.i, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 2 uses
  %i.am = shl i64 %index15, 1                     ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep17 = getelementptr i8, ptr %i.i, i64 %i.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8813)
  %wide.load18 = load <4 x i16>, ptr %next.gep17, align 1, !alias.scope !8813, !noalias !8812
  store <4 x i16> %wide.load18, ptr %next.gep16, align 1, !alias.scope !8812, !noalias !8813
  %index.next19 = add nuw i64 %index15, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next19, %n.vec14
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !8810

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %i.z, %n.vec14
  br i1 %cmp.n20, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.t, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.i, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8813)
  %i.ao = load i16, ptr %.0911.i.i.i.i.i.i, align 1, !alias.scope !8813, !noalias !8812
  store i16 %i.ao, ptr %.012.i.i.i.i.i.i, align 1, !alias.scope !8812, !noalias !8813
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8811

_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIccESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 2
  %.not.i23.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #53
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIccESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !3114
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !3150
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.r
  store ptr %i.as, ptr %i.e, align 8, !tbaa !3108
  br label %_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorISt4pairIccESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d, %_ZNSt6vectorISt4pairIccESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3018
  switch i32 %i.c, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit28 [
    i32 11, label %bb.b
    i32 16, label %bb.h
    i32 17, label %bb.u
    i32 15, label %bb.ac
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3019
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3020
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !3018
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !3021
  switch i32 %i.l, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.g:                                             ; preds = %bb.d
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3019
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3020
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 27, ptr %i.b, align 8, !tbaa !3018
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load i32, ptr %i.t, align 8, !tbaa !3021
  switch i32 %i.u, label %bb.n [
    i32 0, label %bb.k
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_collate_elementERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !288
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %3, align 8, !tbaa !287
  %i.z = load i8, ptr %i.y, align 1, !tbaa !279
  %i.aa = load i8, ptr %1, align 1, !tbaa !3169
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %bb.p, label %_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !3170
  invoke void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE11_M_add_charEc(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 noundef signext %i.ad)
          to label %_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit unwind label %bb.q

_ZZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb1ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEEENKUlcE_clEc.exit: ; preds = %bb.p, %bb.o
  store i8 1, ptr %1, align 1, !tbaa !3169
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.z, ptr %i.ae, align 1, !tbaa !3170
  br label %bb.t

end_hunk_3
