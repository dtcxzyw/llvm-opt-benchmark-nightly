inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow3ipc8internal18WriteSchemaMessageERKNS_6SchemaERKNS0_21DictionaryFieldMapperERKNS0_15IpcWriteOptionsEPSt10shared_ptrINS_6BufferEE:bb.a
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !337
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !337
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge

bb.aa:                                            ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv.exit.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn15 = phi { ptr, i32 } [ %i.ci, %bb.ab ], [ %i.ch, %bb.aa ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ad

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.ad:                                            ; preds = %bb.ac, %bb.b
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15, %bb.ac ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn15.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_118SchemaToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_6SchemaERKNS0_21DictionaryFieldMapperEPNS4_6OffsetIN3org6apache5arrow7flatbuf6SchemaEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.167", align 8   ; 10 uses
  %6 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 7 uses
  %7 = alloca %"struct.arrow_vendored_private::flatbuffers::Offset.149", align 4 ; 8 uses
  %8 = alloca %"class.arrow::ipc::internal::(anonymous namespace)::FieldToFlatbufferVisitor", align 8 ; 19 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !338
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1, ptr %i.a, align 8, !tbaa !341
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !342
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.a ] ; 4 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.5, %bb.n ], [ null, %bb.a ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.3, %bb.n ], [ null, %bb.a ] ; 5 uses
  %.sroa.076.0 = phi ptr [ %.sroa.076.5, %bb.n ], [ null, %bb.a ] ; 17 uses
  %i.n = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.n to i64
  %.not = icmp slt i64 %indvars.iv, %i.o
  br i1 %.not, label %bb.e, label %.critedge48

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.q = load i32, ptr %i.b, align 4, !tbaa !342
  %i.r = add nsw i32 %i.q, 1
  %.sroa.4.8.insert.ext.i = zext i32 %i.r to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %indvars.iv
  store ptr %1, ptr %8, align 8, !tbaa !345
  store ptr %3, ptr %i.c, align 8, !tbaa !347
  store ptr %6, ptr %i.d, align 8, !tbaa !349
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.e, i8 0, i64 28, i1 false)
  store ptr %i.g, ptr %i.f, align 8, !tbaa !350
  store i64 1, ptr %i.h, align 8, !tbaa !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8, !tbaa !359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.s)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f
  %i.u = load ptr, ptr %9, align 8, !tbaa !22     ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit52, label %.critedge46

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.o

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.not.i53 = icmp eq ptr %.sroa.9.0, %.sroa.13.0
  br i1 %.not.i53, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit52
  %i.x = load i32, ptr %7, align 4, !tbaa !3
  store i32 %i.x, ptr %.sroa.9.0, align 4, !tbaa !3
  br label %.critedge

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit52
  %i.y = ptrtoint ptr %.sroa.13.0 to i64          ; 2 uses
  %i.z = ptrtoint ptr %.sroa.076.0 to i64         ; 3 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23
          to label %.noexc54 unwind label %.loopexit ; 8 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  %i.ak = load i32, ptr %7, align 4, !tbaa !3
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !3
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.076.0, %.sroa.13.0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc54
  %i.al = ptrtoaddr ptr %i.ai to i64
  %10 = sub i64 %i.y, %i.z
  %11 = add i64 %10, -4                           ; 2 uses
  %i.am = lshr i64 %11, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 28
  %i.ao = sub i64 %i.al, %i.z
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ai, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.076.0, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.as ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.sroa.076.0, i64 %i.as ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.at = getelementptr i8, ptr %next.gep192, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !3, !alias.scope !363, !noalias !360
  %wide.load193 = load <4 x i32>, ptr %i.at, align 4, !tbaa !3, !alias.scope !363, !noalias !360
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !360, !noalias !363
  store <4 x i32> %wide.load193, ptr %i.au, align 4, !tbaa !3, !alias.scope !360, !noalias !363
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader195

.lr.ph.i.i.i.i.i.preheader195:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.076.0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader195, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader195 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader195 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.aw = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !363, !noalias !360
  store i32 %i.aw, ptr %.012.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !360, !noalias !363
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ax, %.sroa.13.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !368

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc54
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %.noexc54 ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.076.0, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.h
  %.sroa.13.5 = phi ptr [ %i.az, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.13.0, %bb.h ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.9.0, %bb.h ]
  %.sroa.076.5 = phi ptr [ %i.ai, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.076.0, %bb.h ]
  %.sroa.9.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 4
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !369 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bb, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.ba, %.critedge ] ; 6 uses
  %i.bb = load ptr, ptr %.06.i.i.i, align 8, !tbaa !370 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !103 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !14
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !103 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #24
  %.not.i.i.i62 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i62, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !371

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %.critedge
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !350
  %i.bp = load i64, ptr %i.h, align 8, !tbaa !358
  %i.bq = shl i64 %i.bp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.br = load ptr, ptr %i.f, align 8, !tbaa !350 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.g
  br i1 %i.bs, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !358
  %i.bu = shl i64 %i.bt, 3
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.l
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !375
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !376

.loopexit:                                        ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn38 = phi { ptr, i32 } [ %i.w, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

.critedge46:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !369 ; 2 uses
  %.not5.i.i.i63 = icmp eq ptr %i.ca, null
  br i1 %.not5.i.i.i63, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i71, label %.lr.ph.i.i.i64

.lr.ph.i.i.i64:                                   ; preds = %.critedge46, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69
  %.06.i.i.i65 = phi ptr [ %i.cb, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69 ], [ %i.ca, %.critedge46 ] ; 6 uses
  %i.cb = load ptr, ptr %.06.i.i.i65, align 8, !tbaa !370 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i65, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i65, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !103 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i65, i64 56 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66: ; preds = %.lr.ph.i.i.i64
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !14
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i67: ; preds = %.lr.ph.i.i.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i66
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !103 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i65, i64 24 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i67
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i65, i64 noundef 80) #24
  %.not.i.i.i70 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i70, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i71, label %.lr.ph.i.i.i64, !llvm.loop !371

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i71: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i69, %.critedge46
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !350
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal18WriteTensorMessageERKNS_6TensorElRKNS0_15IpcWriteOptionsE:bb.a
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %i.cu, i64 noundef %i.cw)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i32, ptr %i.g, align 8, !tbaa !301 ; 3 uses
  %i.cy = load ptr, ptr %i.cc, align 8, !tbaa !490
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !440
  store i8 1, ptr %i.j, align 8, !tbaa !305
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIlEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %4, i16 noundef zeroext 4, i64 noundef %i.da, i64 noundef 0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.ab
  %.not.i.i.i.i63 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i63, label %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc
  %i.db = load i64, ptr %i.l, align 8, !tbaa !307
  %i.dc = icmp ult i64 %i.db, 4
  br i1 %i.dc, label %bb.ad, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  store i64 4, ptr %i.l, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %i.dd = load i32, ptr %i.g, align 8, !tbaa !301 ; 5 uses
  %i.de = sub i32 0, %i.dd
  %i.df = and i32 %i.de, 3                        ; 3 uses
  %i.dg = zext nneg i32 %i.df to i64              ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i
  %.pre4.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !491
  %i.di = ptrtoint ptr %.pre4.i.i.i.i.i.i.i to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = icmp samesign ult i64 %i.dl, %i.dg
  br i1 %i.dm, label %bb.af, label %.lr.ph.preheader.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.dn = load i64, ptr %i.f, align 8, !tbaa !300 ; 5 uses
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !416 ; 6 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dj, %i.dp                    ; 2 uses
  %.not.i79 = icmp eq i64 %i.dn, 0
  %i.dr = lshr i64 %i.dn, 1
  %i.ds = load i64, ptr %i.c, align 8
  %i.dt = select i1 %.not.i79, i64 %i.ds, i64 %i.dr
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 %i.dt)
  %i.du = load i64, ptr %i.e, align 8, !tbaa !299 ; 2 uses
  %i.dv = add i64 %i.dn, -1
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = add i64 %i.dw, %.sroa.speculated.i
  %i.dy = sub i64 0, %i.du
  %i.dz = and i64 %i.dx, %i.dy                    ; 6 uses
  store i64 %i.dz, ptr %i.f, align 8, !tbaa !300
  %.not8.i = icmp eq ptr %i.do, null
  %i.ea = load ptr, ptr %4, align 8, !tbaa !293   ; 6 uses
  br i1 %.not8.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = zext i32 %i.dd to i64                   ; 3 uses
  %i.ec = and i64 %i.dq, 4294967295               ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i80, label %bb.ah, label %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ed = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #23
          to label %.noexc81 unwind label %.loopexit ; 3 uses

.noexc81:                                         ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dz
  %i.ef = sub nsw i64 0, %i.eb                    ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull align 1 %i.ei, i64 %i.eb, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %i.do, i64 %i.ec, i1 false)
  call void @_ZdaPv(ptr noundef nonnull %i.do) #24
  br label %.noexc64

_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i: ; preds = %bb.ag
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = invoke noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull %i.do, i64 noundef %i.dn, i64 noundef %i.dz, i64 noundef %i.eb, i64 noundef %i.ec)
          to label %.noexc64 unwind label %.loopexit, !inline_history !492

bb.ai:                                            ; preds = %bb.af
  %.not.i9.i = icmp eq ptr %i.ea, null
  br i1 %.not.i9.i, label %bb.aj, label %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.en = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #23
          to label %.noexc64 unwind label %.loopexit

_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i: ; preds = %bb.ai
  %i.eo = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = invoke noundef ptr %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, i64 noundef %i.dz)
          to label %.noexc64 unwind label %.loopexit, !inline_history !492

.noexc64:                                         ; preds = %.noexc81, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i, %bb.aj, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i
  %storemerge.i = phi ptr [ %i.ed, %.noexc81 ], [ %i.em, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i ], [ %i.en, %bb.aj ], [ %i.er, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.h, align 8, !tbaa !416
  %i.es = load i64, ptr %i.f, align 8, !tbaa !300
  %i.et = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.es
  %i.eu = zext i32 %i.dd to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 %i.ev
  %i.ex = and i64 %i.dq, 4294967295
  %i.ey = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.ex
  store ptr %i.ey, ptr %i.cm, align 8, !tbaa !491
  %.pre.i.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.noexc64, %bb.ae
  %i.ez = phi i32 [ %i.dd, %bb.ae ], [ %.pre.i.i.i.i.i, %.noexc64 ]
  %i.fa = phi ptr [ %.pre4.i.i.i.i.i.i.i, %bb.ae ], [ %i.ew, %.noexc64 ]
  %i.fb = sub nsw i64 0, %i.dg
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 %i.fb
  store ptr %i.fc, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407
  %i.fd = add i32 %i.ez, %i.df
  store i32 %i.fd, ptr %i.g, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.epil = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.fe = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.05.i.i.i.i.i.i.epil
  store i8 0, ptr %i.ff, align 1, !tbaa !14
  %i.fg = add nuw i64 %.05.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.dg
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !493

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.epil
  %.pre.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i
  %i.fh = phi i32 [ %.pre.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i ], [ %i.dd, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i ]
  %reass.sub = sub i32 %i.fh, %i.cx
  %i.fi = add i32 %reass.sub, 4
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %4, i16 noundef zeroext 6, i32 noundef %i.fi, i32 noundef 0)
          to label %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i unwind label %.loopexit

_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, %.noexc
  %i.fj = invoke noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %4, i32 noundef %i.cx)
          to label %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit unwind label %.loopexit ; 2 uses

_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit: ; preds = %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i
  %.not.i.i67 = icmp eq ptr %.sroa.10.0110, %.sroa.14.0109
  br i1 %.not.i.i67, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit
  store i32 %i.fj, ptr %.sroa.10.0110, align 4, !tbaa !3
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit

bb.al:                                            ; preds = %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit
  %i.fk = ptrtoint ptr %.sroa.10.0110 to i64      ; 2 uses
  %i.fl = ptrtoint ptr %.sroa.088.0111 to i64     ; 3 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775804
  br i1 %i.fn, label %bb.am, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.fo = ashr exact i64 %i.fm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 2305843009213693951)
  %i.fs = select i1 %i.fq, i64 2305843009213693951, i64 %i.fr ; 3 uses
  %.not.i.i.i.i68 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i68)
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #23
          to label %.noexc71 unwind label %.loopexit ; 8 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  store i32 %i.fj, ptr %i.fv, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.088.0111, %.sroa.10.0110
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i.i69.preheader:                   ; preds = %.noexc71
  %i.fw = ptrtoaddr ptr %i.fu to i64
  %12 = sub i64 %i.fk, %i.fl
  %13 = add i64 %12, -4                           ; 2 uses
  %i.fx = lshr i64 %13, 2
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 28
  %i.fz = sub i64 %i.fw, %i.fl
  %diff.check = icmp ult i64 %i.fz, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i69.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i69.preheader
  %n.vec = and i64 %i.fy, 9223372036854775800     ; 3 uses
  %i.ga = shl i64 %n.vec, 2                       ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %.sroa.088.0111, i64 %i.ga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fu, i64 %i.gd ; 2 uses
  %next.gep151 = getelementptr i8, ptr %.sroa.088.0111, i64 %i.gd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.ge = getelementptr i8, ptr %next.gep151, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep151, align 4, !tbaa !3, !alias.scope !498, !noalias !495
  %wide.load152 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !3, !alias.scope !498, !noalias !495
  %i.gf = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !495, !noalias !498
  store <4 x i32> %wide.load152, ptr %i.gf, align 4, !tbaa !3, !alias.scope !495, !noalias !498
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i69.preheader154

.lr.ph.i.i.i.i.i.i69.preheader154:                ; preds = %.lr.ph.i.i.i.i.i.i69.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i69.preheader ], [ %i.gb, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.088.0111, %.lr.ph.i.i.i.i.i.i69.preheader ], [ %i.gc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i69

.lr.ph.i.i.i.i.i.i69:                             ; preds = %.lr.ph.i.i.i.i.i.i69.preheader154, %.lr.ph.i.i.i.i.i.i69
  %.012.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i69 ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i69.preheader154 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i69 ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i69.preheader154 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.gh = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !498, !noalias !495
  store i32 %i.gh, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !495, !noalias !498
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gi, %.sroa.10.0110
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i69, !llvm.loop !501

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i69, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fu, %.noexc71 ], [ %i.gb, %middle.block ], [ %i.gj, %.lr.ph.i.i.i.i.i.i69 ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.088.0111, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0111, i64 noundef %i.fm) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ak
  %.sroa.14.1 = phi ptr [ %i.gk, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.14.0109, %bb.ak ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.10.0110, %bb.ak ]
  %.sroa.088.1 = phi ptr [ %i.fu, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.088.0111, %bb.ak ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 4 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gl = load ptr, ptr %i.cd, align 8, !tbaa !488
  %i.gm = load ptr, ptr %i.cc, align 8, !tbaa !490
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %sext = shl i64 %i.gp, 29
  %i.gq = ashr i64 %sext, 32
  %i.gr = icmp slt i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %bb.z, label %._crit_edge.loopexit, !llvm.loop !502

bb.ao:                                            ; preds = %bb.aa, %bb.z
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit:                                        ; preds = %bb.ab, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ah, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i, %bb.aj, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i
  %.sroa.14.0109.lcssa115 = phi ptr [ %.sroa.14.0109, %bb.ab ], [ %.sroa.14.0109, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i ], [ %.sroa.14.0109, %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i ], [ %.sroa.10.0110, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.14.0109, %bb.ah ], [ %.sroa.14.0109, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i ], [ %.sroa.14.0109, %bb.aj ], [ %.sroa.14.0109, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ap:                                            ; preds = %._crit_edge
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !490 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !488
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr exact i64 %i.gz, 3
  %i.hb = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIlTtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJT_EEEEPKS8_m(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %i.gu, i64 noundef %i.ha)
          to label %bb.aq unwind label %bb.av

bb.aq:                                            ; preds = %bb.ap
  %i.hc = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.hd = sext i32 %i.ad to i64
  %i.he = mul nsw i64 %i.hc, %i.hd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store i64 %2, ptr %10, align 8, !tbaa !503
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !505
  %i.hg = load i8, ptr %i.a, align 1, !tbaa !506
  %.sroa.03.0.copyload = load i32, ptr %6, align 4, !tbaa !3
  %i.hh = invoke i32 @_ZN3org6apache5arrow7flatbuf12CreateTensorERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_4TypeENS4_6OffsetIvEENS9_INS4_6VectorINS9_INS2_9TensorDimEEEjEEEENS9_INSB_IljEEEEPKNS2_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 noundef zeroext %i.hg, i32 %.sroa.03.0.copyload, i32 %i.cr, i32 %i.hb, ptr noundef nonnull %10)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 59
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !324
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_114WriteFBMessageERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEN3org6apache5arrow7flatbuf13MessageHeaderENS4_6OffsetIvEElNS0_15MetadataVersionERKSt10shared_ptrIKNS_16KeyValueMetadataEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %4, i8 noundef zeroext 4, i32 %i.hh, i64 noundef %i.he, i8 noundef signext %i.hj, ptr null, ptr noundef %i.hl)
          to label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ay

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.not.i.i.i76 = icmp eq ptr %.sroa.088.0.lcssa, null
  br i1 %.not.i.i.i76, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hm = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.hn = sub i64 %i.hm, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0.lcssa, i64 noundef %i.hn) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit

bb.au:                                            ; preds = %._crit_edge
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.av:                                            ; preds = %bb.ap
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aw:                                            ; preds = %bb.aq
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ax:                                            ; preds = %bb.ar
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.as
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn39 = phi { ptr, i32 } [ %i.hs, %bb.ay ], [ %i.hr, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.av, %bb.az, %bb.aw, %bb.au, %bb.ao
  %.sroa.14.0107 = phi ptr [ %.sroa.14.0109, %bb.ao ], [ %.sroa.14.0.lcssa, %bb.aw ], [ %.sroa.14.0.lcssa, %bb.au ], [ %.sroa.14.0.lcssa, %bb.av ], [ %.sroa.14.0.lcssa, %bb.az ], [ %.sroa.14.0109.lcssa115, %.loopexit ], [ %.sroa.10.0110, %.loopexit.split-lp ]
  %.sroa.088.099 = phi ptr [ %.sroa.088.0111, %bb.ao ], [ %.sroa.088.0.lcssa, %bb.aw ], [ %.sroa.088.0.lcssa, %bb.au ], [ %.sroa.088.0.lcssa, %bb.av ], [ %.sroa.088.0.lcssa, %bb.az ], [ %.sroa.088.0111, %.loopexit ], [ %.sroa.088.0111, %.loopexit.split-lp ] ; 3 uses
  %.pn44.pn = phi { ptr, i32 } [ %i.gs, %bb.ao ], [ %i.hq, %bb.aw ], [ %i.ho, %bb.au ], [ %i.hp, %bb.av ], [ %.pn39, %bb.az ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.sroa.088.099, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit78, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = ptrtoint ptr %.sroa.14.0107 to i64
  %i.hu = ptrtoint ptr %.sroa.088.099 to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.099, i64 noundef %i.hv) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit78

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit: ; preds = %bb.at, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit58
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE:bb.a
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef %i.bm, i64 noundef %i.bo)
          to label %bb.n unwind label %bb.aa, !noalias !524

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.g, align 8, !tbaa !301, !noalias !524 ; 3 uses
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !490, !noalias !524
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !440, !noalias !524
  store i8 1, ptr %i.j, align 8, !tbaa !305, !noalias !524
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIlEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %18, i16 noundef zeroext 4, i64 noundef %i.bs, i64 noundef 0)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !524

.noexc.i:                                         ; preds = %bb.n
  %.not.i.i.i.i64.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i64.i, label %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc.i
  %i.bt = load i64, ptr %i.l, align 8, !tbaa !307, !noalias !524
  %i.bu = icmp ult i64 %i.bt, 4
  br i1 %i.bu, label %bb.p, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  store i64 4, ptr %i.l, align 8, !tbaa !307, !noalias !524
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %i.bv = load i32, ptr %i.g, align 8, !tbaa !301, !noalias !524 ; 5 uses
  %i.bw = sub i32 0, %i.bv
  %i.bx = and i32 %i.bw, 3                        ; 3 uses
  %i.by = zext nneg i32 %i.bx to i64              ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i
  %.pre4.i.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !407, !noalias !524 ; 2 uses
  %i.bz = load ptr, ptr %i.bc, align 8, !tbaa !491, !noalias !524
  %i.ca = ptrtoint ptr %.pre4.i.i.i.i.i.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp samesign ult i64 %i.cd, %i.by
  br i1 %i.ce, label %bb.r, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cf = load i64, ptr %i.f, align 8, !tbaa !300, !noalias !524 ; 5 uses
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !416, !noalias !524 ; 6 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.cb, %i.ch                    ; 2 uses
  %.not.i21 = icmp eq i64 %i.cf, 0
  %i.cj = lshr i64 %i.cf, 1
  %i.ck = load i64, ptr %i.c, align 8, !noalias !524
  %i.cl = select i1 %.not.i21, i64 %i.ck, i64 %i.cj
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.cl)
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !299, !noalias !524 ; 2 uses
  %i.cn = add i64 %i.cf, -1
  %i.co = add i64 %i.cn, %i.cm
  %i.cp = add i64 %i.co, %.sroa.speculated.i
  %i.cq = sub i64 0, %i.cm
  %i.cr = and i64 %i.cp, %i.cq                    ; 6 uses
  store i64 %i.cr, ptr %i.f, align 8, !tbaa !300, !noalias !524
  %.not8.i = icmp eq ptr %i.cg, null
  %i.cs = load ptr, ptr %18, align 8, !tbaa !293, !noalias !524 ; 6 uses
  br i1 %.not8.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = zext i32 %i.bv to i64                   ; 3 uses
  %i.cu = and i64 %i.ci, 4294967295               ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i22, label %bb.t, label %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.cv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cr) #23
          to label %.noexc unwind label %.loopexit.i ; 3 uses

.noexc:                                           ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cr
  %i.cx = sub nsw i64 0, %i.ct                    ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.da, i64 %i.ct, i1 false), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.cg, i64 %i.cu, i1 false), !noalias !524
  call void @_ZdaPv(ptr noundef nonnull %i.cg) #24, !noalias !524
  br label %.noexc65.i

_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i: ; preds = %bb.s
  %i.db = load ptr, ptr %i.cs, align 8, !tbaa !18, !noalias !524
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !524
  %i.de = invoke noundef ptr %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull %i.cg, i64 noundef %i.cf, i64 noundef %i.cr, i64 noundef %i.ct, i64 noundef %i.cu)
          to label %.noexc65.i unwind label %.loopexit.i, !inline_history !492

bb.u:                                             ; preds = %bb.r
  %.not.i9.i = icmp eq ptr %i.cs, null
  br i1 %.not.i9.i, label %bb.v, label %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i

bb.v:                                             ; preds = %bb.u
  %i.df = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cr) #23
          to label %.noexc65.i unwind label %.loopexit.i

_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i: ; preds = %bb.u
  %i.dg = load ptr, ptr %i.cs, align 8, !tbaa !18, !noalias !524
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !524
  %i.dj = invoke noundef ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i64 noundef %i.cr)
          to label %.noexc65.i unwind label %.loopexit.i, !inline_history !492

.noexc65.i:                                       ; preds = %.noexc, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i, %bb.v, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i
  %storemerge.i = phi ptr [ %i.cv, %.noexc ], [ %i.de, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i ], [ %i.df, %bb.v ], [ %i.dj, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.h, align 8, !tbaa !416, !noalias !524
  %i.dk = load i64, ptr %i.f, align 8, !tbaa !300, !noalias !524
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.dk
  %i.dm = zext i32 %i.bv to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.dn
  %i.dp = and i64 %i.ci, 4294967295
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.dp
  store ptr %i.dq, ptr %i.bc, align 8, !tbaa !491, !noalias !524
  %.pre.i.i.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !301, !noalias !524
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %.noexc65.i, %bb.q
  %i.dr = phi i32 [ %i.bv, %bb.q ], [ %.pre.i.i.i.i.i.i, %.noexc65.i ]
  %i.ds = phi ptr [ %.pre4.i.i.i.i.i.i.i.i, %bb.q ], [ %i.do, %.noexc65.i ]
  %i.dt = sub nsw i64 0, %i.by
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store ptr %i.du, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !407, !noalias !524
  %i.dv = add i32 %i.dr, %i.bx
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !301, !noalias !524
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.epil = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i.i ]
  %i.dw = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !407, !noalias !524
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.05.i.i.i.i.i.i.i.epil
  store i8 0, ptr %i.dx, align 1, !tbaa !14, !noalias !524
  %i.dy = add nuw i64 %.05.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.by
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !532

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.epil
  %.pre.i.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !301, !noalias !524
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i
  %i.dz = phi i32 [ %.pre.i.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i.i ], [ %i.bv, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i.i ]
  %reass.sub = sub i32 %i.dz, %i.bp
  %i.ea = add i32 %reass.sub, 4
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %18, i16 noundef zeroext 6, i32 noundef %i.ea, i32 noundef 0)
          to label %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i.i unwind label %.loopexit.i, !noalias !524

_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i.i, %.noexc.i
  %i.eb = invoke noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 noundef %i.bp)
          to label %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit.i unwind label %.loopexit.i, !noalias !524 ; 2 uses

_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit.i: ; preds = %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i.i
  %.not.i.i68.i = icmp eq ptr %.sroa.9.0177.i, %.sroa.13.0178.i
  br i1 %.not.i.i68.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit.i
  store i32 %i.eb, ptr %.sroa.9.0177.i, align 4, !tbaa !3, !noalias !524
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i

bb.x:                                             ; preds = %_ZN3org6apache5arrow7flatbuf15CreateTensorDimERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6StringEEE.exit.i
  %i.ec = ptrtoint ptr %.sroa.13.0178.i to i64    ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.0121.0179.i to i64  ; 3 uses
  %i.ee = sub i64 %i.ec, %i.ed                    ; 4 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775804
  br i1 %i.ef, label %bb.y, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc71.i unwind label %.loopexit.split-lp.i, !noalias !524

.noexc71.i:                                       ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.x
  %i.eg = ashr exact i64 %i.ee, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 2305843009213693951)
  %i.ek = select i1 %i.ei, i64 2305843009213693951, i64 %i.ej ; 3 uses
  %.not.i.i.i.i69.i = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i.i69.i)
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #23
          to label %.noexc72.i unwind label %.loopexit.i, !noalias !524 ; 8 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ee
  store i32 %i.eb, ptr %i.en, align 4, !tbaa !3, !noalias !524
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0121.0179.i, %.sroa.13.0178.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i70.i.preheader

.lr.ph.i.i.i.i.i.i70.i.preheader:                 ; preds = %.noexc72.i
  %i.eo = ptrtoaddr ptr %i.em to i64
  %21 = sub i64 %i.ec, %i.ed
  %22 = add i64 %21, -4                           ; 2 uses
  %i.ep = lshr i64 %22, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %22, 28
  %i.er = sub i64 %i.eo, %i.ed
  %diff.check = icmp ult i64 %i.er, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i70.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i70.i.preheader
  %n.vec = and i64 %i.eq, 9223372036854775800     ; 3 uses
  %i.es = shl i64 %n.vec, 2                       ; 2 uses
  %i.et = getelementptr i8, ptr %i.em, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.0121.0179.i, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.ev ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.sroa.0121.0179.i, i64 %i.ev ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ew = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !3, !alias.scope !536, !noalias !538
  %wide.load157 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !3, !alias.scope !536, !noalias !538
  %i.ex = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !533, !noalias !539
  store <4 x i32> %wide.load157, ptr %i.ex, align 4, !tbaa !3, !alias.scope !533, !noalias !539
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i70.i.preheader175

.lr.ph.i.i.i.i.i.i70.i.preheader175:              ; preds = %.lr.ph.i.i.i.i.i.i70.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i.i70.i.preheader ], [ %i.et, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0121.0179.i, %.lr.ph.i.i.i.i.i.i70.i.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i70.i

.lr.ph.i.i.i.i.i.i70.i:                           ; preds = %.lr.ph.i.i.i.i.i.i70.i.preheader175, %.lr.ph.i.i.i.i.i.i70.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i70.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i70.i.preheader175 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i70.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i70.i.preheader175 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !533)
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ez = load i32, ptr %.0911.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !536, !noalias !538
  store i32 %i.ez, ptr %.012.i.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !533, !noalias !539
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fa, %.sroa.13.0178.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i70.i, !llvm.loop !541

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i70.i, %middle.block, %.noexc72.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.em, %.noexc72.i ], [ %i.et, %middle.block ], [ %i.fb, %.lr.ph.i.i.i.i.i.i70.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0121.0179.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0179.i, i64 noundef %i.ee) #24, !noalias !524
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.w
  %.0.lcssa.i.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0177.i, %bb.w ]
  %.sroa.13.1.i = phi ptr [ %i.fc, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0178.i, %bb.w ] ; 2 uses
  %.sroa.0121.1.i = phi ptr [ %i.em, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.0121.0179.i, %bb.w ] ; 2 uses
  %.sroa.9.1.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i, i64 4 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fd = load ptr, ptr %i.at, align 8, !tbaa !488, !noalias !524
  %i.fe = load ptr, ptr %i.as, align 8, !tbaa !490, !noalias !524
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %sext.i = shl i64 %i.fh, 29
  %i.fi = ashr i64 %sext.i, 32
  %i.fj = icmp slt i64 %indvars.iv.next.i, %i.fi
  br i1 %i.fj, label %bb.l, label %_ZN5arrow6StatusD2Ev.exit63._crit_edge.i, !llvm.loop !542

bb.aa:                                            ; preds = %bb.m, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.loopexit.i:                                      ; preds = %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i, %bb.v, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i, %bb.t, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZN3org6apache5arrow7flatbuf16TensorDimBuilder8add_nameEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i.i, %bb.n
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

.loopexit.split-lp.i:                             ; preds = %bb.y
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit63._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22, !noalias !524
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !543, !noalias !524 ; 15 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !546, !noalias !549
  switch i32 %i.fo, label %bb.fd [
    i32 0, label %bb.ab
    i32 1, label %bb.am
    i32 2, label %bb.bg
    i32 3, label %bb.ca
  ]

bb.ab:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !552, !noalias !555 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !7, !noalias !558 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !13, !noalias !558 ; 8 uses
  %.not.i.i.i.i.i.i74.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i.i74.i, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 7 uses
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !558
  %.not.i.i.i.i.i.i.i75.i = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i.i75.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !3, !noalias !558
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.fv, align 4, !tbaa !3, !noalias !558
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fz = atomicrmw volatile add ptr %i.fv, i32 1 acq_rel, align 4, !noalias !558 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ga = load atomic i64, ptr %i.fv acquire, align 8, !noalias !555 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.fv, align 8, !tbaa !15, !noalias !555
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !17, !noalias !555
  %i.ge = load ptr, ptr %i.fu, align 8, !tbaa !18, !noalias !555
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !555
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #22, !noalias !555, !inline_history !561
  %i.gh = load ptr, ptr %i.fu, align 8, !tbaa !18, !noalias !555
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !555
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #22, !noalias !555, !inline_history !561
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !555
  %.not.i.i.i.i.i76.i = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i76.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fv, align 8, !tbaa !3, !noalias !555
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.gm = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4, !noalias !555
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gc, %bb.ai ], [ %i.gm, %bb.aj ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.gn, label %bb.ak, label %bb.al, !prof !21

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #22, !noalias !555
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag, %bb.ab
  %i.go = load ptr, ptr %i.fs, align 8, !tbaa !18, !noalias !555
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !555
  %i.gr = invoke noundef i32 %i.gq(ptr noundef nonnull align 8 dereferenceable(72) %i.fs)
          to label %.noexc79.i unwind label %bb.fr, !noalias !524, !inline_history !562

.noexc79.i:                                       ; preds = %bb.al
  %i.gs = load ptr, ptr %i.fs, align 8, !tbaa !18, !noalias !555
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !555
  %i.gv = invoke noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(72) %i.fs)
          to label %.noexc80.i unwind label %bb.fr, !noalias !524, !inline_history !562

.noexc80.i:                                       ; preds = %.noexc79.i
  %i.gw = invoke i32 @_ZN3org6apache5arrow7flatbuf9CreateIntERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEib(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 noundef %i.gr, i1 noundef zeroext %i.gv)
          to label %.noexc81.i unwind label %bb.fr, !noalias !524

.noexc81.i:                                       ; preds = %.noexc80.i
  %i.gx = load ptr, ptr %i.fp, align 8, !tbaa !552, !noalias !555 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 64
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE:_ZN5arrow6StatusD2Ev.exit
  %i.bu = invoke i32 @_ZN3org6apache5arrow7flatbuf24CreateDictionaryEncodingERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS2_3IntEEEbNS2_14DictionaryKindE(ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i64 noundef %i.be, i32 %i.bq, i1 noundef zeroext %i.bt, i16 noundef signext 0)
          to label %_ZN5arrow6StatusD2Ev.exit75 unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit75:                      ; preds = %.noexc72
  store ptr null, ptr %0, align 8, !tbaa !22
  %i.bv = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.p, !prof !58

bb.o:                                             ; preds = %.noexc72, %.noexc71, %.noexc, %bb.n
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit75
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !61, !range !72, !noundef !73
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %_ZN5arrow6StatusD2Ev.exit75, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre118 = load ptr, ptr %2, align 8, !tbaa !149
  br label %bb.u

bb.r:                                             ; preds = %bb.o, %bb.m
  %.pn52 = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.bw, %bb.o ]
  %i.ca = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i80, label %_ZN5arrow6ResultIlED2Ev.exit81, label %bb.s, !prof !58

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !61, !range !72, !noundef !73
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN5arrow6ResultIlED2Ev.exit81, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit81

_ZN5arrow6ResultIlED2Ev.exit81:                   ; preds = %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

bb.u:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.c
  %i.ce = phi ptr [ %.pre118, %_ZN5arrow6ResultIlED2Ev.exit ], [ %i.f, %bb.c ] ; 2 uses
  %.sroa.0108.0 = phi i32 [ %i.bu, %_ZN5arrow6ResultIlED2Ev.exit ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !377, !noalias !846 ; 3 uses
  store ptr %i.cg, ptr %7, align 8, !tbaa !377, !alias.scope !846
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !13, !noalias !846 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !13, !alias.scope !846
  %.not.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i, label %_ZNK5arrow5Field8metadataEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 3 uses
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !846
  %.not.i.i.i.i.i82 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i82, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !3, !noalias !846
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !3, !noalias !846
  br label %_ZNK5arrow5Field8metadataEv.exit

bb.x:                                             ; preds = %bb.v
  %i.co = atomicrmw volatile add ptr %i.ck, i32 1 acq_rel, align 4, !noalias !846 ; 0 uses
  %.pre119 = load ptr, ptr %7, align 8, !tbaa !377
  br label %_ZNK5arrow5Field8metadataEv.exit

_ZNK5arrow5Field8metadataEv.exit:                 ; preds = %bb.u, %bb.w, %bb.x
  %i.cp = phi ptr [ %i.cg, %bb.u ], [ %i.cg, %bb.w ], [ %.pre119, %bb.x ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i83 = icmp eq ptr %i.cp, null
  br i1 %.not.i83, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK5arrow5Field8metadataEv.exit
  %i.cq = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef %8)
          to label %._crit_edge120 unwind label %bb.z

._crit_edge120:                                   ; preds = %bb.y
  %.promoted.pre = load ptr, ptr %8, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.aa:                                            ; preds = %._crit_edge120, %_ZNK5arrow5Field8metadataEv.exit
  %.promoted = phi ptr [ %.promoted.pre, %._crit_edge120 ], [ null, %_ZNK5arrow5Field8metadataEv.exit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0104.0112 = load ptr, ptr %i.cs, align 8, !tbaa !370 ; 2 uses
  %i.ct = icmp eq ptr %.sroa.0104.0112, null
  %.phi.trans.insert122 = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br i1 %i.ct, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.aa
  %.pre123 = load ptr, ptr %.phi.trans.insert122, align 8, !tbaa !849
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.ab

._crit_edge:                                      ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit, %.._crit_edge_crit_edge
  %i.cv = phi ptr [ %.pre123, %.._crit_edge_crit_edge ], [ %i.eo, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 2 uses
  %.lcssa109 = phi ptr [ %.promoted, %.._crit_edge_crit_edge ], [ %i.ep, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 6 uses
  store ptr %.lcssa109, ptr %8, align 8
  %i.cw = ptrtoint ptr %.lcssa109 to i64          ; 2 uses
  %.not = icmp eq ptr %i.cv, %.lcssa109
  br i1 %.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit, label %bb.ag

bb.ab:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit
  %.sroa.0104.0113 = phi ptr [ %.sroa.0104.0112, %.lr.ph ], [ %.sroa.0104.0, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 5 uses
  %i.cx = phi ptr [ %.promoted, %.lr.ph ], [ %i.ep, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 12 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 8
  %i.cz = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817 ; 4 uses
  %.val = load ptr, ptr %i.cy, align 8, !tbaa !103
  %i.da = getelementptr i8, ptr %.sroa.0104.0113, i64 16
  %.val64 = load i64, ptr %i.da, align 8, !tbaa !102
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.cz, ptr noundef %.val, i64 noundef %.val64)
          to label %.noexc84 unwind label %.loopexit

.noexc84:                                         ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !301
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !103
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0104.0113, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !102
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.cz, ptr noundef %i.de, i64 noundef %i.dg)
          to label %.noexc85 unwind label %.loopexit

.noexc85:                                         ; preds = %.noexc84
  %i.dh = load i32, ptr %i.dc, align 8, !tbaa !301
  %i.di = invoke i32 @_ZN3org6apache5arrow7flatbuf14CreateKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEESA_(ptr noundef nonnull align 8 dereferenceable(128) %i.cz, i32 %i.dd, i32 %i.dh)
          to label %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit unwind label %.loopexit ; 2 uses

_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit: ; preds = %.noexc85
  %i.dj = load ptr, ptr %.phi.trans.insert122, align 8, !tbaa !849 ; 6 uses
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !382
  %.not.i.i87 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not.i.i87, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  store ptr %i.dl, ptr %.phi.trans.insert122, align 8, !tbaa !849
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

bb.ad:                                            ; preds = %_ZN5arrow3ipc8internal12_GLOBAL__N_114AppendKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_.exit
  %i.dm = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dn = ptrtoint ptr %i.cx to i64               ; 3 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 4 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775804
  br i1 %i.dp, label %bb.ae, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cx, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc89 unwind label %.loopexit.split-lp

.noexc89:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.dq = ashr exact i64 %i.do, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 2305843009213693951)
  %i.du = select i1 %i.ds, i64 2305843009213693951, i64 %i.dt ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.dv = shl nuw nsw i64 %i.du, 2
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #23
          to label %.noexc90 unwind label %.loopexit ; 8 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  store i32 %i.di, ptr %i.dx, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.dj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc90
  %i.dy = ptrtoaddr ptr %i.dw to i64
  %9 = sub i64 %i.dm, %i.dn
  %10 = add i64 %9, -4                            ; 2 uses
  %i.dz = lshr i64 %10, 2
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 28
  %i.eb = sub i64 %i.dy, %i.dn
  %diff.check = icmp ult i64 %i.eb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 3 uses
  %i.ec = shl i64 %n.vec, 2                       ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dw, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.cx, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dw, i64 %i.ef ; 2 uses
  %next.gep149 = getelementptr i8, ptr %i.cx, i64 %i.ef ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.eg = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !3, !alias.scope !853, !noalias !850
  %wide.load150 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !3, !alias.scope !853, !noalias !850
  %i.eh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !850, !noalias !853
  store <4 x i32> %wide.load150, ptr %i.eh, align 4, !tbaa !3, !alias.scope !850, !noalias !853
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !855

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ea, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader152

.lr.ph.i.i.i.i.i.i.preheader152:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ed, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader152, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader152 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader152 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.ej = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !853, !noalias !850
  store i32 %i.ej, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !850, !noalias !853
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ek, %i.dj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !856

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc90
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dw, %.noexc90 ], [ %i.ed, %middle.block ], [ %i.el, %.lr.ph.i.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.do) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.em, ptr %.phi.trans.insert122, align 8, !tbaa !849
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.du
  store ptr %i.en, ptr %i.cu, align 8, !tbaa !382
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ac
  %i.eo = phi ptr [ %i.em, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.dl, %bb.ac ]
  %i.ep = phi ptr [ %i.dw, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.cx, %bb.ac ] ; 2 uses
  %.sroa.0104.0 = load ptr, ptr %.sroa.0104.0113, align 8, !tbaa !370 ; 2 uses
  %i.eq = icmp eq ptr %.sroa.0104.0, null
  br i1 %i.eq, label %._crit_edge, label %bb.ab

.loopexit:                                        ; preds = %bb.ab, %.noexc84, %.noexc85, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cx, ptr %8, align 8
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ag:                                            ; preds = %._crit_edge
  %i.er = ptrtoint ptr %i.cv to i64
  %i.es = sub i64 %i.er, %i.cw
  %i.et = ashr exact i64 %i.es, 2
  %i.eu = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817
  %i.ev = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf8KeyValueEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %i.eu, ptr noundef %.lcssa109, i64 noundef %i.et)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit: ; preds = %bb.ag, %._crit_edge
  %.sroa.0107.0 = phi i32 [ 0, %._crit_edge ], [ %i.ev, %bb.ag ]
  %i.ex = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817 ; 2 uses
  %i.ey = load ptr, ptr %2, align 8, !tbaa !149   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !103
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !102
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %i.ex, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !301
  %i.ff = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !372 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !857
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2
  %i.fo = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf5FieldEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %i.ff, ptr noundef %i.fh, i64 noundef %i.fn)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.fp = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817
  %i.fq = load ptr, ptr %2, align 8, !tbaa !149
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !152, !range !72, !noundef !73
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !858
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.04.0.copyload = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fx = invoke i32 @_ZN3org6apache5arrow7flatbuf11CreateFieldERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEEbNS2_4TypeENS8_IvEENS8_INS2_18DictionaryEncodingEEENS8_INS4_6VectorINS8_INS2_5FieldEEEjEEEENS8_INSF_INS8_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.fp, i32 %i.fe, i1 noundef zeroext %i.ft, i8 noundef zeroext %i.fv, i32 %.sroa.04.0.copyload, i32 %.sroa.0108.0, i32 %i.fo, i32 %.sroa.0107.0)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  store i32 %i.fx, ptr %3, align 4, !tbaa !3
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !859
  %.not.i.i.i93 = icmp eq ptr %.lcssa109, null
  br i1 %.not.i.i.i93, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !382
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.ga, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa109, i64 noundef %i.gb) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.gc = load ptr, ptr %i.ch, align 8, !tbaa !13 ; 8 uses
  %.not.i.i94 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i94, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gd, align 8, !tbaa !15
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !17
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #22, !inline_history !337
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !18
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #22, !inline_history !337
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ao:                                            ; preds = %bb.am
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i95 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i95, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i = phi i32 [ %i.gg, %bb.ap ], [ %i.gq, %bb.aq ]
  %i.gr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.gr, label %bb.ar, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN3org6apache5arrow7flatbuf12CreateSchemaERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_10EndiannessENS4_6OffsetINS4_6VectorINS9_INS2_5FieldEEEjEEEENS9_INSA_INS9_INS2_8KeyValueEEEjEEEENS9_INSA_IljEEEE:bb.a
  %i.bt = add nuw i64 %.05.i.i.i.i.i29.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %i.be
  br i1 %epil.iter61.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, label %.lr.ph.i.i.i.i.i28.epil, !llvm.loop !864

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i28.epil
  %.pre.i.i.i32 = load i32, ptr %i.b, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23
  %i.bu = phi i32 [ %.pre.i.i.i32, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i31 ], [ %i.bb, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i23 ]
  %reass.sub44 = sub i32 %i.bu, %2
  %i.bv = add i32 %reass.sub44, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 6, i32 noundef %i.bv, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf13SchemaBuilder10add_fieldsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit: ; preds = %_ZN3org6apache5arrow7flatbuf13SchemaBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i33
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIsEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i16 noundef signext %1, i16 noundef signext 0)
  %i.bw = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.c)
  ret i32 %i.bw
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNK5arrow3ipc21DictionaryFieldMapper10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.158") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 4 uses
  %i.b = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382
  %i.e = load ptr, ptr %2, align 8, !tbaa !380    ; 7 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.i, %i.a
  br i1 %i.j, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !849  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.g
  %i.o = shl nuw nsw i64 %i.a, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, %i.l
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = add i64 %i.m, -4
  %i.s = sub i64 %i.r, %i.g                       ; 2 uses
  %i.t = lshr i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28
  %i.v = sub i64 %i.q, %i.g
  %diff.check = icmp ult i64 %i.v, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.w = shl i64 %n.vec, 2                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  %i.y = getelementptr i8, ptr %i.e, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.e, i64 %i.z ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.aa = getelementptr i8, ptr %next.gep22, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep22, align 4, !tbaa !3, !alias.scope !868, !noalias !865
  %wide.load23 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !3, !alias.scope !868, !noalias !865
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !865, !noalias !868
  store <4 x i32> %wide.load23, ptr %i.ab, align 4, !tbaa !3, !alias.scope !865, !noalias !868
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i.preheader45

.lr.ph.i.i.i.i.preheader45:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader45, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader45 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.ad = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !3, !alias.scope !868, !noalias !865
  store i32 %i.ad, ptr %.012.i.i.i.i, align 4, !tbaa !3, !alias.scope !865, !noalias !868
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.l
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !871

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.e, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.h) #24
  br label %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i

_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit.i
  store ptr %i.p, ptr %2, align 8, !tbaa !380
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !849
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.a
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !382
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE13_M_deallocateEPS8_m.exit.i
  %i.ai = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit ] ; 3 uses
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata3keyB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %indvars.iv) ; 2 uses
  %i.an = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow16KeyValueMetadata5valueB5cxx11El(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %indvars.iv) ; 2 uses
  %.val = load ptr, ptr %i.am, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.val11 = load i64, ptr %i.ao, align 8, !tbaa !102
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %.val, i64 noundef %.val11)
  %i.ap = load i32, ptr %i.ak, align 8, !tbaa !301
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !102
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE16CreateStringImplEPKcm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %i.aq, i64 noundef %i.as)
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !301
  %i.au = tail call i32 @_ZN3org6apache5arrow7flatbuf14CreateKeyValueERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEESA_(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %i.ap, i32 %i.at) ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !849 ; 6 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !382
  %.not.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.ax, ptr %i.al, align 8, !tbaa !849
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %2, align 8, !tbaa !380   ; 7 uses
  %i.az = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.h, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  store i32 %i.au, ptr %i.bk, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = ptrtoaddr ptr %i.bj to i64
  %3 = sub i64 %i.az, %i.ba
  %4 = add i64 %3, -4                             ; 2 uses
  %i.bm = lshr i64 %4, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check28 = icmp ult i64 %4, 28
  %i.bo = sub i64 %i.bl, %i.ba
  %diff.check26 = icmp ult i64 %i.bo, 32
  %or.cond43 = or i1 %min.iters.check28, %diff.check26
  br i1 %or.cond43, label %.lr.ph.i.i.i.i.i.i.preheader44, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec31 = and i64 %i.bn, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec31, 2                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bj, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.ay, i64 %i.bp
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.bs = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.bj, i64 %i.bs ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.ay, i64 %i.bs ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.bt = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !3, !alias.scope !875, !noalias !872
  %wide.load37 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !3, !alias.scope !875, !noalias !872
  %i.bu = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep34, align 4, !tbaa !3, !alias.scope !872, !noalias !875
  store <4 x i32> %wide.load37, ptr %i.bu, align 4, !tbaa !3, !alias.scope !872, !noalias !875
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.bv = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.bv, label %middle.block39, label %vector.body32, !llvm.loop !877

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %i.bn, %n.vec31
  br i1 %cmp.n40, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader44

.lr.ph.i.i.i.i.i.i.preheader44:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block39
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block39 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.br, %middle.block39 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader44, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader44 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader44 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.bw = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !875, !noalias !872
  store i32 %i.bw, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !872, !noalias !875
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bx, %i.av
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !878

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block39, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bj, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bq, %middle.block39 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.bj, ptr %2, align 8, !tbaa !380
  store ptr %i.bz, ptr %i.al, align 8, !tbaa !849
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.ca, ptr %i.c, align 8, !tbaa !382
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit: ; preds = %bb.f, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.cc = icmp sgt i64 %i.cb, %indvars.iv.next
  br i1 %i.cc, label %bb.e, label %._crit_edge, !llvm.loop !879
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf5FieldEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11StartVectorINS0_6OffsetEjEEvmmm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %2, i64 noundef 4, i64 noundef 4)
  %.not6 = icmp eq i64 %2, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !307
  %i.d = icmp ult i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

bb.b:                                             ; preds = %._crit_edge
  store i64 4, ptr %i.b, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i: ; preds = %bb.b, %._crit_edge
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !301  ; 2 uses
  %i.g = sub i32 0, %i.f
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  br i1 %.not.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !491
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.d, label %.lr.ph.preheader.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i.i = load i32, ptr %i.e, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.f, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.e, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i
  %.05.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %i.x = add nuw i64 %.05.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !880

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.epil, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !491
  %i.aa = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 4294967292
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

bb.e:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE9EndVectorIjjEET0_m.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i, %bb.e
  %i.af = phi ptr [ %.pre4.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i ], [ %.pre.i.i.i.i, %bb.e ]
  %i.ag = trunc i64 %2 to i32
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  store ptr %i.ah, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !407
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !301
  %i.aj = add i32 %i.ai, 4
  store i32 %i.aj, ptr %i.e, align 8, !tbaa !301
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !3
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !301
  ret i32 %i.ak

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.al, %.lr.ph ], [ %2, %bb.a ]
  %i.al = add i64 %.07, -1                        ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.al
  %.sroa.0.0.copyload = load i32, ptr %i.am, align 4, !tbaa !3
  %i.an = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIN3org6apache5arrow7flatbuf5FieldENS0_6OffsetEEEjT0_IT_E(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %.sroa.0.0.copyload) ; 0 uses
  %.not = icmp eq i64 %i.al, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !881
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN3org6apache5arrow7flatbuf11CreateFieldERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEEbNS2_4TypeENS8_IvEENS8_INS2_18DictionaryEncodingEEENS8_INS4_6VectorINS8_INS2_5FieldEEEjEEEENS8_INSF_INS8_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 %1, i1 noundef zeroext %2, i8 noundef zeroext %3, i32 %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 26 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !301  ; 4 uses
  %.not.i.i.i = icmp eq i32 %7, 0
  br i1 %.not.i.i.i, label %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !307
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !307
end_hunk_4
begin_hunk_5_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.z, align 1, !tbaa !14
  %i.aa = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.l
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1219

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !491 ; 2 uses
  %i.ad = ptrtoint ptr %.pre4.i.i.i to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = and i64 %i.af, 4294967292
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.f:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !491 ; 2 uses
  %.pre7 = ptrtoint ptr %.pre to i64
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.f
  %.pre-phi = phi i64 [ %i.ae, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre7, %bb.f ]
  %i.ai = phi ptr [ %i.ac, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre, %bb.f ]
  %i.aj = phi ptr [ %.pre4.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 3 uses
  store ptr %i.ak, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %i.al = load i32, ptr %i.h, align 8, !tbaa !301
  %i.am = add i32 %i.al, 4
  store i32 %i.am, ptr %i.h, align 8, !tbaa !301
  store i32 %2, ptr %i.ak, align 4, !tbaa !3
  %i.an = load i32, ptr %i.h, align 8, !tbaa !301
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.ao, %.pre-phi
  %i.aq = and i64 %i.ap, 4294967288
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

bb.g:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 8)
  %.pre.i.i6 = load ptr, ptr %i.ab, align 8, !tbaa !491
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i: ; preds = %bb.g, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.as = phi ptr [ %i.ai, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit ], [ %.pre.i.i6, %bb.g ]
  %.sroa.4.0.insert.ext.i = zext i16 %1 to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.an to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !491
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !491
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !508
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !508
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !509
  %i.ba = icmp ugt i16 %1, %i.az
  br i1 %i.ba, label %bb.h, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

bb.h:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i
  store i16 %1, ptr %i.ay, align 4, !tbaa !509
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10TrackFieldEtj.exit: ; preds = %bb.h, %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE18scratch_push_smallINS0_21FlatBufferBuilderImplILb0EE8FieldLocEEEvRKT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor16VisitChildFieldsERKNS_8DataTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow_vendored_private::flatbuffers::Offset.149", align 4 ; 8 uses
  %4 = alloca %"class.arrow::ipc::internal::(anonymous namespace)::FieldToFlatbufferVisitor", align 16 ; 18 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.z = phi ptr [ %i.d, %.lr.ph ], [ %i.cq, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !342
  %i.ab = add nsw i32 %i.aa, 1
  %.sroa.4.8.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %indvars.iv
  %i.ac = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.ac, ptr %4, align 16, !tbaa !53
  store ptr %i.k, ptr %i.m, align 16, !tbaa !349
  store i64 %.sroa.2.8.insert.insert.i, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  store ptr %i.p, ptr %i.o, align 16, !tbaa !350
  store i64 1, ptr %i.q, align 8, !tbaa !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.s, align 16, !tbaa !359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.ae = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN5arrow6StatusD2Ev.exit26, label %.critedge22

bb.c:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !857 ; 6 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !375
  %.not.i27 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  %i.aj = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ak, ptr %i.v, align 8, !tbaa !857
  br label %.critedge

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !372 ; 7 uses
  %i.am = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #23
          to label %.noexc28 unwind label %.loopexit ; 8 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.ay = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !3
  %.not10.i.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc28
  %i.az = ptrtoaddr ptr %i.aw to i64
  %6 = sub i64 %i.am, %i.an
  %7 = add i64 %6, -4                             ; 2 uses
  %i.ba = lshr i64 %7, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 28
  %i.bc = sub i64 %i.az, %i.an
  %diff.check = icmp ult i64 %i.bc, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bb, 9223372036854775800     ; 3 uses
  %i.bd = shl i64 %n.vec, 2                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.aw, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %i.bg ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.al, i64 %i.bg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.bh = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !3, !alias.scope !1223, !noalias !1220
  %wide.load70 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !3, !alias.scope !1223, !noalias !1220
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !1220, !noalias !1223
  store <4 x i32> %wide.load70, ptr %i.bi, align 4, !tbaa !3, !alias.scope !1220, !noalias !1223
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader72

.lr.ph.i.i.i.i.i.preheader72:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader72, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader72 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.bk = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1223, !noalias !1220
  store i32 %i.bk, ptr %.012.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !1220, !noalias !1223
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bl, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1226

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %.noexc28 ], [ %i.be, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.aw, ptr %i.u, align 8, !tbaa !372
  store ptr %i.bn, ptr %i.v, align 8, !tbaa !857
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bo, ptr %i.w, align 8, !tbaa !375
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.d
  %i.bp = load ptr, ptr %i.r, align 16, !tbaa !369 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.bp, %.critedge ] ; 6 uses
  %i.bq = load ptr, ptr %.06.i.i.i, align 8, !tbaa !370 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !103 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !103 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #24
  %.not.i.i.i31 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i31, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !371

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %.critedge
  %i.cd = load ptr, ptr %i.o, align 16, !tbaa !350
  %i.ce = load i64, ptr %i.q, align 8, !tbaa !358
  %i.cf = shl i64 %i.ce, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.cf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %i.o, align 16, !tbaa !350 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.p
  br i1 %i.ch, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.ci = load i64, ptr %i.q, align 8, !tbaa !358
  %i.cj = shl i64 %i.ci, 3
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.h
  %i.ck = load ptr, ptr %i.x, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !375
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %sext = shl i64 %i.ct, 28
  %i.cu = ashr i64 %sext, 32
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %bb.b, label %._crit_edge, !llvm.loop !1227

.loopexit:                                        ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.c
  %.pn20 = phi { ptr, i32 } [ %i.ag, %bb.c ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn20

.critedge22:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.cw = load ptr, ptr %i.r, align 16, !tbaa !369 ; 2 uses
  %.not5.i.i.i32 = icmp eq ptr %i.cw, null
  br i1 %.not5.i.i.i32, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i40, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %.critedge22, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38
  %.06.i.i.i34 = phi ptr [ %i.cx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38 ], [ %i.cw, %.critedge22 ] ; 6 uses
  %i.cx = load ptr, ptr %.06.i.i.i34, align 8, !tbaa !370 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i34, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.06.i.i.i34, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !103 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i34, i64 56 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i33
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !14
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !103 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i34, i64 24 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i36
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !14
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #24
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38
end_hunk_5
