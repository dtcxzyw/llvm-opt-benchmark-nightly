inline.NumInlined: 10874
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9CountRowsEv:bb.a
_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit: ; preds = %bb.ab, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit
  %i.do = phi i64 [ %i.dn, %bb.ab ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit ]
  %i.dp = add nsw i64 %i.do, %.08096
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit
  %i.dq = phi i1 [ true, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit ], [ false, %_ZN5arrow6StatusD2Ev.exit67 ]
  %.1 = phi i64 [ %i.dp, %_ZNK3org6apache5arrow7flatbuf11RecordBatch6lengthEv.exit ], [ %.08096, %_ZN5arrow6StatusD2Ev.exit67 ] ; 2 uses
  %i.dr = load ptr, ptr %i.m, align 8, !tbaa !69  ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ds, align 8, !tbaa !77
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !79
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #36, !inline_history !266
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !80
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #36, !inline_history !266
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i70 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i70, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i = phi i32 [ %i.dv, %bb.ag ], [ %i.ef, %bb.ah ]
  %i.eg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.eg, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #36
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.eh = load ptr, ptr %7, align 8, !tbaa !264   ; 3 uses
  %.not.i71 = icmp eq ptr %i.eh, null
  br i1 %.not.i71, label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eh) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 8) #37
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.ei = load ptr, ptr %5, align 8, !tbaa !52    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.aj, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !55

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit
  %i.ek = load ptr, ptr %i.i, align 8, !tbaa !264 ; 3 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i72, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i: ; preds = %bb.aj
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 8) #37
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !52 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i73, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i, %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit
  %i.el = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i ], [ %i.ei, %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !56, !range !67, !noundef !68
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  br label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit: ; preds = %bb.aj, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.ep = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i74, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75, label %bb.al, !prof !55

bb.al:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !56, !range !67, !noundef !68
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %i.dq, label %bb.b, label %.loopexit84

bb.an:                                            ; preds = %bb.aa, %bb.x
  %.pn34.pn = phi { ptr, i32 } [ %lpad.phi, %bb.x ], [ %i.di, %bb.aa ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.w
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.an ], [ %i.cj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit53, %bb.ao
  %.pn34.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %_ZNSt14_Function_baseD2Ev.exit53 ], [ %.pn34.pn.pn, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.et = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.et, null
  br i1 %.not.i.i76, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit77, label %bb.aq, !prof !55

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit77, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit77

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit77: ; preds = %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn.pn

.critedge44:                                      ; preds = %bb.b, %bb.a
  %.080.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.b ]
  store ptr null, ptr %0, align 8, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.080.lcssa, ptr %i.ex, align 8, !tbaa !105
  br label %.loopexit84

.loopexit84:                                      ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit59, %.critedge44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl17PreBufferMetadataERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.9", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.c = load ptr, ptr %2, align 8, !tbaa !98
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  %i.e = load ptr, ptr %1, align 8, !tbaa !80, !noalias !2640
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2640
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(513) %1), !noalias !2640, !inline_history !2643 ; 3 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #38, !noalias !2640
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %.noexc4.i

.thread.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !2640
  br label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit

.noexc4.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.l = shl nuw nsw i64 %i.i, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #39, !noalias !2640 ; 9 uses
  %4 = ptrtoint ptr %i.m to i64
  store ptr %i.m, ptr %3, align 8, !tbaa !98, !alias.scope !2640
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !387, !alias.scope !2640
  store i32 0, ptr %i.m, align 4, !tbaa !3, !noalias !2640
  %i.p = getelementptr i8, ptr %i.m, i64 4        ; 3 uses
  %i.q = add nsw i64 %i.i, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.preheader.i, label %bb.c

bb.c:                                             ; preds = %.noexc4.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.q, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !3, !noalias !2640
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.noexc4.i, %bb.c
  %storemerge = phi ptr [ %i.s, %bb.c ], [ %i.p, %.noexc4.i ] ; 3 uses
  %storemerge8 = ptrtoint ptr %storemerge to i64
  store ptr %storemerge, ptr %i.k, align 8, !tbaa !96, !alias.scope !2640
  %5 = add i64 %storemerge8, -4
  %6 = sub i64 %5, %4                             ; 2 uses
  %i.t = lshr i64 %6, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %6, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.u, 9223372036854775800      ; 4 uses
  %i.v = trunc i64 %n.vec to i32
  %i.w = shl i64 %n.vec, 2
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.y = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !3, !noalias !2640
  store <4 x i32> %step.add, ptr %i.z, align 4, !tbaa !3, !noalias !2640
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !2644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.06.i.i.ph = phi i32 [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.preheader.i ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.02.05.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  store i32 %.06.i.i, ptr %.sroa.02.05.i.i, align 4, !tbaa !3, !noalias !2640
  %i.ab = add nuw nsw i32 %.06.i.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %storemerge
  br i1 %i.ad, label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !2647

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %i.ae = ptrtoint ptr %i.n to i64
  br label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit: ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit, %.thread.i
  %i.af = phi i64 [ %i.ae, %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit ], [ 0, %.thread.i ] ; 2 uses
  %i.ag = phi ptr [ %i.m, %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit.loopexit ], [ null, %.thread.i ] ; 6 uses
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19DoPreBufferMetadataERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.af, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ai) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.i

bb.f:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl10AllIndicesEv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.af, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #37
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %i.aj

bb.h:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19DoPreBufferMetadataERKSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl23GetRecordBatchGeneratorEbRKNS_2io9IOContextENS3_12CacheOptionsEPNS_8internal8ExecutorE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.819") align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef byval(%"struct.arrow::io::CacheOptions") align 8 %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %8 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %9 = alloca %"class.std::shared_ptr.103", align 8 ; 9 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::vector.252", align 8  ; 7 uses
  %14 = alloca %"class.arrow::ipc::(anonymous namespace)::WholeIpcFileRecordBatchGenerator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !396, !noalias !2648 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !2648
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !2648 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit, label %bb.c, !llvm.loop !470

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c, %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #36, !noalias !2648 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.k, align 8, !tbaa !80, !noalias !2648
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #38, !noalias !2648
  unreachable

_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !397, !noalias !2648 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.l, ptr nonnull @_ZTIN5arrow3ipc21RecordBatchFileReaderE, ptr nonnull @_ZTIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplE, i64 0) #36, !noalias !2651 ; 2 uses
  %.not.not.i = icmp eq ptr %i.n, null
  br i1 %.not.not.i, label %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit: ; preds = %bb.e, %_ZNSt23enable_shared_from_thisIN5arrow3ipc21RecordBatchFileReaderEE16shared_from_thisEv.exit
  %i.o = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit
  store i32 0, ptr %i.e, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !79
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !474
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36, !inline_history !474
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %_ZSt20dynamic_pointer_castIN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImplENS1_21RecordBatchFileReaderEESt10shared_ptrIT_EOS5_IT0_E.exit
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.aa = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #36
  br label %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %.sroa.096.0110 = phi ptr [ null, %bb.j ], [ %i.n, %bb.e ], [ null, %bb.f ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ] ; 4 uses
  %.sroa.1098.2104 = phi ptr [ null, %bb.j ], [ %i.c, %bb.e ], [ null, %bb.f ], [ null, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !87 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !87 ; 2 uses
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.x, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc21RecordBatchFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !89
  %i.aj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
end_hunk_0
