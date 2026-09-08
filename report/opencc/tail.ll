Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/tail?download=true
inline.NumInlined: 441
inline.NumDeleted: 187
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6marisa8grimoire6vector9BitVector4map_ERNS0_2io6MapperE:bb.a
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.av = load <2 x ptr>, ptr %3, align 16, !tbaa !32
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !32
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !32
  store <2 x ptr> %i.aw, ptr %3, align 16, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.bb = load ptr, ptr %i.az, align 16, !tbaa !38
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !38
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !tbaa !28
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !tbaa !28
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !28
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !29, !range !30, !noundef !31
  store i8 %i.bj, ptr %i.bg, align 8, !tbaa !29
  store i8 %i.bi, ptr %i.bh, align 8, !tbaa !29
  %.not.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i16, label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit

bb.j:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 16, !tbaa !27   ; 2 uses
  %.not.i.i3.i14 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i3.i14, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %2, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bn = load <2 x ptr>, ptr %2, align 16, !tbaa !32
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !32
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !32
  store <2 x ptr> %i.bo, ptr %2, align 16, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bt = load ptr, ptr %i.br, align 16, !tbaa !38
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !38
  store ptr %i.bs, ptr %i.br, align 16, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !28
  %i.bx = load <2 x i64>, ptr %i.bu, align 8, !tbaa !28
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !28
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !29, !range !30, !noundef !31
  %i.cb = load i8, ptr %i.bz, align 8, !tbaa !29, !range !30, !noundef !31
  store i8 %i.cb, ptr %i.by, align 8, !tbaa !29
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !29
  %.not.i.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i21, label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23

bb.l:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 16, !tbaa !27   ; 2 uses
  %.not.i.i3.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i3.i18, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #17
  br label %common.resume
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorImE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !34
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !98, !range !30, !noundef !31
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorImE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.11)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #18
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.d, %bb.h ], [ %i.l, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.m, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorImE3fixEv.exit:  ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !98
  ret void

bb.h:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

declare void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = mul nuw i64 %i.d, 12
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %2)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !36
  %i.h = sub i64 0, %i.b
  %i.i = and i64 %i.h, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !99, !range !30, !noundef !31
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.11)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #18
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.e, %bb.h ], [ %i.n, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3fixEv.exit: ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !99
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !38
  %i.h = sub i64 0, %i.b
  %i.i = and i64 %i.h, 4
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !100, !range !30, !noundef !31
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorIjE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.11)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #18
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.d, %bb.h ], [ %i.n, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3fixEv.exit:  ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !100
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector9BitVector5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.marisa::grimoire::vector::Vector.6", align 16 ; 11 uses
  %3 = alloca %"class.marisa::grimoire::vector::Vector.6", align 16 ; 11 uses
  %4 = alloca %"class.marisa::grimoire::vector::Vector.4", align 16 ; 11 uses
  %5 = alloca %"class.marisa::grimoire::vector::Vector.2", align 16 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %5, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorImE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef nonnull align 8 dereferenceable(25) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x ptr>, ptr %5, align 16, !tbaa !32
  %i.d = load <2 x ptr>, ptr %0, align 8, !tbaa !32
  %i.e = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !32
  store <2 x ptr> %i.d, ptr %5, align 16, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.i = load ptr, ptr %i.g, align 16, !tbaa !34
  store ptr %i.i, ptr %i.f, align 8, !tbaa !34
  store ptr %i.h, ptr %i.g, align 16, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8, !tbaa !28
  %i.m = load <2 x i64>, ptr %i.j, align 8, !tbaa !28
  store <2 x i64> %i.l, ptr %i.j, align 8, !tbaa !28
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.p = load i8, ptr %i.n, align 8, !tbaa !29, !range !30, !noundef !31
  %i.q = load i8, ptr %i.o, align 8, !tbaa !29, !range !30, !noundef !31
  store i8 %i.q, ptr %i.n, align 8, !tbaa !29
  store i8 %i.p, ptr %i.o, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE4readERNS0_2io6ReaderE.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.e) #19
  br label %_ZN6marisa8grimoire6vector6VectorImE4readERNS0_2io6ReaderE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 16, !tbaa !27    ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i3.i, label %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i

common.resume:                                    ; preds = %bb.m, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i, %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit5.i, %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i ], [ %i.as, %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit5.i ], [ %i.bk, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i ], [ %i.cc, %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20 ], [ %i.ce, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorImE4readERNS0_2io6ReaderE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.t = load i32, ptr %i.a, align 4, !tbaa !39
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.b, i64 noundef 4)
  %i.w = load i32, ptr %i.b, align 4, !tbaa !39
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = load i64, ptr %i.v, align 8, !tbaa !46
  %i.z = icmp ult i64 %i.y, %i.x
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE4readERNS0_2io6ReaderE.exit
  %i.aa = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull @.str.12)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.f:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE4readERNS0_2io6ReaderE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.x, ptr %i.ab, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %4, i8 0, i64 41, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire6vector9BitVector5read_ERNS0_2io6ReaderE:bb.a
  store <2 x ptr> %i.bo, ptr %2, align 16, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bt = load ptr, ptr %i.br, align 16, !tbaa !38
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !38
  store ptr %i.bs, ptr %i.br, align 16, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !28
  %i.bx = load <2 x i64>, ptr %i.bu, align 8, !tbaa !28
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !28
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !29, !range !30, !noundef !31
  %i.cb = load i8, ptr %i.bz, align 8, !tbaa !29, !range !30, !noundef !31
  store i8 %i.cb, ptr %i.by, align 8, !tbaa !29
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !29
  %.not.i.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i21, label %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23

bb.l:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 16, !tbaa !27   ; 2 uses
  %.not.i.i3.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i3.i18, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorImE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 3                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge

._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.b, 4
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 1152921504606846975
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 2305843009213693951, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.e ; 2 uses
  %i.l = shl i64 %.0.i.i, 3
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !50
  %i.r = shl i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !53
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !51
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i
  %i.u = phi ptr [ %.pre, %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge ], [ %i.m, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.v, align 8, !tbaa !50
  call void @_ZN6marisa8grimoire2io6Reader4readImEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.u, i64 noundef %i.e)
  %i.w = load i64, ptr %i.a, align 8, !tbaa !28
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %i.x, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readImEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.17)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = shl nuw i64 %2, 3
  tail call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %.pn
}

declare void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #2

declare void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 7 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !101  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.d, 1
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 768614336404564650
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 1537228672809129301, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.d ; 2 uses
  %i.l = mul i64 %.0.i.i, 12
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %i.r = mul i64 %i.q, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !77
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !101
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102  ; 2 uses
  br i1 %i.w, label %.lr.ph.i, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit

.lr.ph.i:                                         ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i
  %i.z = mul nuw i64 %i.v, 12
  %scevgep.i = getelementptr nuw i8, ptr %i.y, i64 %i.z
  %i.aa = sub nuw nsw i64 %i.d, %i.v
  %i.ab = mul nuw i64 %i.aa, 12
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ab, i1 false), !tbaa !39
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i, %.lr.ph.i
  store i64 %i.d, ptr %i.u, align 8, !tbaa !75
  call void @_ZN6marisa8grimoire2io6Reader4readINS0_6vector9RankIndexEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.y, i64 noundef %i.d)
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ad = sub i64 0, %i.ac
  %i.ae = and i64 %i.ad, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void

bb.f:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readINS0_6vector9RankIndexEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.16)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.17)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.f = mul nuw i64 %2, 12
  tail call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %i.f)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink = phi ptr [ %i.e, %bb.i ], [ %i.c, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.h, %bb.i ], [ %i.g, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIjE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.14)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 2                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !103  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge

._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !104
  br label %_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.b, 3
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 2305843009213693951
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 4611686018427387903, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.e ; 2 uses
  %i.l = shl i64 %.0.i.i, 2
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #20 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = shl i64 %i.q, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !104
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !78
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !103
  br label %_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i
  %i.u = phi ptr [ %.pre, %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge ], [ %i.m, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i ]
end_hunk_1
