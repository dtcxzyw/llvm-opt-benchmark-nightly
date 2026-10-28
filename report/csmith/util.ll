Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/util?download=true
inline.NumInlined: 433
inline.NumDeleted: 206
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z17log_analysis_failRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = add i64 %i.aa, %i.y                     ; 3 uses
  %i.ae = load ptr, ptr @_ZL6errlogB5cxx11, align 8, !tbaa !33 ; 2 uses
  %i.af = icmp eq ptr %i.ae, getelementptr inbounds nuw (i8, ptr @_ZL6errlogB5cxx11, i64 16)
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ag = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL6errlogB5cxx11, i64 16), align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ai = phi i64 [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ad, %i.ai
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.y, 1
  br i1 %cond.i.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.x, align 1, !tbaa !29
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !29
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZL6errlogB5cxx11, i64 noundef %i.aa, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.y)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.l
  store i64 %i.ad, ptr getelementptr inbounds nuw (i8, ptr @_ZL6errlogB5cxx11, i64 8), align 8, !tbaa !28
  %i.al = load ptr, ptr @_ZL6errlogB5cxx11, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store i8 0, ptr %i.am, align 1, !tbaa !29
  %i.an = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.q
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

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
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36  ; 4 uses
  %.pre42 = load ptr, ptr %1, align 8, !tbaa !37  ; 4 uses
  %i.g = ptrtoint ptr %.pre to i64
  %i.h = ptrtoint ptr %.pre42 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
  %i.k = icmp eq ptr %.pre42, %.pre
  %i.l = getelementptr inbounds nuw i8, ptr %.pre42, i64 4
  %i.m = icmp eq ptr %i.l, %.pre
  %or.cond.i.i27 = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond.i.i27, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7, %.noexc.i.i.i.i9, %bb.b
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  resume { ptr, i32 } %lpad.loopexit.split-lp90

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13
  %i.n = phi ptr [ %i.ca, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 ], [ %.pre, %.preheader ] ; 8 uses
  %i.o = phi ptr [ %i.bz, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 ], [ %.pre42, %.preheader ] ; 10 uses
  %.ptr35.i.i = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 7 uses
  %.pre.i.i = load i32, ptr %.ptr35.i.i, align 4, !tbaa !10
  br label %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i

_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.d, %.lr.ph
  %i.p = phi i32 [ %.pre.i.i, %.lr.ph ], [ %i.q, %bb.d ]
  %.sroa.021.0.idx.i.i = phi i64 [ -4, %.lr.ph ], [ %.sroa.021.0.add.i.i, %bb.d ] ; 3 uses
  %.sroa.021.0.add.i.i = add nsw i64 %.sroa.021.0.idx.i.i, -4 ; 2 uses
  %.ptr.i.i = getelementptr inbounds i8, ptr %i.n, i64 %.sroa.021.0.add.i.i ; 3 uses
  %i.q = load i32, ptr %.ptr.i.i, align 4, !tbaa !10 ; 4 uses
  %i.r = icmp slt i32 %i.q, %i.p
  br i1 %i.r, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i, %.preheader.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.s, %.preheader.i.i ], [ %i.n, %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10   ; 2 uses
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.c, label %.preheader.i.i, !llvm.loop !70

bb.c:                                             ; preds = %.preheader.i.i
  store i32 %i.t, ptr %.ptr.i.i, align 4, !tbaa !10
  store i32 %i.q, ptr %i.s, align 4, !tbaa !10
  %.not11.i.not.i.i = icmp eq i64 %.sroa.021.0.idx.i.i, -4
  br i1 %.not11.i.not.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
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

bb.d:                                             ; preds = %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i
  %i.y = icmp eq ptr %.ptr.i.i, %i.o
  br i1 %i.y, label %bb.e, label %_ZSt9__reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_St26random_access_iterator_tag.exit.i.i, !llvm.loop !72

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoaddr ptr %i.o to i64                ; 3 uses
  %i.aa = ptrtoaddr ptr %i.n to i64
  %.not11.i13.i.i = icmp ult ptr %i.o, %.ptr35.i.i
  br i1 %.not11.i13.i.i, label %.lr.ph.i15.i.i.preheader, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread

.lr.ph.i15.i.i.preheader:                         ; preds = %bb.e
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %i.z, 4
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %i.ac)
  %i.ae = add i64 %i.ad, -4                       ; 2 uses
  %i.af = icmp ne i64 %i.ae, %i.z
  %i.ag = zext i1 %i.af to i64                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ag
  %i.ai = sub i64 %i.ae, %i.ah                    ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, %i.ag            ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 31
  br i1 %min.iters.check, label %.lr.ph.i15.i.i.preheader89, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i15.i.i.preheader
  %i.am = lshr i64 %i.ai, 3
  %i.an = add nuw nsw i64 %i.am, %i.ag
  %i.ao = shl nuw i64 %i.an, 2                    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.o, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = sub nuw nsw i64 -4, %i.ao
  %i.as = getelementptr i8, ptr %i.n, i64 %i.ar
  %bound0 = icmp ult ptr %i.o, %i.n
  %bound1 = icmp ult ptr %i.as, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i15.i.i.preheader89, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775804     ; 4 uses
  %i.at = mul i64 %n.vec, -4
  %i.au = getelementptr i8, ptr %.ptr35.i.i, i64 %i.at
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.o, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.ptr35.i.i, i64 %i.ax
  %i.ay = shl i64 %index, 2
  %next.gep85 = getelementptr i8, ptr %i.o, i64 %i.ay ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !10, !alias.scope !78, !noalias !79
  %i.az = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load86 = load <4 x i32>, ptr %i.az, align 4, !tbaa !10, !alias.scope !79
  %reverse = shufflevector <4 x i32> %wide.load86, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep85, align 4, !tbaa !10, !alias.scope !78, !noalias !79
  %reverse87 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse87, ptr %i.az, align 4, !tbaa !10, !alias.scope !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph.i15.i.i.preheader89

.lr.ph.i15.i.i.preheader89:                       ; preds = %vector.memcheck, %.lr.ph.i15.i.i.preheader, %middle.block
  %.sroa.0.013.i16.i.i.ph = phi ptr [ %.ptr35.i.i, %vector.memcheck ], [ %.ptr35.i.i, %.lr.ph.i15.i.i.preheader ], [ %i.au, %middle.block ]
  %.sroa.07.012.i17.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i15.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i15.i.i

.lr.ph.i15.i.i:                                   ; preds = %.lr.ph.i15.i.i.preheader89, %.lr.ph.i15.i.i
  %.sroa.0.013.i16.i.i = phi ptr [ %.sroa.0.0.i18.i.i, %.lr.ph.i15.i.i ], [ %.sroa.0.013.i16.i.i.ph, %.lr.ph.i15.i.i.preheader89 ] ; 3 uses
  %.sroa.07.012.i17.i.i = phi ptr [ %i.bd, %.lr.ph.i15.i.i ], [ %.sroa.07.012.i17.i.i.ph, %.lr.ph.i15.i.i.preheader89 ] ; 3 uses
  %i.bb = load i32, ptr %.sroa.07.012.i17.i.i, align 4, !tbaa !10
  %i.bc = load i32, ptr %.sroa.0.013.i16.i.i, align 4, !tbaa !10
  store i32 %i.bc, ptr %.sroa.07.012.i17.i.i, align 4, !tbaa !10
  store i32 %i.bb, ptr %.sroa.0.013.i16.i.i, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i17.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i18.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i16.i.i, i64 -4 ; 2 uses
  %.not.i19.i.i = icmp ult ptr %i.bd, %.sroa.0.0.i18.i.i
  br i1 %.not.i19.i.i, label %.lr.ph.i15.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, !llvm.loop !77

_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !41  ; 6 uses
  %i.bf = load ptr, ptr %i.f, align 8, !tbaa !42
  %.not.i5 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i5, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit
  %i.bg = ptrtoint ptr %i.n to i64
  %i.bh = ptrtoint ptr %i.o to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bj = icmp ugt i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %.noexc.i.i.i.i9, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7, !prof !43

.noexc.i.i.i.i9:                                  ; preds = %bb.f
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.noexc.i.i.i.i9
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7: ; preds = %bb.f
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc11:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i7
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !44
  %i.bo = load ptr, ptr %1, align 8, !tbaa !45    ; 3 uses
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp sgt i64 %i.bs, 4
  br i1 %i.bt, label %bb.g, label %bb.h, !prof !46

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr align 4 %i.bo, i64 %i.bs, i1 false)
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

bb.h:                                             ; preds = %.noexc11
  %i.bu = icmp eq i64 %i.bs, 4
  br i1 %i.bu, label %bb.i, label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

bb.i:                                             ; preds = %bb.h
  %i.bv = load i32, ptr %i.bo, align 4, !tbaa !10
  store i32 %i.bv, ptr %i.bk, align 4, !tbaa !10
  br label %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8

_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8: ; preds = %bb.i, %bb.h, %bb.g
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 %i.bs
  store ptr %i.bw, ptr %i.bl, align 8, !tbaa !36
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.by, ptr %i.e, align 8, !tbaa !41
  br label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13

bb.j:                                             ; preds = %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit
  invoke void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.be, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13: ; preds = %bb.j, %_ZSt12construct_atISt6vectorIiSaIiEEJRKS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i8
  %i.bz = load ptr, ptr %1, align 8, !tbaa !45    ; 3 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !45  ; 3 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = icmp eq ptr %i.cc, %i.ca
  %or.cond.i.i = select i1 %i.cb, i1 true, i1 %i.cd
  br i1 %or.cond.i.i, label %_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread, label %.lr.ph

_ZSt16next_permutationIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEbT_S7_.exit.thread: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit13, %.lr.ph.i15.i.i, %middle.block, %.preheader, %bb.e, %bb.a, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE9push_backERKS1_.exit
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
end_hunk_0
