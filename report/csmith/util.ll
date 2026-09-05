Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/util?download=true
inline.NumInlined: 433
inline.NumDeleted: 206
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z17log_analysis_failRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.m
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !29
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ar = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.i
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.i, align 8, !tbaa !29
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 false

bb.n:                                             ; preds = %bb.d, %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

bb.o:                                             ; preds = %bb.l, %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.q
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.o
  %i.az = load i64, ptr %i.q, align 8, !tbaa !29
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.n
  %.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.aw, %bb.o ]
  %i.bb = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !29
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z7permuteSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofreeobj noundef align 8 dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = load ptr, ptr %1, align 8, !tbaa !37
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36  ; 4 uses
  %.pre41 = load ptr, ptr %1, align 8, !tbaa !37  ; 4 uses
  %i.g = ptrtoint ptr %.pre to i64
  %i.h = ptrtoint ptr %.pre41 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.k = icmp eq ptr %.pre41, %.pre
  %i.l = getelementptr inbounds nuw i8, ptr %.pre41, i64 4
  %i.m = icmp eq ptr %i.l, %.pre
  %or.cond.i.i27 = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond.i.i27, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.b, %.noexc.i.i.i.i9
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %lpad.phi

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13
  %i.n = phi ptr [ %i.ce, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 ], [ %.pre, %.preheader ] ; 8 uses
  %i.o = phi ptr [ %i.cd, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 ], [ %.pre41, %.preheader ] ; 10 uses
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 7 uses
  %.pre.i.i = load i32, ptr %.ptr35.i.i, align 4, !tbaa !10
  br label %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.e, %.lr.ph
  %i.p = phi i32 [ %.pre.i.i, %.lr.ph ], [ %i.q, %bb.e ]
  %.sroa.021.0.idx.i.i = phi i64 [ -4, %.lr.ph ], [ %.sroa.021.0.add.i.i, %bb.e ] ; 3 uses
  %.sroa.021.0.add.i.i = add nsw i64 %.sroa.021.0.idx.i.i, -4 ; 2 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.n, i64 %.sroa.021.0.add.i.i ; 3 uses
  %i.q = load i32, ptr %.ptr.i.i, align 4, !tbaa !10 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.p
  br i1 %i.r, label %.preheader.i.i, label %bb.e

.preheader.i.i:                                   ; preds = %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i, %.preheader.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.s, %.preheader.i.i ], [ %i.n, %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10   ; 2 uses
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.d, label %.preheader.i.i, !llvm.loop !70

bb.d:                                             ; preds = %.preheader.i.i
  store i32 %i.t, ptr %.ptr.i.i, align 4, !tbaa !10
  store i32 %i.q, ptr %i.s, align 4, !tbaa !10
  %.not11.i.not.i.i = icmp eq i64 %.sroa.021.0.idx.i.i, -4
  br i1 %.not11.i.not.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.d
  %.sroa.021.0.ptr.le.i.i = getelementptr inbounds i8, ptr %i.n, i64 %.sroa.021.0.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.sroa.0.013.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.ptr35.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.sroa.07.012.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.021.0.ptr.le.i.i, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.v = load i32, ptr %.sroa.07.012.i.i.i, align 4, !tbaa !10
  %i.w = load i32, ptr %.sroa.0.013.i.i.i, align 4, !tbaa !10
  store i32 %i.w, ptr %.sroa.07.012.i.i.i, align 4, !tbaa !10
  store i32 %i.v, ptr %.sroa.0.013.i.i.i, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i, i64 -4 ; 2 uses
  %.not.i.i.i = icmp ult ptr %i.x, %.sroa.0.0.i.i.i
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit, !llvm.loop !71

bb.e:                                             ; preds = %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i
  %i.y = icmp eq ptr %.ptr.i.i, %i.o
  br i1 %i.y, label %bb.f, label %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i, !llvm.loop !72

bb.f:                                             ; preds = %bb.e
  %i.z = ptrtoaddr ptr %i.n to i64                ; 2 uses
  %i.aa = ptrtoaddr ptr %i.o to i64               ; 6 uses
  %.not11.i13.i.i = icmp ult ptr %i.o, %.ptr35.i.i
  br i1 %.not11.i13.i.i, label %.lr.ph.i15.i.i.preheader, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread

.lr.ph.i15.i.i.preheader:                         ; preds = %bb.f
  %i.ab = add i64 %i.z, -8
  %i.ac = add i64 %i.aa, 4
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ae = add i64 %i.ad, -4                       ; 2 uses
  %i.af = icmp ne i64 %i.ae, %i.aa
  %i.ag = zext i1 %i.af to i64                    ; 2 uses
  %i.ah = add i64 %i.aa, %i.ag
  %i.ai = sub i64 %i.ae, %i.ah
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, %i.ag            ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 31
  br i1 %min.iters.check, label %.lr.ph.i15.i.i.preheader92, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i15.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.o, i64 4
  %i.am = add i64 %i.z, -8
  %i.an = add i64 %i.aa, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.an)
  %i.ao = add i64 %umax, -4                       ; 2 uses
  %i.ap = icmp ne i64 %i.ao, %i.aa
  %umin = zext i1 %i.ap to i64                    ; 2 uses
  %i.aq = add i64 %i.aa, %umin
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, %umin            ; 2 uses
  %i.au = shl nuw i64 %i.at, 2
  %scevgep81 = getelementptr i8, ptr %scevgep, i64 %i.au
  %scevgep82 = getelementptr i8, ptr %i.n, i64 -4
  %i.av = mul nsw i64 %i.at, -4
  %scevgep83 = getelementptr i8, ptr %scevgep82, i64 %i.av
  %bound0 = icmp ult ptr %i.o, %i.n
  %bound1 = icmp ult ptr %scevgep83, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i15.i.i.preheader92, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775804     ; 4 uses
  %i.aw = mul i64 %n.vec, -4
  %i.ax = getelementptr i8, ptr %.ptr35.i.i, i64 %i.aw
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.o, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.ptr35.i.i, i64 %i.ba
  %i.bb = shl i64 %index, 2
  %i.bc = getelementptr i8, ptr %i.o, i64 %i.bb   ; 2 uses
  %wide.load85.a = load <4 x i32>, ptr %i.bc, align 4, !tbaa !10, !alias.scope !78, !noalias !79
  %i.bd = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load87 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !10, !alias.scope !79
  %reverse88 = shufflevector <4 x i32> %wide.load87, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse88, ptr %i.bc, align 4, !tbaa !10, !alias.scope !78, !noalias !79
  %reverse90 = shufflevector <4 x i32> %wide.load85.a, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse90, ptr %i.bd, align 4, !tbaa !10, !alias.scope !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph.i15.i.i.preheader92

.lr.ph.i15.i.i.preheader92:                       ; preds = %vector.memcheck, %.lr.ph.i15.i.i.preheader, %middle.block
  %.sroa.0.013.i16.i.i.ph = phi ptr [ %.ptr35.i.i, %vector.memcheck ], [ %.ptr35.i.i, %.lr.ph.i15.i.i.preheader ], [ %i.ax, %middle.block ]
  %.sroa.07.012.i17.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i15.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %.lr.ph.i15.i.i.preheader92, %.lr.ph.i15.i.i
  %.sroa.0.013.i16.i.i = phi ptr [ %.sroa.0.0.i18.i.i, %.lr.ph.i15.i.i ], [ %.sroa.0.013.i16.i.i.ph, %.lr.ph.i15.i.i.preheader92 ] ; 3 uses
  %.sroa.07.012.i17.i.i = phi ptr [ %i.bh, %.lr.ph.i15.i.i ], [ %.sroa.07.012.i17.i.i.ph, %.lr.ph.i15.i.i.preheader92 ] ; 3 uses
  %i.bf = load i32, ptr %.sroa.07.012.i17.i.i, align 4, !tbaa !10
  %i.bg = load i32, ptr %.sroa.0.013.i16.i.i, align 4, !tbaa !10
  store i32 %i.bg, ptr %.sroa.07.012.i17.i.i, align 4, !tbaa !10
  store i32 %i.bf, ptr %.sroa.0.013.i16.i.i, align 4, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i17.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i18.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i16.i.i, i64 -4 ; 2 uses
  %.not.i19.i.i = icmp ult ptr %i.bh, %.sroa.0.0.i18.i.i
  br i1 %.not.i19.i.i, label %.lr.ph.i15.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, !llvm.loop !77

_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !41  ; 6 uses
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !42
  %.not.i5 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i5, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit
  %i.bk = ptrtoint ptr %i.n to i64
  %i.bl = ptrtoint ptr %i.o to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  %i.bn = icmp ugt i64 %i.bm, 9223372036854775804
  br i1 %i.bn, label %.noexc.i.i.i.i9, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7, !prof !43

.noexc.i.i.i.i9:                                  ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %.noexc.i.i.i.i9
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7: ; preds = %bb.g
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #23
          to label %.noexc11 unwind label %.loopexit ; 6 uses

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !44
  %i.bs = load ptr, ptr %1, align 8, !tbaa !45    ; 3 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp sgt i64 %i.bw, 4
  br i1 %i.bx, label %bb.h, label %bb.i, !prof !46

bb.h:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.bs, i64 %i.bw, i1 false)
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

bb.i:                                             ; preds = %.noexc11
  %i.by = icmp eq i64 %i.bw, 4
  br i1 %i.by, label %bb.j, label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

bb.j:                                             ; preds = %bb.i
  %i.bz = load i32, ptr %i.bs, align 4, !tbaa !10
  store i32 %i.bz, ptr %i.bo, align 4, !tbaa !10
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8: ; preds = %bb.j, %bb.i, %bb.h
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bw
  store ptr %i.ca, ptr %i.bp, align 8, !tbaa !36
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cc, ptr %i.e, align 8, !tbaa !41
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13

bb.k:                                             ; preds = %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 unwind label %.loopexit

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13: ; preds = %bb.k, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8
  %i.cd = load ptr, ptr %1, align 8, !tbaa !45    ; 3 uses
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ch = icmp eq ptr %i.cg, %i.ce
  %or.cond.i.i = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph

_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13, %.lr.ph.i15.i.i, %middle.block, %.preheader, %bb.f, %bb.a, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #21
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #21
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = load ptr, ptr %0, align 8, !tbaa !88     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr i64 %i.f, 2                         ; 3 uses
  %sext = shl i64 %i.f, 30                        ; 3 uses
  %i.h = ashr exact i64 %sext, 32                 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp ne i64 %sext, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.j = ashr exact i64 %sext, 30                 ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 14 uses
  store i32 0, ptr %i.k, align 4, !tbaa !10
  %i.l = add nsw i64 %i.h, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.n = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !10
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = trunc i64 %i.g to i32                    ; 2 uses
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.q
  store i32 %i.s, ptr %i.t, align 4, !tbaa !10
  %i.u = icmp sgt i32 %i.o, 1                     ; 2 uses
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

end_hunk_0
