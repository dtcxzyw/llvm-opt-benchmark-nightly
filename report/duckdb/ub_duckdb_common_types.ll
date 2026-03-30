begin_hunk_0
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.duckdb::bignum_t" = type { %"struct.duckdb::string_t" }
%"struct.duckdb::list_entry_t" = type { i64, i64 }
%"class.duckdb::shared_ptr.973" = type { %"class.std::shared_ptr.974" }
%"class.std::shared_ptr.974" = type { %"class.std::__shared_ptr.975" }
%"class.std::__shared_ptr.975" = type { ptr, %"class.std::__shared_count" }
%"struct.duckdb::ConsecutiveChildListInfo" = type { i8, i8, %"struct.duckdb::list_entry_t" }
%"class.duckdb::vector.8" = type { %"class.std::vector.9" }
%"class.std::vector.9" = type { %"struct.std::_Vector_base.10" }
%"struct.std::_Vector_base.10" = type { %"struct.std::_Vector_base<duckdb::UnifiedVectorFormat, std::allocator<duckdb::UnifiedVectorFormat>>::_Vector_impl" }
end_hunk_0
begin_hunk_1
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::list_entry_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %11 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %12 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %15 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = load i8, ptr %i.b, align 1, !tbaa !474
end_hunk_1
begin_hunk_2
bb.n:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !311
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !311
  %i.aa = load i8, ptr %0, align 8, !tbaa !475
  %i.ab = icmp eq i8 %i.aa, 3
  br i1 %i.ab, label %tailrecurse.i, label %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i
end_hunk_2
begin_hunk_3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i64 %i.bg, ptr %i.bq, align 8, !tbaa !529
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %0, i8 noundef zeroext 2)
          to label %16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

16:                                               ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.u

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.br = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4
bb.t:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %tailrecurse.i134, %.noexc135
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc129, %tailrecurse.i128
  %lpad.loopexit206 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %tailrecurse.i120, %.noexc122
  %lpad.loopexit209 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc, %tailrecurse.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %tailrecurse._crit_edge.i132, %tailrecurse._crit_edge.i, %.noexc124, %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i118, %.noexc116, %_ZN6duckdb10ListVector16GetEntryInternalINS_6VectorEEERT_S4_.exit.i, %bb.r, %_ZN6duckdb10ListVector8GetEntryERNS_6VectorE.exit126
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.t
  %.pn107 = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit206, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit209, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit211, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ah

bb.u:                                             ; preds = %16, %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
end_hunk_4
begin_hunk_5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.di

bb.ah:                                            ; preds = %bb.m, %.loopexit.split-lp, %bb.s, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.br, %bb.s ], [ %.pn105, %bb.m ], [ %.pn107, %.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %bb.dj

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.db = load ptr, ptr %8, align 8, !tbaa !724
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !388 ; 2 uses
  %.not.i138 = icmp eq ptr %i.dc, null
  br i1 %.not.i138, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit139, label %bb.ak
end_hunk_5
begin_hunk_6

_ZNK6duckdb15SelectionVector9get_indexEm.exit139: ; preds = %bb.ak, %bb.aj
  %i.dg = phi i64 [ %i.df, %bb.ak ], [ %2, %bb.aj ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !502 ; 2 uses
  %.not.i140 = icmp eq ptr %i.di, null
  br i1 %.not.i140, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142
end_hunk_6
begin_hunk_7
  br i1 %.not204, label %bb.al, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread

bb.al:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %10)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #49
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %bb.bj

bb.ap:                                            ; preds = %bb.ai
end_hunk_7
begin_hunk_8
bb.ar:                                            ; preds = %bb.am
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #49
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #49
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.pn95 = phi { ptr, i32 } [ %i.ds, %bb.as ], [ %i.dr, %bb.ar ], [ %i.dq, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %bb.bw

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit139, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit142
end_hunk_8
begin_hunk_9
          to label %bb.av unwind label %bb.ax     ; 9 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ep)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader unwind label %bb.aw

_ZN6duckdb15SelectionVectorC2Em.exit.preheader:   ; preds = %bb.av
end_hunk_9
begin_hunk_10

.lr.ph242:                                        ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  %i.er = mul i64 %i.ep, %i.dg                    ; 2 uses
  %i.es = load ptr, ptr %11, align 8, !tbaa !388  ; 2 uses
  %min.iters.check = icmp ult i64 %i.ep, 8
  br i1 %min.iters.check, label %_ZN6duckdb15SelectionVectorC2Em.exit.preheader285, label %vector.ph

end_hunk_10
begin_hunk_11
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge:  ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit, %middle.block, %_ZN6duckdb15SelectionVectorC2Em.exit.preheader
  invoke void @_ZN6duckdb6Vector5SliceERKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.ep)
          to label %bb.ay unwind label %bb.bi

.loopexit218:                                     ; preds = %tailrecurse.i144, %.noexc146
end_hunk_11
begin_hunk_12
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit: ; preds = %bb.bb, %bb.ba
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.bc
end_hunk_12
begin_hunk_13
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit, %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.bj

bb.bi:                                            ; preds = %bb.az, %bb.ay, %_ZN6duckdb15SelectionVectorC2Em.exit._crit_edge
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #49
  br label %.body

.body:                                            ; preds = %bb.aw, %bb.bi
  %.pn97.pn = phi { ptr, i32 } [ %i.ga, %bb.bi ], [ %i.ez, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  br label %bb.bw

bb.bj:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.ao
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i.i160 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i160, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164, label %bb.bk
end_hunk_13
begin_hunk_14
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i164

_ZN6duckdb15SelectionVectorD2Ev.exit.i164:        ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i162, %bb.bl, %bb.bj
  %i.gs = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i1.i165 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i1.i165, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169, label %bb.bq
end_hunk_14
begin_hunk_15
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i164, %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i167, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %bb.di

bb.bw:                                            ; preds = %.loopexit214, %.loopexit.split-lp215, %.loopexit218, %.loopexit.split-lp219, %bb.at, %.body, %bb.ax, %bb.ap
  %.pn97.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.ap ], [ %i.fa, %bb.ax ], [ %.pn95, %bb.at ], [ %.pn97.pn, %.body ], [ %lpad.loopexit.split-lp221, %.loopexit.split-lp219 ], [ %lpad.loopexit220, %.loopexit218 ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp215 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  br label %bb.dj

bb.bx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %12)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(73) %12)
          to label %bb.by unwind label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.hj = load ptr, ptr %12, align 8, !tbaa !724
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !388 ; 2 uses
  %.not.i170 = icmp eq ptr %i.hk, null
  br i1 %.not.i170, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit171, label %bb.bz
end_hunk_15
begin_hunk_16

_ZNK6duckdb15SelectionVector9get_indexEm.exit171: ; preds = %bb.bz, %bb.by
  %i.ho = phi i64 [ %i.hn, %bb.bz ], [ %2, %bb.by ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !502 ; 2 uses
  %.not.i172 = icmp eq ptr %i.hq, null
  br i1 %.not.i172, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174
end_hunk_16
begin_hunk_17
  br i1 %.not, label %bb.ca, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread

bb.ca:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull %14)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #49
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190

bb.ce:                                            ; preds = %bb.bx
end_hunk_17
begin_hunk_18
bb.cg:                                            ; preds = %bb.cb
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #49
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cc
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #49
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.ch ], [ %i.hz, %bb.cg ], [ %i.hy, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #49
  br label %bb.de

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit171, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit174
end_hunk_18
begin_hunk_19
  br label %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190

_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190: ; preds = %bb.cr, %bb.cq, %bb.cd
  %i.jp = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i.i191 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i.i.i.i191, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195, label %bb.cs
end_hunk_19
begin_hunk_20
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i195

_ZN6duckdb15SelectionVectorD2Ev.exit.i195:        ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i193, %bb.ct, %_ZN6duckdb21TemplatedValidityMaskImE3SetEmb.exit190
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !405 ; 8 uses
  %.not.i.i.i.i1.i196 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i1.i196, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200, label %bb.cy
end_hunk_20
begin_hunk_21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i195, %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i198, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %bb.di

bb.de:                                            ; preds = %.loopexit223, %.loopexit.split-lp224, %.loopexit228, %.loopexit.split-lp229, %bb.ci, %bb.cp, %bb.ce
  %.pn90.pn.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.ce ], [ %lpad.loopexit.split-lp231, %.loopexit.split-lp229 ], [ %.pn, %bb.ci ], [ %i.jk, %bb.cp ], [ %lpad.loopexit230, %.loopexit228 ], [ %lpad.loopexit225, %.loopexit223 ], [ %lpad.loopexit.split-lp226, %.loopexit.split-lp224 ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  br label %bb.dj

bb.df:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  call void @_ZN6duckdb6Vector8GetValueERKS0_m(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %15, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2)
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %15)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit200, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit169, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  ret void

bb.dj:                                            ; preds = %bb.dh, %bb.de, %bb.bw, %bb.ah
  %.pn112 = phi { ptr, i32 } [ %i.kx, %bb.dh ], [ %.pn107.pn.pn.pn, %bb.ah ], [ %.pn97.pn.pn.pn.pn.pn.pn, %bb.bw ], [ %.pn90.pn.pn.pn, %bb.de ]
  resume { ptr, i32 } %.pn112
}

end_hunk_21
begin_hunk_22
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_22
begin_hunk_23
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !3480
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_23
begin_hunk_24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_24
begin_hunk_25
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !3480
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_25
begin_hunk_26
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_26
begin_hunk_27
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !3480
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_27
begin_hunk_28
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_28
begin_hunk_29
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !3486
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_29
begin_hunk_30
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false)
  %i.al = zext nneg i32 %i.u to i64
  %i.am = add nuw nsw i64 %i.aj, %i.al            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_30
begin_hunk_31
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.bg, align 8, !tbaa !3500
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_31
begin_hunk_32
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !3475, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i64 20, i1 false)
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = add nuw nsw i64 %i.ah, %i.aj            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_32
begin_hunk_33
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.be, align 8, !tbaa !3506
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_33
begin_hunk_34
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_34
begin_hunk_35
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !3531
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_35
begin_hunk_36
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_36
begin_hunk_37
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !3531
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_37
begin_hunk_38
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_38
begin_hunk_39
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !3531
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_39
begin_hunk_40
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_40
begin_hunk_41
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !3537
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_41
begin_hunk_42
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false)
  %i.al = zext nneg i32 %i.u to i64
  %i.am = add nuw nsw i64 %i.aj, %i.al            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_42
begin_hunk_43
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.bg, align 8, !tbaa !3549
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.u, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_43
begin_hunk_44
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !3526, !nonnull !74, !align !3269
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i64 20, i1 false)
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = add nuw nsw i64 %i.ah, %i.aj            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_44
begin_hunk_45
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.be, align 8, !tbaa !3554
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS1_12output_rangeISt20back_insert_iteratorIN6duckdb6vectorIcLb1ESaIcEEEEcEEE12write_paddedINSB_17padded_int_writerINSB_10int_writerINS5_10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSH_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_45
