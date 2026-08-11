inline.NumInlined: 702
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE:bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %i.is, i64 %.sroa.speculated20.i.i.i
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i
  %.0.i.i.i = phi ptr [ %i.jj, %bb.ba ], [ %i.is, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i ]
  %i.jk = sub i64 %i.iu, %.sroa.speculated20.i.i.i ; 2 uses
  %.not1427.i.i.i = icmp eq i64 %i.jk, 0
  br i1 %.not1427.i.i.i, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %.lr.ph.i.i.i
  %.129.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i ], [ %i.ju, %bb.bc ] ; 2 uses
  %storemerge28.i.i.i = phi i64 [ %i.jk, %.lr.ph.i.i.i ], [ %i.jv, %bb.bc ] ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !52
  tail call void @_ZN5folly2io13QueueAppender10ensureSlowEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.jm)
  %i.jn = load ptr, ptr %i.iv, align 8, !tbaa !79
  %i.jo = load ptr, ptr %1, align 8, !tbaa !80    ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %storemerge28.i.i.i, i64 %i.jr) ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %.129.i.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.js = load ptr, ptr %1, align 8, !tbaa !80
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.speculated.i.i.i
  store ptr %i.jt, ptr %1, align 8, !tbaa !80
  %i.ju = getelementptr inbounds nuw i8, ptr %.129.i.i.i, i64 %.sroa.speculated.i.i.i
  %i.jv = sub i64 %storemerge28.i.i.i, %.sroa.speculated.i.i.i ; 2 uses
  %.not14.i.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not14.i.i.i, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %bb.bc, !llvm.loop !120

_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit: ; preds = %bb.bc, %._crit_edge, %.lr.ph.i213, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, %.critedge.i.i.i.i, %_ZNK5folly7dynamic3endEv.exit.i212, %_ZNK5folly7dynamic3endEv.exit50, %_ZNK5folly7dynamic5itemsEv.exit, %bb.bb, %_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit, %_ZNKR5folly7dynamic6getIntEv.exit, %_ZN5folly2io13QueueAppender5writeIdEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA22_cmA35_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(35) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !119
  store i8 0, ptr %i.b, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %0, ptr %i.a, align 8, !tbaa !122
  %i.d = load i64, ptr %2, align 8, !tbaa !60     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIA22_cmJA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = mul nuw nsw i64 %i.f, 39
  %i.h = lshr i64 %i.g, 7                         ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60
  %i.k = icmp uge i64 %i.d, %i.j
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.h, 57
  %i.n = add nuw nsw i64 %i.m, %i.l
  br label %_ZN5folly6detail15reserveInTargetIA22_cmJA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i

_ZN5folly6detail15reserveInTargetIA22_cmJA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 58, %bb.a ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.i.i.i.i.i.i.i)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %_ZN5folly6detail15reserveInTargetIA22_cmJA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA22_cmA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(22) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(35) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5folly11toAppendFitIJA22_cmA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit unwind label %bb.c

_ZN5folly11toAppendFitIJA22_cmA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSE_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSD_.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.c:                                             ; preds = %.noexc, %_ZN5folly6detail15reserveInTargetIA22_cmJA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_RKT0_DpRKT1_.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.p = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.o
}

declare void @_ZNSt11range_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt11range_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN5folly10IOBufQueue7prependEPKvm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly2io13QueueAppenderD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5folly10IOBufQueue18WritableRangeCacheD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.j
  br i1 %.not.i.i.i, label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = load i64, ptr %i.n, align 8, !tbaa !26
  %i.s = add i64 %i.r, %i.q
  store i64 %i.s, ptr %i.n, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57
  %i.v = add i64 %i.u, %i.q
  store i64 %i.v, ptr %i.t, align 8, !tbaa !57
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.q
  store ptr %i.w, ptr %i.f, align 8, !tbaa !59
  br label %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i

_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i:    ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.x
  br i1 %.not.i.i, label %_ZN5folly10IOBufQueue18WritableRangeCacheD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i
  %i.y = load <2 x ptr>, ptr %i.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.i, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.y, ptr %i.x, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !48, !range !49, !noundef !50
  store i8 0, ptr %i.z, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.aa, ptr %i.ab, align 8, !tbaa !51
  store ptr %i.x, ptr %i.h, align 8, !tbaa !36
  br label %_ZN5folly10IOBufQueue18WritableRangeCacheD2Ev.exit

_ZN5folly10IOBufQueue18WritableRangeCacheD2Ev.exit: ; preds = %bb.a, %_ZNK5folly10IOBufQueue10flushCacheEv.exit.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.a) #24
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.a) #24
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly10IOBufQueueD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4bserL13bserEncodeIntElRNS_2io13QueueAppenderE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = trunc nsw i64 %0 to i8
  %i.b = add i64 %0, 128
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %0, 32768
  %i.e = icmp ult i64 %i.d, 65536
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %0, 2147483648
  %i.g = icmp ult i64 %i.f, 4294967296
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.j = load ptr, ptr %1, align 8, !tbaa !80     ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.g, label %bb.j, label %.split

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.n = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !81

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %.pre.i.i, %bb.e ], [ %i.n, %bb.d ]
  store i8 3, ptr %i.p, align 1
  %i.q = load ptr, ptr %1, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !80
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !79
  %i.t = icmp eq ptr %i.s, %i.r
  br i1 %i.t, label %bb.f, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit21, !prof !81

bb.f:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i20 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit21

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit21: ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %bb.f
  %i.u = phi ptr [ %.pre.i.i20, %bb.f ], [ %i.r, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit ]
  store i8 %i.a, ptr %i.u, align 1
  br label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.x = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.h, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23, !prof !81

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i22 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23: ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %.pre.i.i22, %bb.h ], [ %i.x, %bb.g ]
  store i8 4, ptr %i.z, align 1
  %i.aa = load ptr, ptr %1, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !80
  %i.ac = trunc nsw i64 %0 to i16
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !79
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.i, label %_ZN5folly2io13QueueAppender5writeIsEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !81

bb.i:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 2)
  %.pre.i.i24 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIsEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIsEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23, %bb.i
  %i.ai = phi ptr [ %.pre.i.i24, %bb.i ], [ %i.ab, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit23 ]
  store i16 %i.ac, ptr %i.ai, align 1
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  br i1 %i.k, label %bb.k, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26, !prof !81

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i25 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26: ; preds = %bb.j, %bb.k
  %i.aj = phi ptr [ %.pre.i.i25, %bb.k ], [ %i.j, %bb.j ]
  store i8 5, ptr %i.aj, align 1
  %i.ak = load ptr, ptr %1, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 3 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !80
  %i.am = trunc nsw i64 %0 to i32
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 4
  br i1 %i.ar, label %bb.l, label %_ZN5folly2io13QueueAppender5writeIiEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !81

bb.l:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 4)
  %.pre.i.i27 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIiEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIiEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26, %bb.l
  %i.as = phi ptr [ %.pre.i.i27, %bb.l ], [ %i.al, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit26 ]
  store i32 %i.am, ptr %i.as, align 1
  br label %bb.o

.split:                                           ; preds = %bb.c
  br i1 %i.k, label %bb.m, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29, !prof !81

bb.m:                                             ; preds = %.split
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i28 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29: ; preds = %.split, %bb.m
  %i.at = phi ptr [ %.pre.i.i28, %bb.m ], [ %i.j, %.split ]
  store i8 6, ptr %i.at, align 1
  %i.au = load ptr, ptr %1, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  store ptr %i.av, ptr %1, align 8, !tbaa !80
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !79
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 8
  br i1 %i.ba, label %bb.n, label %_ZN5folly2io13QueueAppender5writeIlEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !81

bb.n:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 8)
  %.pre.i.i30 = load ptr, ptr %1, align 8, !tbaa !80
  br label %_ZN5folly2io13QueueAppender5writeIlEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIlEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29, %bb.n
  %i.bb = phi ptr [ %.pre.i.i30, %bb.n ], [ %i.av, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit29 ]
  store i64 %0, ptr %i.bb, align 1
  br label %bb.o

bb.o:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIlEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %_ZN5folly2io13QueueAppender5writeIiEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %_ZN5folly2io13QueueAppender5writeIsEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit21
  %.sink38 = phi i64 [ 8, %_ZN5folly2io13QueueAppender5writeIlEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit ], [ 4, %_ZN5folly2io13QueueAppender5writeIiEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit ], [ 2, %_ZN5folly2io13QueueAppender5writeIsEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit ], [ 1, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit21 ]
  %i.bc = load ptr, ptr %1, align 8, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sink38
  store ptr %i.bd, ptr %1, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN5folly2io13QueueAppender10ensureSlowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2io13QueueAppender10ensureSlowEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, %0
  br i1 %.not.i.i, label %._ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit_crit_edge, label %bb.b

._ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !79
  %.pre11 = load ptr, ptr %0, align 8, !tbaa !80
  br label %_ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.2.0..0.1.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..0.1.sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.d, i8 0, i64 16, i1 false)
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %0, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !48, !range !49, !noundef !50
  store i8 0, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.g, ptr %i.h, align 8, !tbaa !51
  store ptr %0, ptr %i.c, align 8, !tbaa !36
  br label %_ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit

_ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit: ; preds = %._ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit_crit_edge, %bb.b
  %i.i = phi ptr [ %.pre11, %._ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit_crit_edge ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.b ]
  %i.j = phi ptr [ %.pre, %._ZN5folly10IOBufQueue18WritableRangeCache9fillCacheEv.exit_crit_edge ], [ %.sroa.2.0.copyload.i.i.i.i.i, %bb.b ]
end_hunk_0
