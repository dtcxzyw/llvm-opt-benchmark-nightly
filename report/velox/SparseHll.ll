Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SparseHll?download=true
inline.NumInlined: 665
inline.NumDeleted: 287
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9serializeEaPc:bb.a
vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.az = shl i64 %index27, 2
  %next.gep28 = getelementptr i8, ptr %i.f, i64 %i.az
  %i.ba = trunc i64 %index27 to i32
  %i.bb = shl i32 %i.ba, 2
  %wide.load29 = load <8 x i32>, ptr %next.gep28, align 4, !tbaa !33
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %2, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  store <8 x i32> %wide.load29, ptr %i.be, align 4, !tbaa !33
  %index.next30 = add nuw i64 %index27, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !49

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.q, %n.vec26
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.019.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.f, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.sroa.7.018.ph = phi i32 [ 4, %iter.check ], [ 4, %vector.scevcheck ], [ 4, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.05.019 = phi ptr [ %i.bk, %.lr.ph ], [ %.sroa.05.019.ph, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.018 = phi i32 [ %i.bj, %.lr.ph ], [ %.sroa.7.018.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.05.019, align 4, !tbaa !33
  %i.bh = sext i32 %.sroa.7.018 to i64
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !33
  %i.bj = add i32 %.sroa.7.018, 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.05.019, i64 4 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.e
  br i1 %i.bl, label %._crit_edge, label %.lr.ph, !llvm.loop !50
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef i32 @_ZNK8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE14serializedSizeEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, -4
  %i.j = add i32 %i.i, 4
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithERKS5_(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 2
  tail call void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %i.h, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKj(ptr noundef nonnull align 8 dereferenceable(44) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.74", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !51
  store i64 0, ptr %3, align 16, !tbaa !20, !alias.scope !54, !noalias !51
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.b, align 16, !tbaa !20, !noalias !51
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.3, i64 11, i64 20, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !51
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common3hll9SparseHllINS0_19HashStringAllocatorEE9mergeWithEmPKjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.3) #16
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %4, align 8, !tbaa !25     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.r = add i64 %i.q, %1                         ; 5 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12StlAllocatorIjEC1EPNS0_19HashStringAllocatorEE18veloxCheckFailArgs) #16
  unreachable

_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit: ; preds = %bb.e
  %i.t = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i

bb.g:                                             ; preds = %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #16
  unreachable

_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZN8facebook5velox12StlAllocatorIjEC2EPNS0_19HashStringAllocatorE.exit
  %i.u = ptrtoint ptr %i.s to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i

_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %i.v, align 8
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_S_check_init_lenEmRKS3_.exit.i
  %i.w = call noundef ptr @_ZN8facebook5velox12StlAllocatorIjE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.r) ; 4 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.r
  %i.y = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.y, i1 false), !tbaa !33
  %scevgep.i.i.i = getelementptr i8, ptr %i.w, i64 %i.y
  br label %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit

_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit: ; preds = %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i, %.lr.ph.preheader.i.i.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i ], [ %i.x, %.lr.ph.preheader.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %.sink.i, ptr %i.aa, align 8, !tbaa !43
  store ptr %.0.lcssa.i.i.i, ptr %i.z, align 8, !tbaa !46
  %.not81 = icmp eq ptr %i.l, %i.m
  br i1 %.not81, label %iter.check160, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.v, align 8
  br label %bb.h

.preheader64:                                     ; preds = %bb.m
  %i.ad = sext i32 %.141 to i64                   ; 9 uses
  %i.ae = sext i32 %.1 to i64                     ; 2 uses
  %i.af = icmp ugt i64 %i.q, %i.ad
  br i1 %i.af, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader64
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !32  ; 4 uses
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !32  ; 4 uses
  %i.ai = sub nuw nsw i64 %i.q, %i.ad             ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = ptrtoaddr ptr %i.ah to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = shl i64 %indvars.iv.next, 2
  %i.am = shl nsw i64 %i.ad, 2
  %i.an = add i64 %i.al, %i.aj
  %i.ao = add i64 %i.am, %i.ak
  %i.ap = sub i64 %i.ao, %i.an
  %diff.check = icmp ugt i64 %i.ap, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check130 = icmp ult i64 %i.ai, 32
  br i1 %min.iters.check130, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aq = and i64 %i.ai, 24
  %n.vec = and i64 %i.ai, -32                     ; 5 uses
  %i.ar = add i64 %indvars.iv.next, %n.vec        ; 2 uses
  %i.as = add nsw i64 %n.vec, %i.ad
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.ad
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load = load <8 x i32>, ptr %gep, align 4, !tbaa !33
  %wide.load131 = load <8 x i32>, ptr %i.au, align 4, !tbaa !33
  %wide.load132 = load <8 x i32>, ptr %i.av, align 4, !tbaa !33
  %wide.load133 = load <8 x i32>, ptr %i.aw, align 4, !tbaa !33
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store <8 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !33
  store <8 x i32> %wide.load131, ptr %i.ay, align 4, !tbaa !33
  store <8 x i32> %wide.load132, ptr %i.az, align 4, !tbaa !33
  store <8 x i32> %wide.load133, ptr %i.ba, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %i.ai, -8                   ; 4 uses
  %i.bc = add i64 %indvars.iv.next, %n.vec135     ; 2 uses
  %i.bd = add nsw i64 %n.vec135, %i.ad
  %invariant.gep205 = getelementptr [4 x i8], ptr %i.ag, i64 %i.ad
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %gep206 = getelementptr [4 x i8], ptr %invariant.gep205, i64 %index136
  %wide.load137 = load <8 x i32>, ptr %gep206, align 4, !tbaa !33
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index136
  store <8 x i32> %wide.load137, ptr %i.bf, align 4, !tbaa !33
  %index.next138 = add nuw i64 %index136, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next138, %n.vec135
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n139 = icmp eq i64 %i.ai, %n.vec135
  br i1 %cmp.n139, label %.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv87.ph = phi i64 [ %indvars.iv.next, %iter.check ], [ %indvars.iv.next, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %indvars.iv85.ph = phi i64 [ %i.ad, %iter.check ], [ %i.ad, %vector.memcheck ], [ %i.as, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.bh = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.m ]
  %i.bi = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.m ]
  %.03967 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.m ] ; 3 uses
  %.04066 = phi i32 [ 0, %.lr.ph ], [ %.141, %bb.m ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33 ; 4 uses
  %i.bl = lshr i32 %i.bk, 6                       ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bh
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !33 ; 3 uses
  %i.bo = lshr i32 %i.bn, 6                       ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = add nsw i32 %.04066, 1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.br = icmp samesign ugt i32 %i.bl, %i.bo
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = add nsw i32 %.03967, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bt = add nsw i32 %.04066, 1
  %i.bu = and i32 %i.bk, 63
  %i.bv = add nsw i32 %.03967, 1
  %i.bw = and i32 %i.bn, 63
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bw)
  %i.bx = and i32 %i.bk, -64
  %i.by = or disjoint i32 %.sroa.speculated, %i.bx
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %.sink = phi i32 [ %i.bn, %bb.k ], [ %i.by, %bb.l ], [ %i.bk, %bb.i ]
  %.141 = phi i32 [ %.04066, %bb.k ], [ %i.bt, %bb.l ], [ %i.bq, %bb.i ] ; 3 uses
  %.1 = phi i32 [ %i.bs, %bb.k ], [ %i.bv, %bb.l ], [ %.03967, %bb.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %.sink, ptr %i.bz, align 4, !tbaa !33
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 9 uses
  %i.ca = sext i32 %.141 to i64                   ; 2 uses
  %i.cb = icmp ugt i64 %i.q, %i.ca
  %i.cc = sext i32 %.1 to i64                     ; 2 uses
  %i.cd = icmp ugt i64 %1, %i.cc
  %i.ce = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.h, label %.preheader64, !llvm.loop !59

.preheader:                                       ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader64
  %.245.lcssa.in = phi i64 [ %indvars.iv.next, %.preheader64 ], [ %i.bc, %vec.epilog.middle.block ], [ %i.ar, %middle.block ], [ %indvars.iv.next88, %vec.epilog.scalar.ph ] ; 2 uses
  %i.cf = icmp ugt i64 %1, %i.ae
  br i1 %i.cf, label %iter.check160, label %._crit_edge

iter.check160:                                    ; preds = %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit, %.preheader
  %.245.lcssa128 = phi i64 [ %.245.lcssa.in, %.preheader ], [ 0, %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit ]
  %.039.lcssa124127 = phi i64 [ %i.ae, %.preheader ], [ 0, %_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEEC2EmRKS3_.exit ] ; 9 uses
  %i.cg = load ptr, ptr %i.v, align 8, !tbaa !32  ; 4 uses
  %i.ch = and i64 %.245.lcssa128, 4294967295      ; 7 uses
  %i.ci = add nuw nsw i64 %.039.lcssa124127, 1
  %umax = call i64 @llvm.umax.i64(i64 %1, i64 %i.ci)
  %i.cj = sub i64 %umax, %.039.lcssa124127        ; 7 uses
  %min.iters.check144 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check144, label %vec.epilog.scalar.ph161.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %iter.check160
  %i.ck = ptrtoaddr ptr %i.cg to i64
  %i.cl = shl nuw nsw i64 %i.ch, 2
  %i.cm = add i64 %i.cl, %i.ck
  %i.cn = shl nsw i64 %.039.lcssa124127, 2
  %i.co = add i64 %i.cn, %i.a
  %i.cp = sub i64 %i.co, %i.cm
  %diff.check143 = icmp ugt i64 %i.cp, -128
  br i1 %diff.check143, label %vec.epilog.scalar.ph161.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %vector.memcheck142
  %min.iters.check146 = icmp ult i64 %i.cj, 32
  br i1 %min.iters.check146, label %vec.epilog.ph164, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.cq = and i64 %i.cj, 24
  %n.vec148 = and i64 %i.cj, -32                  ; 5 uses
  %i.cr = add i64 %i.ch, %n.vec148                ; 2 uses
  %i.cs = add i64 %.039.lcssa124127, %n.vec148
  %i.ct = getelementptr [4 x i8], ptr %2, i64 %.039.lcssa124127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.ct, i64 %index150 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %wide.load151 = load <8 x i32>, ptr %i.cv, align 4, !tbaa !33
  %wide.load152 = load <8 x i32>, ptr %i.cw, align 4, !tbaa !33
  %wide.load153 = load <8 x i32>, ptr %i.cx, align 4, !tbaa !33
  %wide.load154 = load <8 x i32>, ptr %i.cy, align 4, !tbaa !33
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index150 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store <8 x i32> %wide.load151, ptr %i.cz, align 4, !tbaa !33
  store <8 x i32> %wide.load152, ptr %i.da, align 4, !tbaa !33
  store <8 x i32> %wide.load153, ptr %i.db, align 4, !tbaa !33
  store <8 x i32> %wide.load154, ptr %i.dc, align 4, !tbaa !33
  %index.next155 = add nuw i64 %index150, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.dd, label %middle.block156, label %vector.body149, !llvm.loop !60

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.cj, %n.vec148
  br i1 %cmp.n157, label %._crit_edge, label %vec.epilog.iter.check162

vec.epilog.iter.check162:                         ; preds = %middle.block156
  %min.epilog.iters.check163 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check163, label %vec.epilog.scalar.ph161.preheader, label %vec.epilog.ph164, !prof !38

vec.epilog.ph164:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check162
  %vec.epilog.resume.val158 = phi i64 [ %n.vec148, %vec.epilog.iter.check162 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec165 = and i64 %i.cj, -8                   ; 4 uses
  %i.de = add i64 %i.ch, %n.vec165                ; 2 uses
  %i.df = add i64 %.039.lcssa124127, %n.vec165
  %i.dg = getelementptr [4 x i8], ptr %2, i64 %.039.lcssa124127
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  br label %vec.epilog.vector.body166

vec.epilog.vector.body166:                        ; preds = %vec.epilog.vector.body166, %vec.epilog.ph164
  %index167 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph164 ], [ %index.next169, %vec.epilog.vector.body166 ] ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.dg, i64 %index167
  %wide.load168 = load <8 x i32>, ptr %i.di, align 4, !tbaa !33
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index167
  store <8 x i32> %wide.load168, ptr %i.dj, align 4, !tbaa !33
  %index.next169 = add nuw i64 %index167, 8       ; 2 uses
  %i.dk = icmp eq i64 %index.next169, %n.vec165
  br i1 %i.dk, label %vec.epilog.middle.block170, label %vec.epilog.vector.body166, !llvm.loop !61

vec.epilog.middle.block170:                       ; preds = %vec.epilog.vector.body166
  %cmp.n171 = icmp eq i64 %i.cj, %n.vec165
  br i1 %cmp.n171, label %._crit_edge, label %vec.epilog.scalar.ph161.preheader

vec.epilog.scalar.ph161.preheader:                ; preds = %vector.memcheck142, %iter.check160, %vec.epilog.iter.check162, %vec.epilog.middle.block170
  %indvars.iv94.ph = phi i64 [ %i.ch, %iter.check160 ], [ %i.ch, %vector.memcheck142 ], [ %i.cr, %vec.epilog.iter.check162 ], [ %i.de, %vec.epilog.middle.block170 ]
  %indvars.iv92.ph = phi i64 [ %.039.lcssa124127, %iter.check160 ], [ %.039.lcssa124127, %vector.memcheck142 ], [ %i.cs, %vec.epilog.iter.check162 ], [ %i.df, %vec.epilog.middle.block170 ]
  br label %vec.epilog.scalar.ph161

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %vec.epilog.scalar.ph ], [ %indvars.iv87.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %vec.epilog.scalar.ph ], [ %indvars.iv85.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv85
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !33
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv87
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !33
  %i.do = icmp ugt i64 %i.q, %indvars.iv.next86
  br i1 %i.do, label %vec.epilog.scalar.ph, label %.preheader, !llvm.loop !62

vec.epilog.scalar.ph161:                          ; preds = %vec.epilog.scalar.ph161.preheader, %vec.epilog.scalar.ph161
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %vec.epilog.scalar.ph161 ], [ %indvars.iv94.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %vec.epilog.scalar.ph161 ], [ %indvars.iv92.ph, %vec.epilog.scalar.ph161.preheader ] ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv92
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !33
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv94
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !33
  %i.ds = icmp ugt i64 %1, %indvars.iv.next93
  br i1 %i.ds, label %vec.epilog.scalar.ph161, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph161, %middle.block156, %vec.epilog.middle.block170, %.preheader
  %.3.lcssa.in = phi i64 [ %.245.lcssa.in, %.preheader ], [ %i.de, %vec.epilog.middle.block170 ], [ %i.cr, %middle.block156 ], [ %indvars.iv.next95, %vec.epilog.scalar.ph161 ] ; 5 uses
  %i.dt = and i64 %.3.lcssa.in, 4294967295        ; 10 uses
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !46  ; 2 uses
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2                 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.dt
  br i1 %i.ea, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.eb = sub nuw nsw i64 %i.dt, %i.dz
  invoke void @_ZNSt6vectorIjN8facebook5velox12StlAllocatorIjEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.eb)
          to label %iter.check192 unwind label %bb.v

bb.o:                                             ; preds = %._crit_edge
  %i.ec = icmp ugt i64 %i.dz, %i.dt
  br i1 %i.ec, label %bb.p, label %iter.check192

bb.p:                                             ; preds = %bb.o
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.dt ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, %i.ed
  br i1 %.not.i.i, label %iter.check192, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ed, ptr %i.k, align 8, !tbaa !46
  br label %iter.check192

iter.check192:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.pre102 = load ptr, ptr %i.v, align 8, !tbaa !32 ; 8 uses
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !32  ; 8 uses
  %min.iters.check177 = icmp samesign ult i64 %i.dt, 4
  %i.ef = ptrtoaddr ptr %i.ee to i64
  %.pre102175 = ptrtoaddr ptr %.pre102 to i64
  %i.eg = sub i64 %.pre102175, %i.ef
  %diff.check176 = icmp ugt i64 %i.eg, -128
  %or.cond = select i1 %min.iters.check177, i1 true, i1 %diff.check176
  br i1 %or.cond, label %vec.epilog.scalar.ph193.preheader, label %vector.main.loop.iter.check178

vector.main.loop.iter.check178:                   ; preds = %iter.check192
  %min.iters.check179 = icmp samesign ult i64 %i.dt, 32
  br i1 %min.iters.check179, label %vec.epilog.ph196, label %vector.ph180

vector.ph180:                                     ; preds = %vector.main.loop.iter.check178
  %i.eh = and i64 %.3.lcssa.in, 28
  %n.vec181 = and i64 %.3.lcssa.in, 4294967264    ; 4 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %index183 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %wide.load184 = load <8 x i32>, ptr %i.ei, align 4, !tbaa !33
  %wide.load185 = load <8 x i32>, ptr %i.ej, align 4, !tbaa !33
  %wide.load186 = load <8 x i32>, ptr %i.ek, align 4, !tbaa !33
  %wide.load187 = load <8 x i32>, ptr %i.el, align 4, !tbaa !33
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index183 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  store <8 x i32> %wide.load184, ptr %i.em, align 4, !tbaa !33
  store <8 x i32> %wide.load185, ptr %i.en, align 4, !tbaa !33
  store <8 x i32> %wide.load186, ptr %i.eo, align 4, !tbaa !33
  store <8 x i32> %wide.load187, ptr %i.ep, align 4, !tbaa !33
  %index.next188 = add nuw i64 %index183, 32      ; 2 uses
  %i.eq = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.eq, label %middle.block189, label %vector.body182, !llvm.loop !64

end_hunk_0
