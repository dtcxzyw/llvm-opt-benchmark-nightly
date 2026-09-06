Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/louds-trie?download=true
inline.NumInlined: 1936
inline.NumDeleted: 713
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6marisa8grimoire6vector9BitVector4map_ERNS0_2io6MapperE:bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %4, align 16, !tbaa !51   ; 2 uses
  %.not.i.i3.i10 = icmp eq ptr %i.at, null
  br i1 %.not.i.i3.i10, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit5.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i11

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i11: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.at) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit5.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i11, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %3, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.av = load <2 x ptr>, ptr %3, align 16, !tbaa !93
  %i.aw = load <2 x ptr>, ptr %i.au, align 8, !tbaa !93
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.av, ptr %i.au, align 8, !tbaa !93
  store <2 x ptr> %i.aw, ptr %3, align 16, !tbaa !93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !146
  %i.bb = load ptr, ptr %i.az, align 16, !tbaa !146
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !146
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !146
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !tbaa !54
  %i.bf = load <2 x i64>, ptr %i.bc, align 8, !tbaa !54
  store <2 x i64> %i.be, ptr %i.bc, align 8, !tbaa !54
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 8, !tbaa !90, !range !91, !noundef !92
  %i.bj = load i8, ptr %i.bh, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.bj, ptr %i.bg, align 8, !tbaa !90
  store i8 %i.bi, ptr %i.bh, align 8, !tbaa !90
  %.not.i.i.i16 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i16, label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit

bb.j:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3mapERNS0_2io6MapperE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 16, !tbaa !51   ; 2 uses
  %.not.i.i3.i14 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i3.i14, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15: ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i15, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %2, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bn = load <2 x ptr>, ptr %2, align 16, !tbaa !93
  %i.bo = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !93
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !93
  store <2 x ptr> %i.bo, ptr %2, align 16, !tbaa !93
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !146
  %i.bt = load ptr, ptr %i.br, align 16, !tbaa !146
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !146
  store ptr %i.bs, ptr %i.br, align 16, !tbaa !146
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !54
  %i.bx = load <2 x i64>, ptr %i.bu, align 8, !tbaa !54
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !54
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !90, !range !91, !noundef !92
  %i.cb = load i8, ptr %i.bz, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.cb, ptr %i.by, align 8, !tbaa !90
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !90
  %.not.i.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i21, label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23

bb.l:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 16, !tbaa !51   ; 2 uses
  %.not.i.i3.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i3.i18, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3mapERNS0_2io6MapperE.exit23: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorImE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !94
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.h, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !167, !range !91, !noundef !92
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorImE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.21)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.d, %bb.h ], [ %i.l, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.m, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorImE3fixEv.exit:  ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !167
  ret void

bb.h:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

declare void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = mul nuw i64 %i.d, 12
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %2)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !145
  %i.h = sub i64 0, %i.b
  %i.i = and i64 %i.h, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.j, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !295, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.21)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.e, %bb.h ], [ %i.n, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE3fixEv.exit: ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !295
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIjE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !146
  %i.h = sub i64 0, %i.b
  %i.i = and i64 %i.h, 4
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !296, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorIjE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.21)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.d, %bb.h ], [ %i.n, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE3fixEv.exit:  ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !296
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector10FlatVector4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.marisa::grimoire::vector::Vector", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(41) %2, i8 0, i64 41, i1 false)
  invoke void @_ZN6marisa8grimoire6vector6VectorImE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load <2 x ptr>, ptr %2, align 16, !tbaa !93
  %i.b = load <2 x ptr>, ptr %0, align 8, !tbaa !93
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !93
  store <2 x ptr> %i.b, ptr %2, align 16, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !94
  %i.g = load ptr, ptr %i.e, align 16, !tbaa !94
  store ptr %i.g, ptr %i.d, align 8, !tbaa !94
  store ptr %i.f, ptr %i.e, align 16, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = load <2 x i64>, ptr %i.i, align 8, !tbaa !54
  %i.k = load <2 x i64>, ptr %i.h, align 8, !tbaa !54
  store <2 x i64> %i.j, ptr %i.h, align 8, !tbaa !54
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.n = load i8, ptr %i.l, align 8, !tbaa !90, !range !91, !noundef !92
  %i.o = load i8, ptr %i.m, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.o, ptr %i.l, align 8, !tbaa !90
  store i8 %i.n, ptr %i.m, align 8, !tbaa !90
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE3mapERNS0_2io6MapperE.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.c) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE3mapERNS0_2io6MapperE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 16, !tbaa !51    ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i3.i, label %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i

common.resume:                                    ; preds = %bb.g, %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN6marisa8grimoire6vector6VectorImED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorImE3mapERNS0_2io6MapperE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.r = call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 4)
  %i.s = load i32, ptr %i.r, align 4, !tbaa !73   ; 2 uses
  %i.t = icmp ugt i32 %i.s, 32
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE3mapERNS0_2io6MapperE.exit
  %i.u = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.22)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.f:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorImE3mapERNS0_2io6MapperE.exit
  %i.v = zext nneg i32 %i.s to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.v, ptr %i.w, align 8, !tbaa !40
  %i.x = call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 4)
  %i.y = load i32, ptr %i.x, align 4, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.y, ptr %i.z, align 8, !tbaa !41
  %i.aa = call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !42
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.u) #21
  br label %common.resume
}

end_hunk_0
begin_hunk_1_@_ZN6marisa8grimoire6vector9BitVector5read_ERNS0_2io6ReaderE:bb.a
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !93
  store <2 x ptr> %i.bo, ptr %2, align 16, !tbaa !93
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !146
  %i.bt = load ptr, ptr %i.br, align 16, !tbaa !146
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !146
  store ptr %i.bs, ptr %i.br, align 16, !tbaa !146
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !54
  %i.bx = load <2 x i64>, ptr %i.bu, align 8, !tbaa !54
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !54
  store <2 x i64> %i.bx, ptr %i.bv, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 8, !tbaa !90, !range !91, !noundef !92
  %i.cb = load i8, ptr %i.bz, align 8, !tbaa !90, !range !91, !noundef !92
  store i8 %i.cb, ptr %i.by, align 8, !tbaa !90
  store i8 %i.ca, ptr %i.bz, align 8, !tbaa !90
  %.not.i.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i21, label %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23

bb.l:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 16, !tbaa !51   ; 2 uses
  %.not.i.i3.i18 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i3.i18, label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20

_ZN6marisa8grimoire6vector6VectorIjED2Ev.exit5.i20: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i4.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorIjE4readERNS0_2io6ReaderE.exit23: ; preds = %bb.k, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.m:                                             ; preds = %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorImE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 3                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !87   ; 4 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge

._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !88
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.b, 4
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 1152921504606846975
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 2305843009213693951, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.e ; 2 uses
  %i.l = shl i64 %.0.i.i, 3
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !86
  %i.r = shl i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !89
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !87
  br label %_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i
  %i.u = phi ptr [ %.pre, %._ZN6marisa8grimoire6vector6VectorImE6resizeEm.exit_crit_edge ], [ %i.m, %_ZN6marisa8grimoire6vector6VectorImE7reallocEm.exit.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.e, ptr %i.v, align 8, !tbaa !86
  call void @_ZN6marisa8grimoire2io6Reader4readImEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.u, i64 noundef %i.e)
  %i.w = load i64, ptr %i.a, align 8, !tbaa !54
  %i.x = sub i64 0, %i.w
  %i.y = and i64 %i.x, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readImEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
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
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

declare void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 7 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !297  ; 4 uses
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
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !298
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !144
  %i.r = mul i64 %i.q, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !298
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !168
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !297
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reallocEm.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !144  ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !298  ; 2 uses
  br i1 %i.w, label %.lr.ph.i, label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit

.lr.ph.i:                                         ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i
  %i.z = mul nuw i64 %i.v, 12
  %scevgep.i = getelementptr nuw i8, ptr %i.y, i64 %i.z
  %i.aa = sub nuw nsw i64 %i.d, %i.v
  %i.ab = mul nuw i64 %i.aa, 12
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ab, i1 false), !tbaa !73
  br label %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE6resizeEm.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorINS1_9RankIndexEE7reserveEm.exit.i, %.lr.ph.i
  store i64 %i.d, ptr %i.u, align 8, !tbaa !144
  call void @_ZN6marisa8grimoire2io6Reader4readINS0_6vector9RankIndexEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.y, i64 noundef %i.d)
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !54
  %i.ad = sub i64 0, %i.ac
  %i.ae = and i64 %i.ad, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readINS0_6vector9RankIndexEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
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
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIjE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = lshr exact i64 %i.b, 2                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !299  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.e, label %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge

._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !74
  br label %_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.b, 3
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 2305843009213693951
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 4611686018427387903, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.e ; 2 uses
  %i.l = shl i64 %.0.i.i, 2
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !72
  %i.r = shl i64 %i.q, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !169
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !299
  br label %_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit

_ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i
  %i.u = phi ptr [ %.pre, %._ZN6marisa8grimoire6vector6VectorIjE6resizeEm.exit_crit_edge ], [ %i.m, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i ]
end_hunk_1
begin_hunk_2_@_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m:bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.4150 = phi i64 [ %i.dm, %bb.aj ], [ %i.dp, %bb.al ], [ %.0146206, %bb.ak ] ; 3 uses
  %i.dq = icmp eq i64 %i.cp, 24
  br i1 %i.dq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dr = add i64 %.4150, 1
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ds = icmp sgt i64 %i.cp, 24
  br i1 %i.ds, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dt = tail call noundef i64 @_ZN6marisa8grimoire9algorithm7details4sortIPNS0_4trie10ReverseKeyEEEmT_S7_m(ptr noundef %.3140.lcssa, ptr noundef %.0154204, i64 noundef %.0152205)
  %i.du = add i64 %i.dt, %.4150
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.an
  %.5151 = phi i64 [ %i.dr, %bb.an ], [ %i.du, %bb.ap ], [ %.4150, %bb.ao ] ; 4 uses
  %i.dv = icmp eq i64 %i.cn, 24
  br i1 %i.dv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dw = add i64 %.5151, 1
  br label %bb.aw

bb.as:                                            ; preds = %bb.aq
  %i.dx = icmp sgt i64 %i.cn, 24
  br i1 %i.dx, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.dy = icmp eq i32 %.0.i, -1
  br i1 %i.dy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dz = add i64 %.5151, 1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ea = add i64 %.0152205, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.af, %bb.ah, %bb.ag, %bb.ab, %bb.ad, %bb.ac, %bb.ar, %bb.au, %bb.av, %bb.as
  %.1157 = phi ptr [ %.4145.lcssa, %bb.as ], [ %.3140.lcssa, %bb.ab ], [ %.4145.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.4145.lcssa, %bb.av ], [ %.3140.lcssa, %bb.ac ], [ %.3140.lcssa, %bb.ad ], [ %.0156203, %bb.ag ], [ %.0156203, %bb.ah ], [ %.0156203, %bb.af ] ; 3 uses
  %.1155 = phi ptr [ %.3140.lcssa, %bb.as ], [ %.0154204, %bb.ab ], [ %.3140.lcssa, %bb.ar ], [ %.3140.lcssa, %bb.au ], [ %.3140.lcssa, %bb.av ], [ %.0154204, %bb.ac ], [ %.0154204, %bb.ad ], [ %.4145.lcssa, %bb.ag ], [ %.4145.lcssa, %bb.ah ], [ %.4145.lcssa, %bb.af ] ; 3 uses
  %.1153 = phi i64 [ %.0152205, %bb.as ], [ %.0152205, %bb.ab ], [ %.0152205, %bb.ar ], [ %.0152205, %bb.au ], [ %i.ea, %bb.av ], [ %.0152205, %bb.ac ], [ %.0152205, %bb.ad ], [ %.0152205, %bb.ag ], [ %.0152205, %bb.ah ], [ %.0152205, %bb.af ] ; 2 uses
  %.6 = phi i64 [ %.5151, %bb.as ], [ %i.dc, %bb.ab ], [ %i.dw, %bb.ar ], [ %i.dz, %bb.au ], [ %.5151, %bb.av ], [ %.1147, %bb.ac ], [ %i.df, %bb.ad ], [ %.1147, %bb.ag ], [ %i.dk, %bb.ah ], [ %i.dh, %bb.af ] ; 2 uses
  %i.eb = ptrtoint ptr %.1155 to i64              ; 2 uses
  %i.ec = ptrtoint ptr %.1157 to i64              ; 2 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 240
  br i1 %i.ee, label %.lr.ph208, label %._crit_edge209, !llvm.loop !358

._crit_edge209:                                   ; preds = %bb.aw, %bb.a
  %.0156.lcssa = phi ptr [ %0, %bb.a ], [ %.1157, %bb.aw ] ; 2 uses
  %.0154.lcssa = phi ptr [ %1, %bb.a ], [ %.1155, %bb.aw ] ; 2 uses
  %.0152.lcssa = phi i64 [ %2, %bb.a ], [ %.1153, %bb.aw ] ; 2 uses
  %.0146.lcssa = phi i64 [ 0, %bb.a ], [ %.6, %bb.aw ] ; 2 uses
  %.lcssa182 = phi i64 [ %i.c, %bb.a ], [ %i.ed, %bb.aw ]
  %i.ef = icmp sgt i64 %.lcssa182, 24
  br i1 %i.ef, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %._crit_edge209
  %.01739.i = getelementptr inbounds nuw i8, ptr %.0156.lcssa, i64 24 ; 2 uses
  %i.eg = icmp ult ptr %.01739.i, %.0154.lcssa
  br i1 %i.eg, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit

.preheader.i:                                     ; preds = %bb.ax, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i
  %.01741.i = phi ptr [ %.017.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ], [ %.01739.i, %bb.ax ] ; 2 uses
  %.01840.i = phi i64 [ %i.ff, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ], [ 1, %bb.ax ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i
  %.037.i = phi ptr [ %i.eh, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i ], [ %.01741.i, %.preheader.i ] ; 6 uses
  %i.eh = getelementptr inbounds i8, ptr %.037.i, i64 -24 ; 5 uses
  %i.ei = getelementptr inbounds i8, ptr %.037.i, i64 -16
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !164 ; 3 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = icmp ult i64 %.0152.lcssa, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !164 ; 3 uses
  br i1 %i.el, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i
  %i.eo = zext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.eh, align 8
  %i.eq = load ptr, ptr %.037.i, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.ba
  %i.er = add i64 %.01927.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.ek
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.az, !llvm.loop !359

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i
  %.01927.i.i = phi i64 [ %.0152.lcssa, %.lr.ph.i.i ], [ %i.er, %bb.ay ] ; 3 uses
  %i.es = icmp eq i64 %.01927.i.i, %i.eo
  br i1 %i.es, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = sub nsw i64 0, %.01927.i.i              ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ep, i64 %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !55  ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !55  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ew, %i.ez
  br i1 %.not.i.i, label %bb.ay, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i

._crit_edge.i.i:                                  ; preds = %bb.ay, %.lr.ph.i
  %i.fa = icmp eq i32 %i.ej, %i.en
  br i1 %i.fa, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.i.i
  %i.fb = icmp ult i32 %i.ej, %i.en
  br i1 %i.fb, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i: ; preds = %bb.bb
  %i.fc = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i: ; preds = %bb.ba
  %.not56.i = icmp ugt i8 %i.ew, %i.ez
  br i1 %.not56.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i: ; preds = %bb.az, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.eh, ptr noundef nonnull align 8 dereferenceable(20) %.037.i, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.037.i, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !200
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fd = icmp ugt ptr %i.eh, %.0156.lcssa
  br i1 %i.fd, label %.lr.ph.i, label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i, !llvm.loop !360

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread24.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.i
  %i.fe = add i64 %.01840.i, 1
  br label %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i

_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i: ; preds = %._crit_edge.i.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i
  %i.ff = phi i64 [ %i.fc, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread30.i ], [ %i.fe, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.i ], [ %.01840.i, %._crit_edge.i.i ] ; 2 uses
  %.017.i = getelementptr inbounds nuw i8, ptr %.01741.i, i64 24 ; 2 uses
  %i.fg = icmp ult ptr %.017.i, %.0154.lcssa
  br i1 %i.fg, label %.preheader.i, label %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit, !llvm.loop !361

_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit: ; preds = %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i, %bb.ax
  %.018.lcssa.i = phi i64 [ 1, %bb.ax ], [ %i.ff, %_ZN6marisa8grimoire9algorithm7details7compareINS0_4trie10ReverseKeyEEEiRKT_S8_m.exit.thread.thread.i ]
  %i.fh = add i64 %.018.lcssa.i, %.0146.lcssa
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit, %._crit_edge209
  %.7 = phi i64 [ %i.fh, %_ZN6marisa8grimoire9algorithm7details14insertion_sortIPNS0_4trie10ReverseKeyEEEmT_S7_m.exit ], [ %.0146.lcssa, %._crit_edge209 ]
  ret i64 %.7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIhE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.b)
  store ptr %i.d, ptr %i.c, align 8, !tbaa !51
  %i.e = sub i64 0, %i.b
  %i.f = and i64 %i.e, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.g, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !199, !range !91, !noundef !92
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorIhE3fixEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.21)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #21
  resume { ptr, i32 } %i.l

_ZN6marisa8grimoire6vector6VectorIhE3fixEv.exit:  ; preds = %bb.a
  store i8 1, ptr %i.h, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE4map_ERNS0_2io6MapperE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.19)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = mul nuw i64 %i.d, 12
  %i.g = tail call noundef ptr @_ZN6marisa8grimoire2io6Mapper8map_dataEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %2)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !96
  %i.h = sub i64 0, %i.b
  %i.i = and i64 %i.h, 7
  tail call void @_ZN6marisa8grimoire2io6Mapper4seekEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.j, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !362, !range !91, !noundef !92
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE3fixEv.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.21)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #23
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.g
  %.sink = phi ptr [ %i.e, %bb.h ], [ %i.n, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE3fixEv.exit: ; preds = %bb.d
  store i8 1, ptr %i.k, align 8, !tbaa !362
  ret void

bb.h:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIhE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !170  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.b, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  %i.f = icmp ugt i64 %i.d, %i.e
  %i.g = shl nuw i64 %i.d, 1
  %.inv.i.i = icmp sgt i64 %i.d, -1
  %spec.select.i.i = select i1 %.inv.i.i, i64 %i.g, i64 -1
  %.0.i.i = select i1 %i.f, i64 %spec.select.i.i, i64 %i.b ; 2 uses
  %i.h = call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.i.i) #22 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.j, i64 %i.l, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.m) #20
  br label %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread

_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread: ; preds = %bb.b, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i
  store ptr %i.h, ptr %i.i, align 8, !tbaa !147
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.n, align 8, !tbaa !136
  store i64 %.0.i.i, ptr %i.c, align 8, !tbaa !170
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.o, align 8, !tbaa !85
  br label %_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit

_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !147 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.p, align 8, !tbaa !85
  %i.q = icmp eq ptr %.pre, null
  %i.r = icmp ne i64 %i.b, 0
  %or.cond.i = and i1 %i.r, %i.q
  br i1 %or.cond.i, label %bb.c, label %_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit

bb.c:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.9)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.s) #21
  resume { ptr, i32 } %i.t

_ZN6marisa8grimoire2io6Reader4readIhEEvPT_m.exit: ; preds = %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit
  %i.u = phi ptr [ %i.h, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit.thread ], [ %.pre, %_ZN6marisa8grimoire6vector6VectorIhE6resizeEm.exit ]
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.u, i64 noundef %i.b)
  %i.v = load i64, ptr %i.a, align 8, !tbaa !54
  %i.w = sub i64 0, %i.v
  %i.x = and i64 %i.w, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE5read_ERNS0_2io6ReaderE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @_ZN6marisa8grimoire2io6Reader9read_dataEPvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull %i.a, i64 noundef 8)
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = urem i64 %i.b, 12
  %i.d = udiv i64 %i.b, 12                        ; 9 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.26)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !166  ; 4 uses
  %.not.i.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.e, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = lshr i64 %i.d, 1
  %i.i = icmp samesign ugt i64 %i.g, %i.h
  %i.j = icmp samesign ugt i64 %i.g, 768614336404564650
  %i.k = shl nuw nsw i64 %i.g, 1
  %spec.select.i.i = select i1 %i.j, i64 1537228672809129301, i64 %i.k
  %.0.i.i = select i1 %i.i, i64 %spec.select.i.i, i64 %i.d ; 2 uses
  %i.l = mul i64 %.0.i.i, 12
  %i.m = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #22 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !165
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !101
  %i.r = mul i64 %i.q, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.o, i64 %i.r, i1 false)
  %i.s = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %bb.e
  store ptr %i.m, ptr %i.n, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.t, align 8, !tbaa !113
  store i64 %.0.i.i, ptr %i.f, align 8, !tbaa !166
  br label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i: ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reallocEm.exit.i.i, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !101  ; 6 uses
  %i.w = icmp ult i64 %i.v, %i.d
  br i1 %i.w, label %.lr.ph.i, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit

.lr.ph.i:                                         ; preds = %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = sub nuw i64 %i.d, %i.v
  %.neg = add i64 %i.v, 1
  %xtraiter = and i64 %i.y, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %i.v ; 3 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 0, ptr %i.ab, align 4, !tbaa !135
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store float f0x00800000, ptr %i.ac, align 4, !tbaa !55
  %i.ad = add nuw i64 %i.v, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.07.i.unr = phi i64 [ %i.v, %.lr.ph.i ], [ %i.ad, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i64 %i.d, %.neg
  br i1 %i.ae, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.07.i = phi i64 [ %i.ao, %.lr.ph.i.new ], [ %.07.i.unr, %.prol.loopexit ] ; 3 uses
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %.07.i ; 3 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !134
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store float f0x00800000, ptr %i.ai, align 4, !tbaa !55
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %.07.i ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i32 0, ptr %i.am, align 4, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  store float f0x00800000, ptr %i.an, align 4, !tbaa !55
  %i.ao = add nuw i64 %.07.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d
  br i1 %exitcond.not.i.1, label %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit, label %.lr.ph.i.new, !llvm.loop !7

_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE6resizeEm.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN6marisa8grimoire6vector6VectorINS0_4trie5CacheEE7reserveEm.exit.i
  store i64 %i.d, ptr %i.u, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165
  call void @_ZN6marisa8grimoire2io6Reader4readINS0_4trie5CacheEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef %i.aq, i64 noundef %i.d)
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !54
  %i.as = sub i64 0, %i.ar
  %i.at = and i64 %i.as, 7
  call void @_ZN6marisa8grimoire2io6Reader4seekEm(ptr noundef nonnull align 8 dereferenceable(25) %1, i64 noundef %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

bb.f:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire2io6Reader4readINS0_4trie5CacheEEEvPT_m(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 1537228672809129301
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.10)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
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
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6marisa8grimoire6vector6VectorIhE6write_ERNS0_2io6WriterE(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !85
  store i64 %i.c, ptr %i.a, align 8, !tbaa !54
  call void @_ZN6marisa8grimoire2io6Writer10write_dataEPKvm(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !85   ; 2 uses
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i64 %i.f, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.b, label %_ZN6marisa8grimoire2io6Writer5writeIhEEvPKT_m.exit

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
end_hunk_2
