inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow3ipc8internal18WriteSchemaMessageERKNS_6SchemaERKNS0_21DictionaryFieldMapperERKNS0_15IpcWriteOptionsEPSt10shared_ptrINS_6BufferEE:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 8 uses
  %.not.i.i27 = icmp eq ptr %i.br, null
  br i1 %.not.i.i27, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bs, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !17
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
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
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_118SchemaToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_6SchemaERKNS0_21DictionaryFieldMapperEPNS4_6OffsetIN3org6apache5arrow7flatbuf6SchemaEEE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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
  %10 = icmp ult i64 %i.ad, %i.ac
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %11 = select i1 %10, i64 2305843009213693951, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = shl nuw nsw i64 %11, 2
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #23
          to label %.noexc54 unwind label %.loopexit ; 8 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa
  %i.ai = load i32, ptr %7, align 4, !tbaa !3
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !3
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.076.0, %.sroa.13.0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc54
  %i.aj = ptrtoaddr ptr %i.ag to i64
  %i.ak = add i64 %i.y, -4
  %i.al = sub i64 %i.ak, %i.z                     ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 28
  %i.ao = sub i64 %i.aj, %i.z
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.076.0, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
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
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
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
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %.noexc54 ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.076.0, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0, i64 noundef %i.aa) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %11
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, %bb.h
  %.sroa.13.5 = phi ptr [ %i.az, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.13.0, %bb.h ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.9.0, %bb.h ]
  %.sroa.076.5 = phi ptr [ %i.ag, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i ], [ %.sroa.076.0, %bb.h ]
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
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !358
  %i.cq = shl i64 %i.cp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.co, i8 0, i64 %i.cq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !350 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.g
  br i1 %i.cs, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit74, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i71
  %i.ct = load i64, ptr %i.h, align 8, !tbaa !358
  %i.cu = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit74

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit74: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i71, %bb.p
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i55 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit74
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !375
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cz) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ae

.critedge48:                                      ; preds = %bb.c
  %i.da = icmp eq ptr %.sroa.076.0, %.sroa.9.0
  %spec.select.i.i = select i1 %i.da, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataINS0_6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EEEPKT_RKSt6vectorISA_T0_EE1t, ptr %.sroa.076.0
  %i.db = ptrtoint ptr %.sroa.9.0 to i64
  %i.dc = ptrtoint ptr %.sroa.076.0 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf5FieldEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %spec.select.i.i, i64 noundef %i.de)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit unwind label %bb.ab

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit: ; preds = %.critedge48
  %i.dg = invoke noundef i32 @_ZNK5arrow6Schema10endiannessEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = zext i1 %i.dh to i16
  %i.dj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %.val = load ptr, ptr %i.dj, align 8, !tbaa !377 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(48) %.val, ptr noundef %5)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal23WriteRecordBatchMessageEllRKSt10shared_ptrIKNS_16KeyValueMetadataEERKSt6vectorINS1_13FieldMetadataESaIS9_EERKS8_INS1_14BufferMetadataESaISE_EERKS8_IlSaIlEERKNS0_15IpcWriteOptionsEPS2_INS_6BufferEE:bb.a
  br i1 %i.as, label %bb.k, label %thread-pre-split, !prof !21

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #22, !noalias !421
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.k
  %.pr = load ptr, ptr %12, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %.noexc
  %i.at = phi ptr [ %.pr, %thread-pre-split ], [ %i.z, %.noexc ] ; 2 uses
  %storemerge.i = phi ptr [ null, %thread-pre-split ], [ %i.y, %.noexc ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !22, !alias.scope !421
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !58

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i27 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i27, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ax, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !17
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !336
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22, !inline_history !336
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i28 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29

bb.r:                                             ; preds = %bb.p
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i30 = phi i32 [ %i.ba, %bb.q ], [ %i.bk, %bb.r ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i30, 1
  br i1 %i.bl, label %bb.s, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !21

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29, %bb.o, %bb.m
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !22  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !60

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %bb.l
  %i.bm = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %i.at, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !61, !range !72, !noundef !73
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.critedge

bb.u:                                             ; preds = %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #22
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn20 = phi { ptr, i32 } [ %i.br, %bb.v ], [ %i.bq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.x

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.x:                                             ; preds = %bb.w, %bb.b
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.w ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_115MakeRecordBatchERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEllRKSt6vectorINS1_13FieldMetadataESaIS9_EERKS8_INS1_14BufferMetadataESaISE_EERKS8_IlSaIlEERKNS0_15IpcWriteOptionsEPNS4_6OffsetIN3org6apache5arrow7flatbuf11RecordBatchEEE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %6, ptr noundef nonnull writeonly captures(none) %7) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !434, !noalias !431 ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !437, !noalias !431 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.h, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25, !noalias !431
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not48.i = icmp eq ptr %i.b, %i.c
  br i1 %.not48.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #23, !noalias !431 ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %i.l = phi ptr [ %i.af, %bb.h ], [ %i.c, %.lr.ph.preheader.i ] ; 2 uses
  %i.m = phi ptr [ %i.ag, %bb.h ], [ %i.b, %.lr.ph.preheader.i ]
  %.01770.i = phi i64 [ %i.ah, %bb.h ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.18.069.i = phi ptr [ %.sroa.18.1.ph.i, %bb.h ], [ %i.k, %.lr.ph.preheader.i ] ; 8 uses
  %.sroa.12.068.i = phi ptr [ %.sroa.12.1.ph.i, %bb.h ], [ %i.j, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.067.i = phi ptr [ %.sroa.0.1.ph.i, %bb.h ], [ %i.j, %.lr.ph.preheader.i ] ; 8 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.01770.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !438, !noalias !431
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(42) @.str.44)
          to label %_ZN5arrow6Status7InvalidIJRA42_KcEEES0_DpOT_.exit.i unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp.i:                             ; preds = %bb.g, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq ptr %.sroa.12.068.i, %.sroa.18.069.i
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !440, !noalias !431
  store <2 x i64> %i.q, ptr %.sroa.12.068.i, align 8, !tbaa !440, !noalias !431
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = ptrtoint ptr %.sroa.18.069.i to i64
  %i.s = ptrtoint ptr %.sroa.0.067.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp eq i64 %i.t, 9223372036854775792
  br i1 %i.u, label %bb.g, label %_ZNKSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !431

.noexc22.i:                                       ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.v = ashr exact i64 %i.t, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  %i.w = add nsw i64 %.sroa.speculated.i.i.i.i, %i.v ; 2 uses
  %11 = icmp ult i64 %i.w, %i.v
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 576460752303423487)
  %12 = select i1 %11, i64 576460752303423487, i64 %i.x ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %12, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %12, 4
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #23
          to label %.noexc23.i unwind label %.loopexit.i, !noalias !431 ; 5 uses

.noexc23.i:                                       ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t
  %i.ab = load <2 x i64>, ptr %i.n, align 8, !tbaa !440, !noalias !431
  store <2 x i64> %i.ab, ptr %i.aa, align 8, !tbaa !440, !noalias !431
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0.067.i, %.sroa.18.069.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc23.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %.noexc23.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.067.i, %.noexc23.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !441, !alias.scope !442, !noalias !431
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %.sroa.18.069.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !446

_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc23.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc23.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.067.i, i64 noundef %i.t) #24, !noalias !431
  %.pre81.pre.i = load ptr, ptr %3, align 8, !tbaa !437, !noalias !431
  %.pre.pre.i = load ptr, ptr %i.a, align 8, !tbaa !434, !noalias !431
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %12
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.e
  %i.af = phi ptr [ %i.l, %bb.e ], [ %.pre81.pre.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ag = phi ptr [ %i.m, %bb.e ], [ %.pre.pre.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.0.1.ph.i = phi ptr [ %.sroa.0.067.i, %bb.e ], [ %i.z, %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.12.0.pn.i = phi ptr [ %.sroa.12.068.i, %bb.e ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ]
  %.sroa.18.1.ph.i = phi ptr [ %.sroa.18.069.i, %bb.e ], [ %i.ae, %_ZNSt6vectorIN3org6apache5arrow7flatbuf9FieldNodeESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %.sroa.12.1.ph.i = getelementptr inbounds nuw i8, ptr %.sroa.12.0.pn.i, i64 16 ; 2 uses
  %i.ah = add nuw i64 %.01770.i, 1                ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24
  %.not18.i = icmp ult i64 %i.ah, %i.al
  br i1 %.not18.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !447

.critedge.i.loopexit:                             ; preds = %bb.h
  %i.am = ptrtoint ptr %.sroa.12.1.ph.i to i64
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ null, %bb.b ], [ %.sroa.0.1.ph.i, %.critedge.i.loopexit ] ; 4 uses
  %.sroa.12.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.am, %.critedge.i.loopexit ]
  %.sroa.18.0.lcssa.i = phi ptr [ null, %bb.b ], [ %.sroa.18.1.ph.i, %.critedge.i.loopexit ] ; 2 uses
  %i.an = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.ao = sub i64 %.sroa.12.0.lcssa.i, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf9FieldNodeETtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJPKT_EEEESF_m(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.sroa.0.0.lcssa.i, i64 noundef %i.ap)
          to label %bb.i unwind label %bb.j, !noalias !431

bb.i:                                             ; preds = %.critedge.i
  store ptr null, ptr %9, align 8, !tbaa !22, !alias.scope !448
  br label %_ZN5arrow6Status7InvalidIJRA42_KcEEES0_DpOT_.exit.i

bb.j:                                             ; preds = %.critedge.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZN5arrow6Status7InvalidIJRA42_KcEEES0_DpOT_.exit.i: ; preds = %bb.i, %bb.c
  %.sroa.083.0 = phi i32 [ %i.aq, %bb.i ], [ 0, %bb.c ]
  %.sroa.0.062.i = phi ptr [ %.sroa.0.0.lcssa.i, %bb.i ], [ %.sroa.0.067.i, %bb.c ] ; 3 uses
  %.sroa.18.052.i = phi ptr [ %.sroa.18.0.lcssa.i, %bb.i ], [ %.sroa.18.069.i, %bb.c ]
  %.not.i.i.i24.i = icmp eq ptr %.sroa.0.062.i, null
  br i1 %.not.i.i.i24.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA42_KcEEES0_DpOT_.exit.i
  %i.as = ptrtoint ptr %.sroa.18.052.i to i64
  %i.at = ptrtoint ptr %.sroa.0.062.i to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.062.i, i64 noundef %i.au) #24
  br label %_ZN5arrow6StatusD2Ev.exit

bb.l:                                             ; preds = %bb.j, %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.0.063.i = phi ptr [ %.sroa.0.0.lcssa.i, %bb.j ], [ %.sroa.0.067.i, %.loopexit.i ], [ %.sroa.0.067.i, %.loopexit.split-lp.i ] ; 3 uses
  %.sroa.18.053.i = phi ptr [ %.sroa.18.0.lcssa.i, %bb.j ], [ %.sroa.18.069.i, %.loopexit.i ], [ %.sroa.18.069.i, %.loopexit.split-lp.i ]
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i25.i = icmp eq ptr %.sroa.0.063.i, null
  br i1 %.not.i.i.i25.i, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = ptrtoint ptr %.sroa.18.053.i to i64
  %i.aw = ptrtoint ptr %.sroa.0.063.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.063.i, i64 noundef %i.ax) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.l, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %.pn.i, %bb.l ], [ %.pn.i, %bb.m ], [ %.pn.i51, %bb.u ], [ %.pn.i51, %bb.t ]
  resume { ptr, i32 } %common.resume.op

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA42_KcEEES0_DpOT_.exit.i, %bb.k
  %i.ay = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit43, label %.critedge

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !451, !noalias !454 ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !457, !noalias !454 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp ugt i64 %i.bf, 9223372036854775792
  br i1 %i.bg, label %.noexc.i67, label %bb.n

.noexc.i67:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit43
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25, !noalias !454
  unreachable

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit43
  %.not.i44 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i44, label %._crit_edge.i, label %.lr.ph.preheader.i45

.lr.ph.preheader.i45:                             ; preds = %bb.n
  %i.bh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #23, !noalias !454 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bf
  br label %.lr.ph.i46

._crit_edge.i.loopexit:                           ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i
  %i.bj = ptrtoint ptr %.sroa.12.2.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.n
  %.sroa.0.0.lcssa.i48 = phi ptr [ null, %bb.n ], [ %.sroa.0.3.i, %._crit_edge.i.loopexit ] ; 5 uses
  %.sroa.12.0.lcssa.i49 = phi i64 [ 0, %bb.n ], [ %i.bj, %._crit_edge.i.loopexit ]
  %.sroa.18.0.lcssa.i50 = phi ptr [ null, %bb.n ], [ %.sroa.18.3.i, %._crit_edge.i.loopexit ] ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.0.0.lcssa.i48 to i64 ; 2 uses
  %i.bl = sub i64 %.sroa.12.0.lcssa.i49, %i.bk
  %i.bm = ashr exact i64 %i.bl, 4
  %i.bn = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJPKT_EEEESF_m(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %.sroa.0.0.lcssa.i48, i64 noundef %i.bm)
          to label %bb.r unwind label %bb.s, !noalias !454

.lr.ph.i46:                                       ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i, %.lr.ph.preheader.i45
  %i.bo = phi ptr [ %i.cg, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ %i.bc, %.lr.ph.preheader.i45 ] ; 2 uses
  %i.bp = phi ptr [ %i.ch, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ %i.bb, %.lr.ph.preheader.i45 ]
  %.01248.i = phi i64 [ %i.ci, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ 0, %.lr.ph.preheader.i45 ] ; 2 uses
  %.sroa.18.047.i = phi ptr [ %.sroa.18.3.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ %i.bi, %.lr.ph.preheader.i45 ] ; 7 uses
  %.sroa.12.046.i = phi ptr [ %.sroa.12.2.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ %i.bh, %.lr.ph.preheader.i45 ] ; 3 uses
  %.sroa.0.045.i = phi ptr [ %.sroa.0.3.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i ], [ %i.bh, %.lr.ph.preheader.i45 ] ; 7 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.01248.i ; 2 uses
  %.not.i.i47 = icmp eq ptr %.sroa.12.046.i, %.sroa.18.047.i
  br i1 %.not.i.i47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i46
  %i.br = load <2 x i64>, ptr %i.bq, align 8, !tbaa !440, !noalias !454
  store <2 x i64> %i.br, ptr %.sroa.12.046.i, align 8, !tbaa !440, !noalias !454
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i

bb.p:                                             ; preds = %.lr.ph.i46
  %i.bs = ptrtoint ptr %.sroa.18.047.i to i64
  %i.bt = ptrtoint ptr %.sroa.0.045.i to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775792
  br i1 %i.bv, label %bb.q, label %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc15.i unwind label %.loopexit.split-lp.i65, !noalias !454

.noexc15.i:                                       ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bw = ashr exact i64 %i.bu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i52 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i.i52, %i.bw ; 2 uses
  %13 = icmp ult i64 %i.bx, %i.bw
  %i.by = call i64 @llvm.umin.i64(i64 %i.bx, i64 576460752303423487)
  %14 = select i1 %13, i64 576460752303423487, i64 %i.by ; 3 uses
  %.not.i.i.i.i53 = icmp ne i64 %14, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53)
  %i.bz = shl nuw nsw i64 %14, 4
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #23
          to label %.noexc16.i unwind label %.loopexit.i54, !noalias !454 ; 5 uses

.noexc16.i:                                       ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bu
  %i.cc = load <2 x i64>, ptr %i.bq, align 8, !tbaa !440, !noalias !454
  store <2 x i64> %i.cc, ptr %i.cb, align 8, !tbaa !440, !noalias !454
  %.not10.i.i.i.i.i.i56 = icmp eq ptr %.sroa.0.045.i, %.sroa.18.047.i
  br i1 %.not10.i.i.i.i.i.i56, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i57:                             ; preds = %.noexc16.i, %.lr.ph.i.i.i.i.i.i57
  %.012.i.i.i.i.i.i58 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i57 ], [ %i.ca, %.noexc16.i ] ; 2 uses
  %.0911.i.i.i.i.i.i59 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i57 ], [ %.sroa.0.045.i, %.noexc16.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !441, !alias.scope !458, !noalias !454
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i59, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i58, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i60 = icmp eq ptr %i.cd, %.sroa.18.047.i
  br i1 %.not.i.i.i.i.i.i60, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i57, !llvm.loop !462

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i57, %.noexc16.i
  %.0.lcssa.i.i.i.i.i.i61 = phi ptr [ %i.ca, %.noexc16.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i57 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.045.i, i64 noundef %i.bu) #24, !noalias !454
  %.pre56.pre.i = load ptr, ptr %4, align 8, !tbaa !457, !noalias !454
  %.pre.pre.i63 = load ptr, ptr %i.ba, align 8, !tbaa !451, !noalias !454
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %14
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12emplace_backIJRKlS9_EEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.o
  %i.cg = phi ptr [ %.pre56.pre.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bo, %bb.o ] ; 2 uses
  %i.ch = phi ptr [ %.pre.pre.i63, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.bp, %bb.o ] ; 2 uses
  %.sroa.0.3.i = phi ptr [ %i.ca, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0.045.i, %bb.o ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i61, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.12.046.i, %bb.o ]
  %.sroa.18.3.i = phi ptr [ %i.cf, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJRKlS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.18.047.i, %bb.o ] ; 2 uses
  %.sroa.12.2.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.i, i64 16 ; 2 uses
  %i.ci = add nuw i64 %.01248.i, 1                ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = ashr exact i64 %i.cl, 4
  %i.cn = icmp ult i64 %i.ci, %i.cm
  br i1 %i.cn, label %.lr.ph.i46, label %._crit_edge.i.loopexit, !llvm.loop !463

.loopexit.i54:                                    ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i55 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.i65:                           ; preds = %bb.q
  %lpad.loopexit.split-lp.i66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.r:                                             ; preds = %._crit_edge.i
  %.not.i.i.i17.i = icmp eq ptr %.sroa.0.0.lcssa.i48, null
  br i1 %.not.i.i.i17.i, label %_ZN5arrow6StatusD2Ev.exit73, label %_ZN5arrow6StatusD2Ev.exit69

bb.s:                                             ; preds = %._crit_edge.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit.split-lp.i65, %.loopexit.i54
  %.sroa.0.043.i = phi ptr [ %.sroa.0.0.lcssa.i48, %bb.s ], [ %.sroa.0.045.i, %.loopexit.i54 ], [ %.sroa.0.045.i, %.loopexit.split-lp.i65 ] ; 3 uses
  %.sroa.18.037.i = phi ptr [ %.sroa.18.0.lcssa.i50, %bb.s ], [ %.sroa.18.047.i, %.loopexit.i54 ], [ %.sroa.18.047.i, %.loopexit.split-lp.i65 ]
  %.pn.i51 = phi { ptr, i32 } [ %i.co, %bb.s ], [ %lpad.loopexit.i55, %.loopexit.i54 ], [ %lpad.loopexit.split-lp.i66, %.loopexit.split-lp.i65 ] ; 2 uses
  %.not.i.i.i18.i = icmp eq ptr %.sroa.0.043.i, null
  br i1 %.not.i.i.i18.i, label %common.resume, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = ptrtoint ptr %.sroa.18.037.i to i64
  %i.cq = ptrtoint ptr %.sroa.0.043.i to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.043.i, i64 noundef %i.cr) #24, !noalias !454
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %bb.r
  %i.cs = ptrtoint ptr %.sroa.18.0.lcssa.i50 to i64
  %i.ct = sub i64 %i.cs, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa.i48, i64 noundef %i.ct) #24, !noalias !454
  br label %_ZN5arrow6StatusD2Ev.exit73

_ZN5arrow6StatusD2Ev.exit73:                      ; preds = %bb.r, %_ZN5arrow6StatusD2Ev.exit69
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !464, !noalias !465 ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i74, label %_ZN5arrow6StatusD2Ev.exit76.thread, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit73
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !18, !noalias !465
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !465
  %i.cz = call noundef i32 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv), !noalias !465, !inline_history !468
  %i.da = icmp eq i32 %i.cz, 6
  br i1 %i.da, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !464, !noalias !465 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !18, !noalias !465
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !465
  %i.df = call noundef i32 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db), !noalias !465, !inline_history !468
  %i.dg = icmp eq i32 %i.df, 4
  br i1 %i.dg, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr %i.cu, align 8, !tbaa !464, !noalias !465 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !18, !noalias !465
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !465
  %i.dl = call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh), !noalias !465, !inline_history !469
  %i.dm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4util5Codec16GetCodecAsStringB5cxx11ENS_11Compression4typeE(i32 noundef %i.dl), !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !470
  call void @_ZN5arrow8internal12JoinToStringIJRA36_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(36) @.str.45, ptr noundef nonnull align 8 dereferenceable(32) %i.dm), !noalias !470
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %8, align 8, !tbaa !103, !noalias !470 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZN5arrow6StatusD2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.y
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !14, !noalias !470
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #24
  br label %_ZN5arrow6StatusD2Ev.exit76

bb.z:                                             ; preds = %bb.x
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %8, align 8, !tbaa !103, !noalias !470 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.z
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !14, !noalias !470
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !470
  br label %common.resume

.thread.i:                                        ; preds = %bb.w, %bb.v
  %.sink.i = phi i8 [ 0, %bb.v ], [ 1, %bb.w ]
  %i.dy = call i32 @_ZN3org6apache5arrow7flatbuf21CreateBodyCompressionERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_15CompressionTypeENS2_21BodyCompressionMethodE(ptr noundef nonnull align 8 dereferenceable(128) %1, i8 noundef signext %.sink.i, i8 noundef signext 0), !noalias !465
  br label %_ZN5arrow6StatusD2Ev.exit76.thread

_ZN5arrow6StatusD2Ev.exit76.thread:               ; preds = %_ZN5arrow6StatusD2Ev.exit73, %.thread.i
  %.sroa.081.0 = phi i32 [ 0, %_ZN5arrow6StatusD2Ev.exit73 ], [ %i.dy, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN5arrow6StatusD2Ev.exit80

_ZN5arrow6StatusD2Ev.exit76:                      ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !470
  %.pr84 = load ptr, ptr %10, align 8, !tbaa !22  ; 2 uses
  store ptr %.pr84, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.dz = icmp eq ptr %.pr84, null
  br i1 %i.dz, label %_ZN5arrow6StatusD2Ev.exit80, label %.critedge

_ZN5arrow6StatusD2Ev.exit80:                      ; preds = %_ZN5arrow6StatusD2Ev.exit76, %_ZN5arrow6StatusD2Ev.exit76.thread
  %.sroa.081.186 = phi i32 [ %.sroa.081.0, %_ZN5arrow6StatusD2Ev.exit76.thread ], [ 0, %_ZN5arrow6StatusD2Ev.exit76 ]
  %i.ea = load ptr, ptr %5, align 8, !tbaa !475   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !475 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit80
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ea to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3
  %i.ei = call i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIlTtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJT_EEEEPKS8_m(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %i.ea, i64 noundef %i.eh)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5arrow6StatusD2Ev.exit80
  %.sroa.0.0 = phi i32 [ 0, %_ZN5arrow6StatusD2Ev.exit80 ], [ %i.ei, %bb.aa ]
  %i.ej = call i32 @_ZN3org6apache5arrow7flatbuf17CreateRecordBatchERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6VectorIPKNS2_9FieldNodeEjEEEENS8_INS9_IPKNS2_6BufferEjEEEENS8_INS2_15BodyCompressionEEENS8_INS9_IljEEEE(ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, i32 %.sroa.083.0, i32 %i.bn, i32 %.sroa.081.186, i32 %.sroa.0.0)
  store i32 %i.ej, ptr %7, align 4, !tbaa !3
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !477
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit76, %bb.ab, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal18WriteTensorMessageERKNS_6TensorElRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.62") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow_vendored_private::flatbuffers::FlatBufferBuilderImpl", align 8 ; 32 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"struct.arrow_vendored_private::flatbuffers::Offset.66", align 4 ; 6 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %10 = alloca %"struct.org::apache::arrow::flatbuf::Buffer", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.22", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !293
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !296
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1024, ptr %i.c, align 8, !tbaa !297
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 2147483647, ptr %i.d, align 8, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 8, ptr %i.e, align 8, !tbaa !299
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !300
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 6 uses
  store i32 0, ptr %i.g, align 8, !tbaa !301
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !302
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !305
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 97
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc8internal18WriteTensorMessageERKNS_6TensorElRKNS0_15IpcWriteOptionsE:bb.a
  %.sroa.088.0.lcssa = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit62 ], [ %.sroa.088.1, %._crit_edge.loopexit ] ; 8 uses
  %i.co = ptrtoint ptr %.sroa.088.0.lcssa to i64  ; 2 uses
  %i.cp = sub i64 %.sroa.10.0.lcssa, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  %i.cr = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf9TensorDimEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %.sroa.088.0.lcssa, i64 noundef %i.cq)
          to label %bb.ap unwind label %bb.au

bb.z:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit ] ; 3 uses
  %.sroa.088.0111 = phi ptr [ null, %.lr.ph ], [ %.sroa.088.1, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit ] ; 11 uses
  %.sroa.10.0110 = phi ptr [ null, %.lr.ph ], [ %.sroa.10.1, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit ] ; 8 uses
  %.sroa.14.0109 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit ] ; 10 uses
  %i.cs = trunc nuw nsw i64 %indvars.iv to i32
  %i.ct = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Tensor8dim_nameB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %i.cs)
          to label %bb.aa unwind label %bb.ao     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !103
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !102
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
  %12 = icmp ult i64 %i.fp, %i.fo
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fp, i64 2305843009213693951)
  %13 = select i1 %12, i64 2305843009213693951, i64 %i.fq ; 3 uses
  %.not.i.i.i.i68 = icmp ne i64 %13, 0
  call void @llvm.assume(i1 %.not.i.i.i.i68)
  %i.fr = shl nuw nsw i64 %13, 2
  %i.fs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #23
          to label %.noexc71 unwind label %.loopexit ; 8 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fm
  store i32 %i.fj, ptr %i.ft, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.088.0111, %.sroa.10.0110
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i69.preheader

.lr.ph.i.i.i.i.i.i69.preheader:                   ; preds = %.noexc71
  %i.fu = ptrtoaddr ptr %i.fs to i64
  %i.fv = add i64 %i.fk, -4
  %i.fw = sub i64 %i.fv, %i.fl                    ; 2 uses
  %i.fx = lshr i64 %i.fw, 2
  %i.fy = add nuw nsw i64 %i.fx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fw, 28
  %i.fz = sub i64 %i.fu, %i.fl
  %diff.check = icmp ult i64 %i.fz, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i69.preheader154, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i69.preheader
  %n.vec = and i64 %i.fy, 9223372036854775800     ; 3 uses
  %i.ga = shl i64 %n.vec, 2                       ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fs, i64 %i.ga  ; 2 uses
  %i.gc = getelementptr i8, ptr %.sroa.088.0111, i64 %i.ga
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %i.gd ; 2 uses
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
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i69.preheader ], [ %i.gb, %middle.block ]
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
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fs, %.noexc71 ], [ %i.gb, %middle.block ], [ %i.gj, %.lr.ph.i.i.i.i.i.i69 ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.088.0111, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.088.0111, i64 noundef %i.fm) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %13
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ak
  %.sroa.14.1 = phi ptr [ %i.gk, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.14.0109, %bb.ak ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.10.0110, %bb.ak ]
  %.sroa.088.1 = phi ptr [ %i.fs, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.088.0111, %bb.ak ] ; 2 uses
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

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit78: ; preds = %bb.bb, %bb.ba, %bb.y
  %.pn44.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.y ], [ %.pn44.pn, %bb.ba ], [ %.pn44.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit78, %bb.x
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %.pn44.pn.pn, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit78 ], [ %i.ca, %bb.x ]
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn44.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122TensorTypeToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_8DataTypeEPN3org6apache5arrow7flatbuf4TypeEPNS4_6OffsetIvEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %3, ptr noundef nonnull writeonly captures(none) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162
  switch i32 %i.b, label %bb.aw [
    i32 2, label %bb.b
    i32 3, label %bb.h
    i32 4, label %bb.m
    i32 5, label %bb.s
    i32 6, label %bb.x
    i32 7, label %bb.ad
    i32 8, label %bb.ai
    i32 9, label %bb.ao
    i32 10, label %bb.at
    i32 11, label %bb.au
    i32 12, label %bb.av
  ]

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %3, align 1, !tbaa !506
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.c, align 8, !tbaa !305
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !301  ; 3 uses
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIiEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %1, i16 noundef zeroext 4, i32 noundef 8, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.g = load i8, ptr %i.f, align 8, !range !72
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN3org6apache5arrow7flatbuf9CreateIntERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEib.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !307
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  store i64 1, ptr %i.i, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %.pre4.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !491
  %i.n = ptrtoint ptr %.pre4.i.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE:bb.a
  %i.bf = ptrtoint ptr %.sroa.9.0.lcssa.i to i64
  %i.bg = ptrtoint ptr %.sroa.0121.0.lcssa.i to i64 ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  %i.bj = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf9TensorDimEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef %spec.select.i.i.i, i64 noundef %i.bi)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i unwind label %bb.fq, !noalias !524

bb.l:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i ] ; 3 uses
  %.sroa.0121.0179.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.0121.1.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i ] ; 11 uses
  %.sroa.13.0178.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i ] ; 8 uses
  %.sroa.9.0177.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.9.1.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i ] ; 3 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow12SparseTensor8dim_nameB5cxx11Ei(ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %i.bk)
          to label %bb.m unwind label %bb.aa, !noalias !524 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !103, !noalias !524
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !102, !noalias !524
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
  %21 = icmp ult i64 %i.eh, %i.eg
  %i.ei = call i64 @llvm.umin.i64(i64 %i.eh, i64 2305843009213693951)
  %22 = select i1 %21, i64 2305843009213693951, i64 %i.ei ; 3 uses
  %.not.i.i.i.i69.i = icmp ne i64 %22, 0
  call void @llvm.assume(i1 %.not.i.i.i.i69.i)
  %i.ej = shl nuw nsw i64 %22, 2
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #23
          to label %.noexc72.i unwind label %.loopexit.i, !noalias !524 ; 8 uses

.noexc72.i:                                       ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ee
  store i32 %i.eb, ptr %i.el, align 4, !tbaa !3, !noalias !524
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0121.0179.i, %.sroa.13.0178.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i70.i.preheader

.lr.ph.i.i.i.i.i.i70.i.preheader:                 ; preds = %.noexc72.i
  %i.em = ptrtoaddr ptr %i.ek to i64
  %i.en = add i64 %i.ec, -4
  %i.eo = sub i64 %i.en, %i.ed                    ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eo, 28
  %i.er = sub i64 %i.em, %i.ed
  %diff.check = icmp ult i64 %i.er, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i70.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i70.i.preheader
  %n.vec = and i64 %i.eq, 9223372036854775800     ; 3 uses
  %i.es = shl i64 %n.vec, 2                       ; 2 uses
  %i.et = getelementptr i8, ptr %i.ek, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.0121.0179.i, i64 %i.es
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ek, i64 %i.ev ; 2 uses
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
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i70.i.preheader ], [ %i.et, %middle.block ]
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
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ek, %.noexc72.i ], [ %i.et, %middle.block ], [ %i.fb, %.lr.ph.i.i.i.i.i.i70.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0121.0179.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0179.i, i64 noundef %i.ee) #24, !noalias !524
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i.i
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %22
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE9push_backEOS8_.exit.i: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i, %bb.w
  %.0.lcssa.i.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0177.i, %bb.w ]
  %.sroa.13.1.i = phi ptr [ %i.fc, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0178.i, %bb.w ] ; 2 uses
  %.sroa.0121.1.i = phi ptr [ %i.ek, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i ], [ %.sroa.0121.0179.i, %bb.w ] ; 2 uses
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
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !490, !noalias !555 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !488, !noalias !555
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = ashr exact i64 %i.he, 3
  %i.hg = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIlTtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJT_EEEEPKS8_m(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef %i.gz, i64 noundef %i.hf)
          to label %.noexc82.i unwind label %bb.fr, !noalias !524

.noexc82.i:                                       ; preds = %.noexc81.i
  %i.hh = load ptr, ptr %3, align 8, !tbaa !457, !noalias !555
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !555
  %i.hi = load <2 x i64>, ptr %i.hh, align 8, !tbaa !440, !noalias !555
  store <2 x i64> %i.hi, ptr %9, align 16, !tbaa !440, !noalias !555
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !563, !range !72, !noalias !555, !noundef !73
  %i.hl = trunc nuw i8 %i.hk to i1
  %i.hm = invoke i32 @_ZN3org6apache5arrow7flatbuf26CreateSparseTensorIndexCOOERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS2_3IntEEENS8_INS4_6VectorIljEEEEPKNS2_6BufferEb(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 %i.gw, i32 %i.hg, ptr noundef nonnull %9, i1 noundef zeroext %i.hl)
          to label %.noexc83.i unwind label %bb.fr, !noalias !524

.noexc83.i:                                       ; preds = %.noexc82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !555
  br label %_ZN5arrow6StatusD2Ev.exit108.thread.i

bb.am:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !552, !noalias !567 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !7, !noalias !570 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !13, !noalias !570 ; 8 uses
  %.not.i.i.i.i.i60.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i60.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 7 uses
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !570
  %.not.i.i.i.i.i.i61.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i.i.i.i61.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !3, !noalias !570
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.ht, align 4, !tbaa !3, !noalias !570
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.hx = atomicrmw volatile add ptr %i.ht, i32 1 acq_rel, align 4, !noalias !570 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hy = load atomic i64, ptr %i.ht acquire, align 8, !noalias !567 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.ht, align 8, !tbaa !15, !noalias !567
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !17, !noalias !567
  %i.ic = load ptr, ptr %i.hs, align 8, !tbaa !18, !noalias !567
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !noalias !567
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE:bb.a
  %i.qt = icmp eq ptr %i.qq, %i.qs
  br i1 %i.qt, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i, %.noexc105.i
  %.sroa.1450.0.lcssa.i.i.i = phi ptr [ null, %.noexc105.i ], [ %.sroa.1450.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ] ; 3 uses
  %.sroa.947.0.lcssa.i.i.i = phi ptr [ null, %.noexc105.i ], [ %.sroa.947.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ] ; 2 uses
  %.sroa.043.0.lcssa.i.i.i = phi ptr [ null, %.noexc105.i ], [ %.sroa.043.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ] ; 7 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %.noexc105.i ], [ %i.tr, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ]
  %i.qu = load ptr, ptr %i.ox, align 8, !tbaa !600, !noalias !587 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !600, !noalias !587 ; 2 uses
  %i.qx = icmp eq ptr %i.qu, %i.qw
  br i1 %i.qx, label %._crit_edge125.i.i.i, label %.lr.ph124.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc105.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i
  %.0114.i.i.i = phi i64 [ %i.tr, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ], [ 0, %.noexc105.i ] ; 3 uses
  %.sroa.043.0113.i.i.i = phi ptr [ %.sroa.043.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ], [ null, %.noexc105.i ] ; 8 uses
  %.sroa.947.0112.i.i.i = phi ptr [ %.sroa.947.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ], [ null, %.noexc105.i ] ; 9 uses
  %.sroa.1450.0111.i.i.i = phi ptr [ %.sroa.1450.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ], [ null, %.noexc105.i ] ; 2 uses
  %.sroa.031.0110.i.i.i = phi ptr [ %i.ts, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i ], [ %i.qq, %.noexc105.i ] ; 3 uses
  %i.qy = load ptr, ptr %.sroa.031.0110.i.i.i, align 8, !tbaa !552, !noalias !587 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !601, !noalias !602 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !13, !noalias !602 ; 8 uses
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i.i79.i.i.i, label %_ZNK5arrow6Tensor4dataEv.exit.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph.i.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8 ; 7 uses
  %i.re = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !602
  %.not.i.i.i.i.i80.i.i.i = icmp eq i8 %i.re, 0
  br i1 %.not.i.i.i.i.i80.i.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rf = load i32, ptr %i.rd, align 4, !tbaa !3, !noalias !602
  %i.rg = add nsw i32 %i.rf, 1
  store i32 %i.rg, ptr %i.rd, align 4, !tbaa !3, !noalias !602
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.rh = atomicrmw volatile add ptr %i.rd, i32 1 acq_rel, align 4, !noalias !602 ; 0 uses
  br label %bb.cw

_ZNK5arrow6Tensor4dataEv.exit.i.i.i:              ; preds = %.lr.ph.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !605, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !605, !noalias !587 ; 3 uses
  %i.rm = load atomic i64, ptr %i.rd acquire, align 8, !noalias !587 ; 2 uses
  %i.rn = icmp eq i64 %i.rm, 4294967297
  %i.ro = trunc i64 %i.rm to i32                  ; 2 uses
  br i1 %i.rn, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.rd, align 8, !tbaa !15, !noalias !587
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rc, i64 12
  store i32 0, ptr %i.rp, align 4, !tbaa !17, !noalias !587
  %i.rq = load ptr, ptr %i.rc, align 8, !tbaa !18, !noalias !587
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !587
  call void %i.rs(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #22, !noalias !587, !inline_history !606
  %i.rt = load ptr, ptr %i.rc, align 8, !tbaa !18, !noalias !587
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.rv = load ptr, ptr %i.ru, align 8, !noalias !587
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #22, !noalias !587, !inline_history !606
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.rw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !587
  %.not.i.i.i82.i.i.i = icmp eq i8 %i.rw, 0
  br i1 %.not.i.i.i82.i.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rx = add nsw i32 %i.ro, -1
  store i32 %i.rx, ptr %i.rd, align 8, !tbaa !3, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.ry = atomicrmw volatile add ptr %i.rd, i32 -1 acq_rel, align 4, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i84.i.i.i = phi i32 [ %i.ro, %bb.cz ], [ %i.ry, %bb.da ]
  %i.rz = icmp eq i32 %.0.i.i.i.i84.i.i.i, 1
  br i1 %i.rz, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !21

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rc) #22, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i, %bb.cx, %_ZNK5arrow6Tensor4dataEv.exit.i.i.i
  %.pn.i.i.i = phi i64 [ %i.rj, %_ZNK5arrow6Tensor4dataEv.exit.i.i.i ], [ %i.rl, %bb.cx ], [ %i.rl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83.i.i.i ], [ %i.rl, %bb.db ]
  %i.sa = sdiv i64 %.pn.i.i.i, %i.qk              ; 2 uses
  %i.sb = load ptr, ptr %.sroa.031.0110.i.i.i, align 8, !tbaa !552, !noalias !587 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !601, !noalias !607 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sb, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !13, !noalias !607 ; 8 uses
  %.not.i.i.i.i85.i.i.i = icmp eq ptr %i.sf, null
  br i1 %.not.i.i.i.i85.i.i.i, label %_ZNK5arrow6Tensor4dataEv.exit87.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8 ; 7 uses
  %i.sh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !607
  %.not.i.i.i.i.i86.i.i.i = icmp eq i8 %i.sh, 0
  br i1 %.not.i.i.i.i.i86.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.si = load i32, ptr %i.sg, align 4, !tbaa !3, !noalias !607
  %i.sj = add nsw i32 %i.si, 1
  store i32 %i.sj, ptr %i.sg, align 4, !tbaa !3, !noalias !607
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.sk = atomicrmw volatile add ptr %i.sg, i32 1 acq_rel, align 4, !noalias !607 ; 0 uses
  br label %bb.df

_ZNK5arrow6Tensor4dataEv.exit87.i.i.i:            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !605, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !605, !noalias !587 ; 3 uses
  %i.sp = load atomic i64, ptr %i.sg acquire, align 8, !noalias !587 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  store i32 0, ptr %i.sg, align 8, !tbaa !15, !noalias !587
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !17, !noalias !587
  %i.st = load ptr, ptr %i.sf, align 8, !tbaa !18, !noalias !587
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !noalias !587
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sf) #22, !noalias !587, !inline_history !606
  %i.sw = load ptr, ptr %i.sf, align 8, !tbaa !18, !noalias !587
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8, !noalias !587
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sf) #22, !noalias !587, !inline_history !606
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !587
  %.not.i.i.i89.i.i.i = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i89.i.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.sg, align 8, !tbaa !3, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.tb = atomicrmw volatile add ptr %i.sg, i32 -1 acq_rel, align 4, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i: ; preds = %bb.dj, %bb.di
  %.0.i.i.i.i91.i.i.i = phi i32 [ %i.sr, %bb.di ], [ %i.tb, %bb.dj ]
  %i.tc = icmp eq i32 %.0.i.i.i.i91.i.i.i, 1
  br i1 %i.tc, label %bb.dk, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i, !prof !21

bb.dk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sf) #22, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i: ; preds = %bb.dk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i, %bb.dg, %_ZNK5arrow6Tensor4dataEv.exit87.i.i.i
  %.in.in.in.i.i.i = phi i64 [ %i.sm, %_ZNK5arrow6Tensor4dataEv.exit87.i.i.i ], [ %i.so, %bb.dg ], [ %i.so, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90.i.i.i ], [ %i.so, %bb.dk ]
  %.in.in.i.i.i = add nsw i64 %.in.in.in.i.i.i, 7
  %.in.i.i.i = sdiv i64 %.in.in.i.i.i, 8
  %i.td = shl nsw i64 %.in.i.i.i, 3
  %.not.i.i93.i.i.i = icmp eq ptr %.sroa.947.0112.i.i.i, %.sroa.1450.0111.i.i.i
  br i1 %.not.i.i93.i.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i
  store i64 %.0114.i.i.i, ptr %.sroa.947.0112.i.i.i, align 8, !tbaa !440, !noalias !587
  %.sroa.623.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.947.0112.i.i.i, i64 8
  store i64 %i.sa, ptr %.sroa.623.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i

bb.dm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92.i.i.i
  %i.te = ptrtoint ptr %.sroa.947.0112.i.i.i to i64
  %i.tf = ptrtoint ptr %.sroa.043.0113.i.i.i to i64
  %i.tg = sub i64 %i.te, %i.tf                    ; 4 uses
  %i.th = icmp eq i64 %i.tg, 9223372036854775792
  br i1 %i.th, label %bb.dn, label %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc.i.i.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i, !noalias !587

.noexc.i.i.i:                                     ; preds = %bb.dn
  unreachable

_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.dm
  %i.ti = ashr exact i64 %i.tg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ti, i64 1)
  %i.tj = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ti ; 2 uses
  %23 = icmp ult i64 %i.tj, %i.ti
  %i.tk = call i64 @llvm.umin.i64(i64 %i.tj, i64 576460752303423487)
  %24 = select i1 %23, i64 576460752303423487, i64 %i.tk ; 3 uses
  %.not.i.i.i.i94.i.i.i = icmp ne i64 %24, 0
  call void @llvm.assume(i1 %.not.i.i.i.i94.i.i.i)
  %i.tl = shl nuw nsw i64 %24, 4
  %i.tm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tl) #23
          to label %.noexc95.i.i.i unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i, !noalias !587 ; 5 uses

.noexc95.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tg ; 2 uses
  store i64 %.0114.i.i.i, ptr %i.tn, align 8, !tbaa !440, !noalias !587
  %.sroa.623.0..sroa_idx24.i.i.i = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  store i64 %i.sa, ptr %.sroa.623.0..sroa_idx24.i.i.i, align 8, !tbaa !440, !noalias !587
  %.not10.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.043.0113.i.i.i, %.sroa.947.0112.i.i.i
  br i1 %.not10.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc95.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.tm, %.noexc95.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i = phi ptr [ %i.to, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.043.0113.i.i.i, %.noexc95.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !441, !alias.scope !610, !noalias !587
  %i.to = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.to, %.sroa.947.0112.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !462

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc95.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.tm, %.noexc95.i.i.i ], [ %i.tp, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %.sroa.043.0113.i.i.i, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.0113.i.i.i, i64 noundef %i.tg) #24, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.do, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i.i.i
  %i.tq = getelementptr inbounds nuw [16 x i8], ptr %i.tm, i64 %24
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit.i.i.i: ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.dl
  %.sroa.1450.1.i.i.i = phi ptr [ %i.tq, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.1450.0111.i.i.i, %bb.dl ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.947.0112.i.i.i, %bb.dl ]
  %.sroa.043.1.i.i.i = phi ptr [ %i.tm, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.043.0113.i.i.i, %bb.dl ] ; 2 uses
  %.sroa.947.1.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn.i.i.i, i64 16 ; 2 uses
  %i.tr = add nsw i64 %i.td, %.0114.i.i.i         ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.031.0110.i.i.i, i64 16 ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.qs
  br i1 %i.tt, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i: ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit70.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i: ; preds = %bb.dn
  %lpad.loopexit.split-lp71.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i

._crit_edge125.i.i.i:                             ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i, %._crit_edge.i.i.i
  %.sroa.1440.0.lcssa.i.i.i = phi ptr [ null, %._crit_edge.i.i.i ], [ %.sroa.1440.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ] ; 5 uses
  %.sroa.9.0.lcssa.i.i.i = phi ptr [ null, %._crit_edge.i.i.i ], [ %.sroa.9.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ] ; 2 uses
  %.sroa.034.0.lcssa.i.i.i = phi ptr [ null, %._crit_edge.i.i.i ], [ %.sroa.034.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ] ; 9 uses
  %i.tu = icmp eq ptr %.sroa.034.0.lcssa.i.i.i, %.sroa.9.0.lcssa.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.tu, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataIN3org6apache5arrow7flatbuf6BufferESaIS6_EEEPKT_RKSt6vectorIS8_T0_EE1t, ptr %.sroa.034.0.lcssa.i.i.i
  %i.tv = ptrtoint ptr %.sroa.9.0.lcssa.i.i.i to i64
  %i.tw = ptrtoint ptr %.sroa.034.0.lcssa.i.i.i to i64 ; 2 uses
  %i.tx = sub i64 %i.tv, %i.tw
  %i.ty = ashr exact i64 %i.tx, 4
  %i.tz = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJPKT_EEEESF_m(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef %spec.select.i.i.i.i.i, i64 noundef %i.ty)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit.i.i.i unwind label %bb.el, !noalias !587

.lr.ph124.i.i.i:                                  ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i
  %.1122.i.i.i = phi i64 [ %i.wt, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.sroa.034.0121.i.i.i = phi ptr [ %.sroa.034.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 8 uses
  %.sroa.9.0120.i.i.i = phi ptr [ %.sroa.9.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 9 uses
  %.sroa.1440.0119.i.i.i = phi ptr [ %.sroa.1440.1.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ], [ null, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.018.0118.i.i.i = phi ptr [ %i.wu, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i ], [ %i.qu, %._crit_edge.i.i.i ] ; 3 uses
  %i.ua = load ptr, ptr %.sroa.018.0118.i.i.i, align 8, !tbaa !552, !noalias !587 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 24
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !601, !noalias !614 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 32
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !13, !noalias !614 ; 8 uses
  %.not.i.i.i.i97.i.i.i = icmp eq ptr %i.ue, null
  br i1 %.not.i.i.i.i97.i.i.i, label %_ZNK5arrow6Tensor4dataEv.exit99.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph124.i.i.i
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 8 ; 7 uses
  %i.ug = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !614
  %.not.i.i.i.i.i98.i.i.i = icmp eq i8 %i.ug, 0
  br i1 %.not.i.i.i.i.i98.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.uh = load i32, ptr %i.uf, align 4, !tbaa !3, !noalias !614
  %i.ui = add nsw i32 %i.uh, 1
  store i32 %i.ui, ptr %i.uf, align 4, !tbaa !3, !noalias !614
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.uj = atomicrmw volatile add ptr %i.uf, i32 1 acq_rel, align 4, !noalias !614 ; 0 uses
  br label %bb.ds

_ZNK5arrow6Tensor4dataEv.exit99.i.i.i:            ; preds = %.lr.ph124.i.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !605, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.um = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.un = load i64, ptr %i.um, align 8, !tbaa !605, !noalias !587 ; 3 uses
  %i.uo = load atomic i64, ptr %i.uf acquire, align 8, !noalias !587 ; 2 uses
  %i.up = icmp eq i64 %i.uo, 4294967297
  %i.uq = trunc i64 %i.uo to i32                  ; 2 uses
  br i1 %i.up, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.uf, align 8, !tbaa !15, !noalias !587
  %i.ur = getelementptr inbounds nuw i8, ptr %i.ue, i64 12
  store i32 0, ptr %i.ur, align 4, !tbaa !17, !noalias !587
  %i.us = load ptr, ptr %i.ue, align 8, !tbaa !18, !noalias !587
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !587
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(16) %i.ue) #22, !noalias !587, !inline_history !606
  %i.uv = load ptr, ptr %i.ue, align 8, !tbaa !18, !noalias !587
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !noalias !587
  call void %i.ux(ptr noundef nonnull align 8 dereferenceable(16) %i.ue) #22, !noalias !587, !inline_history !606
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.uy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !587
  %.not.i.i.i101.i.i.i = icmp eq i8 %i.uy, 0
  br i1 %.not.i.i.i101.i.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.uz = add nsw i32 %i.uq, -1
  store i32 %i.uz, ptr %i.uf, align 8, !tbaa !3, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i

bb.dw:                                            ; preds = %bb.du
  %i.va = atomicrmw volatile add ptr %i.uf, i32 -1 acq_rel, align 4, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i: ; preds = %bb.dw, %bb.dv
  %.0.i.i.i.i103.i.i.i = phi i32 [ %i.uq, %bb.dv ], [ %i.va, %bb.dw ]
  %i.vb = icmp eq i32 %.0.i.i.i.i103.i.i.i, 1
  br i1 %i.vb, label %bb.dx, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i, !prof !21

bb.dx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ue) #22, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i: ; preds = %bb.dx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i, %bb.dt, %_ZNK5arrow6Tensor4dataEv.exit99.i.i.i
  %.pn62.i.i.i = phi i64 [ %i.ul, %_ZNK5arrow6Tensor4dataEv.exit99.i.i.i ], [ %i.un, %bb.dt ], [ %i.un, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102.i.i.i ], [ %i.un, %bb.dx ]
  %i.vc = sdiv i64 %.pn62.i.i.i, %i.qp            ; 2 uses
  %i.vd = load ptr, ptr %.sroa.018.0118.i.i.i, align 8, !tbaa !552, !noalias !587 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !601, !noalias !617 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !13, !noalias !617 ; 8 uses
  %.not.i.i.i.i105.i.i.i = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i.i105.i.i.i, label %_ZNK5arrow6Tensor4dataEv.exit107.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8 ; 7 uses
  %i.vj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !617
  %.not.i.i.i.i.i106.i.i.i = icmp eq i8 %i.vj, 0
  br i1 %.not.i.i.i.i.i106.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vk = load i32, ptr %i.vi, align 4, !tbaa !3, !noalias !617
  %i.vl = add nsw i32 %i.vk, 1
  store i32 %i.vl, ptr %i.vi, align 4, !tbaa !3, !noalias !617
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  %i.vm = atomicrmw volatile add ptr %i.vi, i32 1 acq_rel, align 4, !noalias !617 ; 0 uses
  br label %bb.eb

_ZNK5arrow6Tensor4dataEv.exit107.i.i.i:           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vo = load i64, ptr %i.vn, align 8, !tbaa !605, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !605, !noalias !587 ; 3 uses
  %i.vr = load atomic i64, ptr %i.vi acquire, align 8, !noalias !587 ; 2 uses
  %i.vs = icmp eq i64 %i.vr, 4294967297
  %i.vt = trunc i64 %i.vr to i32                  ; 2 uses
  br i1 %i.vs, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  store i32 0, ptr %i.vi, align 8, !tbaa !15, !noalias !587
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vh, i64 12
  store i32 0, ptr %i.vu, align 4, !tbaa !17, !noalias !587
  %i.vv = load ptr, ptr %i.vh, align 8, !tbaa !18, !noalias !587
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  %i.vx = load ptr, ptr %i.vw, align 8, !noalias !587
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(16) %i.vh) #22, !noalias !587, !inline_history !606
  %i.vy = load ptr, ptr %i.vh, align 8, !tbaa !18, !noalias !587
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !noalias !587
  call void %i.wa(ptr noundef nonnull align 8 dereferenceable(16) %i.vh) #22, !noalias !587, !inline_history !606
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.wb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !587
  %.not.i.i.i109.i.i.i = icmp eq i8 %i.wb, 0
  br i1 %.not.i.i.i109.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.wc = add nsw i32 %i.vt, -1
  store i32 %i.wc, ptr %i.vi, align 8, !tbaa !3, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.wd = atomicrmw volatile add ptr %i.vi, i32 -1 acq_rel, align 4, !noalias !587
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i: ; preds = %bb.ef, %bb.ee
  %.0.i.i.i.i111.i.i.i = phi i32 [ %i.vt, %bb.ee ], [ %i.wd, %bb.ef ]
  %i.we = icmp eq i32 %.0.i.i.i.i111.i.i.i, 1
  br i1 %i.we, label %bb.eg, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i, !prof !21

bb.eg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vh) #22, !noalias !587
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i: ; preds = %bb.eg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i, %bb.ec, %_ZNK5arrow6Tensor4dataEv.exit107.i.i.i
  %.in63.in.in.i.i.i = phi i64 [ %i.vo, %_ZNK5arrow6Tensor4dataEv.exit107.i.i.i ], [ %i.vq, %bb.ec ], [ %i.vq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i110.i.i.i ], [ %i.vq, %bb.eg ]
  %.in63.in.i.i.i = add nsw i64 %.in63.in.in.i.i.i, 7
  %.in63.i.i.i = sdiv i64 %.in63.in.i.i.i, 8
  %i.wf = shl nsw i64 %.in63.i.i.i, 3
  %.not.i.i113.i.i.i = icmp eq ptr %.sroa.9.0120.i.i.i, %.sroa.1440.0119.i.i.i
  br i1 %.not.i.i113.i.i.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i
  store i64 %.1122.i.i.i, ptr %.sroa.9.0120.i.i.i, align 8, !tbaa !440, !noalias !587
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9.0120.i.i.i, i64 8
  store i64 %i.vc, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i

bb.ei:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i.i.i
  %i.wg = ptrtoint ptr %.sroa.9.0120.i.i.i to i64
  %i.wh = ptrtoint ptr %.sroa.034.0121.i.i.i to i64
  %i.wi = sub i64 %i.wg, %i.wh                    ; 4 uses
  %i.wj = icmp eq i64 %i.wi, 9223372036854775792
  br i1 %i.wj, label %bb.ej, label %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i114.i.i.i

bb.ej:                                            ; preds = %bb.ei
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc126.i.i.i unwind label %.loopexit.split-lp66.i.i.i, !noalias !587

.noexc126.i.i.i:                                  ; preds = %bb.ej
  unreachable

_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i114.i.i.i: ; preds = %bb.ei
  %i.wk = ashr exact i64 %i.wi, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i115.i.i.i = call i64 @llvm.umax.i64(i64 %i.wk, i64 1)
  %i.wl = add nsw i64 %.sroa.speculated.i.i.i.i115.i.i.i, %i.wk ; 2 uses
  %25 = icmp ult i64 %i.wl, %i.wk
  %i.wm = call i64 @llvm.umin.i64(i64 %i.wl, i64 576460752303423487)
  %26 = select i1 %25, i64 576460752303423487, i64 %i.wm ; 3 uses
  %.not.i.i.i.i116.i.i.i = icmp ne i64 %26, 0
  call void @llvm.assume(i1 %.not.i.i.i.i116.i.i.i)
  %i.wn = shl nuw nsw i64 %26, 4
  %i.wo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #23
          to label %.noexc127.i.i.i unwind label %.loopexit65.i.i.i, !noalias !587 ; 5 uses

.noexc127.i.i.i:                                  ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i114.i.i.i
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wi ; 2 uses
  store i64 %.1122.i.i.i, ptr %i.wp, align 8, !tbaa !440, !noalias !587
  %.sroa.6.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i64 %i.vc, ptr %.sroa.6.0..sroa_idx12.i.i.i, align 8, !tbaa !440, !noalias !587
  %.not10.i.i.i.i.i.i117.i.i.i = icmp eq ptr %.sroa.034.0121.i.i.i, %.sroa.9.0120.i.i.i
  br i1 %.not10.i.i.i.i.i.i117.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i122.i.i.i, label %.lr.ph.i.i.i.i.i.i118.i.i.i

.lr.ph.i.i.i.i.i.i118.i.i.i:                      ; preds = %.noexc127.i.i.i, %.lr.ph.i.i.i.i.i.i118.i.i.i
  %.012.i.i.i.i.i.i119.i.i.i = phi ptr [ %i.wr, %.lr.ph.i.i.i.i.i.i118.i.i.i ], [ %i.wo, %.noexc127.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i120.i.i.i = phi ptr [ %i.wq, %.lr.ph.i.i.i.i.i.i118.i.i.i ], [ %.sroa.034.0121.i.i.i, %.noexc127.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i119.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i120.i.i.i, i64 16, i1 false), !tbaa.struct !441, !alias.scope !620, !noalias !587
  %i.wq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i120.i.i.i, i64 16 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i119.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i121.i.i.i = icmp eq ptr %i.wq, %.sroa.9.0120.i.i.i
  br i1 %.not.i.i.i.i.i.i121.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i122.i.i.i, label %.lr.ph.i.i.i.i.i.i118.i.i.i, !llvm.loop !462

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i122.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i118.i.i.i, %.noexc127.i.i.i
  %.0.lcssa.i.i.i.i.i.i123.i.i.i = phi ptr [ %i.wo, %.noexc127.i.i.i ], [ %i.wr, %.lr.ph.i.i.i.i.i.i118.i.i.i ]
  %.not.i23.i.i.i124.i.i.i = icmp eq ptr %.sroa.034.0121.i.i.i, null
  br i1 %.not.i23.i.i.i124.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i122.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0121.i.i.i, i64 noundef %i.wi) #24, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i: ; preds = %bb.ek, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i122.i.i.i
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.wo, i64 %26
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE9push_backEOS4_.exit128.i.i.i: ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i, %bb.eh
  %.sroa.1440.1.i.i.i = phi ptr [ %i.ws, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i ], [ %.sroa.1440.0119.i.i.i, %bb.eh ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i123.pn.i.i.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i123.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i ], [ %.sroa.9.0120.i.i.i, %bb.eh ]
  %.sroa.034.1.i.i.i = phi ptr [ %i.wo, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i125.i.i.i ], [ %.sroa.034.0121.i.i.i, %bb.eh ] ; 2 uses
  %.sroa.9.1.i.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i123.pn.i.i.i, i64 16 ; 2 uses
  %i.wt = add nsw i64 %i.wf, %.1122.i.i.i
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.018.0118.i.i.i, i64 16 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.qw
  br i1 %i.wv, label %._crit_edge125.i.i.i, label %.lr.ph124.i.i.i

.loopexit65.i.i.i:                                ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i114.i.i.i
  %lpad.loopexit67.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

.loopexit.split-lp66.i.i.i:                       ; preds = %bb.ej
  %lpad.loopexit.split-lp68.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit.i.i.i: ; preds = %._crit_edge125.i.i.i
  %i.ww = icmp eq ptr %.sroa.043.0.lcssa.i.i.i, %.sroa.947.0.lcssa.i.i.i
  %spec.select.i.i129.i.i.i = select i1 %i.ww, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataIN3org6apache5arrow7flatbuf6BufferESaIS6_EEEPKT_RKSt6vectorIS8_T0_EE1t, ptr %.sroa.043.0.lcssa.i.i.i
  %i.wx = ptrtoint ptr %.sroa.947.0.lcssa.i.i.i to i64
  %i.wy = ptrtoint ptr %.sroa.043.0.lcssa.i.i.i to i64 ; 2 uses
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = ashr exact i64 %i.wz, 4
  %i.xb = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJPKT_EEEESF_m(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef %spec.select.i.i129.i.i.i, i64 noundef %i.xa)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i unwind label %bb.em, !noalias !587

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit.i.i.i
  %i.xc = icmp sgt i32 %i.nn, 0
  br i1 %i.xc, label %.lr.ph133.preheader.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.i.i.i

.lr.ph133.preheader.i.i.i:                        ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i
  %wide.trip.count.i.i.i = and i64 %i.nm, 2147483647
  br label %.lr.ph133.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i
  %i.xd = ptrtoint ptr %.sroa.10.1.i.i.i to i64
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.i.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i
  %.sroa.02.0.lcssa.i.i.i = phi ptr [ null, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i ], [ %.sroa.02.1.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i ] ; 6 uses
  %.sroa.10.0.lcssa.i.i.i = phi i64 [ 0, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i ], [ %i.xd, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i ]
  %.sroa.14.0.lcssa.i.i.i = phi ptr [ null, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131.preheader.i.i.i ], [ %.sroa.14.1.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.not.i.i.i73.i = icmp eq ptr %.sroa.02.0.lcssa.i.i.i, null ; 2 uses
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i = select i1 %.not.i.i.i73.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %.sroa.02.0.lcssa.i.i.i, !prof !21
  %i.xe = ptrtoint ptr %.sroa.02.0.lcssa.i.i.i to i64 ; 2 uses
  %i.xf = sub i64 %.sroa.10.0.lcssa.i.i.i, %i.xe
  %i.xg = ashr exact i64 %i.xf, 2
  %i.xh = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIiTtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJT_EEEEPKS8_m(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i.i, i64 noundef %i.xg)
          to label %bb.es unwind label %bb.ex, !noalias !587

bb.el:                                            ; preds = %._crit_edge125.i.i.i
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

bb.em:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit.i.i.i
  %i.xj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

.lr.ph133.i.i.i:                                  ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i, %.lr.ph133.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph133.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i ] ; 2 uses
  %.sroa.14.0131.i.i.i = phi ptr [ null, %.lr.ph133.preheader.i.i.i ], [ %.sroa.14.1.i.i.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i ] ; 5 uses
  %.sroa.10.0130.i.i.i = phi ptr [ null, %.lr.ph133.preheader.i.i.i ], [ %.sroa.10.1.i.i.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i ] ; 3 uses
  %.sroa.02.0129.i.i.i = phi ptr [ null, %.lr.ph133.preheader.i.i.i ], [ %.sroa.02.1.i.i.i, %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i ] ; 7 uses
  %i.xk = load ptr, ptr %i.nf, align 8, !tbaa !490, !noalias !587
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %indvars.iv.i.i.i
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !440, !noalias !587
  %i.xn = trunc i64 %i.xm to i32                  ; 2 uses
  %.not.i132.i.i.i = icmp eq ptr %.sroa.10.0130.i.i.i, %.sroa.14.0131.i.i.i
  br i1 %.not.i132.i.i.i, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %.lr.ph133.i.i.i
  store i32 %i.xn, ptr %.sroa.10.0130.i.i.i, align 4, !tbaa !3, !noalias !587
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i

bb.eo:                                            ; preds = %.lr.ph133.i.i.i
  %i.xo = ptrtoint ptr %.sroa.14.0131.i.i.i to i64
  %i.xp = ptrtoint ptr %.sroa.02.0129.i.i.i to i64
  %i.xq = sub i64 %i.xo, %i.xp                    ; 6 uses
  %i.xr = icmp eq i64 %i.xq, 9223372036854775804
  br i1 %i.xr, label %bb.ep, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ep:                                            ; preds = %bb.eo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc134.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !587

.noexc134.i.i.i:                                  ; preds = %bb.ep
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.eo
  %i.xs = ashr exact i64 %i.xq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.xs, i64 1)
  %i.xt = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.xs ; 2 uses
  %27 = icmp ult i64 %i.xt, %i.xs
  %i.xu = call i64 @llvm.umin.i64(i64 %i.xt, i64 2305843009213693951)
  %28 = select i1 %27, i64 2305843009213693951, i64 %i.xu ; 3 uses
  %.not.i.i.i133.i.i.i = icmp ne i64 %28, 0
  call void @llvm.assume(i1 %.not.i.i.i133.i.i.i)
  %i.xv = shl nuw nsw i64 %28, 2
  %i.xw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xv) #23
          to label %.noexc135.i.i.i unwind label %.loopexit.i.i.i, !noalias !587 ; 4 uses

.noexc135.i.i.i:                                  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.xx = getelementptr inbounds i8, ptr %i.xw, i64 %i.xq ; 2 uses
  store i32 %i.xn, ptr %i.xx, align 4, !tbaa !3, !noalias !587
  %i.xy = icmp sgt i64 %i.xq, 0
  br i1 %i.xy, label %bb.eq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.eq:                                            ; preds = %.noexc135.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.xw, ptr align 4 %.sroa.02.0129.i.i.i, i64 %i.xq, i1 false), !noalias !587
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.eq, %.noexc135.i.i.i
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.02.0129.i.i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.0129.i.i.i, i64 noundef %i.xq) #24, !noalias !587
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.er, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %28
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.en
  %.sroa.02.1.i.i.i = phi ptr [ %i.xw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.02.0129.i.i.i, %bb.en ] ; 2 uses
  %.pn64.i.i.i = phi ptr [ %i.xx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.10.0130.i.i.i, %bb.en ]
  %.sroa.14.1.i.i.i = phi ptr [ %i.xz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.14.0131.i.i.i, %bb.en ] ; 2 uses
  %.sroa.10.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn64.i.i.i, i64 4 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.loopexit.i.i.i, label %.lr.ph133.i.i.i, !llvm.loop !624

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

.loopexit.split-lp.i.i.i:                         ; preds = %bb.ep
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.es:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.i.i.i
  %i.ya = invoke i32 @_ZN3org6apache5arrow7flatbuf26CreateSparseTensorIndexCSFERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS2_3IntEEENS8_INS4_6VectorIPKNS2_6BufferEjEEEESA_SG_NS8_INSB_IijEEEE(ptr noundef nonnull align 8 dereferenceable(128) %18, i32 %i.ow, i32 %i.xb, i32 %i.qf, i32 %i.tz, i32 %i.xh)
          to label %bb.et unwind label %bb.ey, !noalias !587 ; 2 uses

bb.et:                                            ; preds = %bb.es
  %i.yb = shl nsw i32 %i.nn, 1
  %i.yc = add nsw i32 %i.yb, -1
  %i.yd = sext i32 %i.yc to i64                   ; 2 uses
  br i1 %.not.i.i.i73.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ye = ptrtoint ptr %.sroa.14.0.lcssa.i.i.i to i64
  %i.yf = sub i64 %i.ye, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.0.lcssa.i.i.i, i64 noundef %i.yf) #24, !noalias !587
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.eu, %bb.et
  %.not.i.i.i137.i.i.i = icmp eq ptr %.sroa.034.0.lcssa.i.i.i, null
  br i1 %.not.i.i.i137.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.yg = ptrtoint ptr %.sroa.1440.0.lcssa.i.i.i to i64
  %i.yh = sub i64 %i.yg, %i.tw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.0.lcssa.i.i.i, i64 noundef %i.yh) #24, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i: ; preds = %bb.ev, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %.not.i.i.i138.i.i.i = icmp eq ptr %.sroa.043.0.lcssa.i.i.i, null
  br i1 %.not.i.i.i138.i.i.i, label %_ZN5arrow6StatusD2Ev.exit108.thread.i, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i
  %i.yi = ptrtoint ptr %.sroa.1450.0.lcssa.i.i.i to i64
  %i.yj = sub i64 %i.yi, %i.wy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.0.lcssa.i.i.i, i64 noundef %i.yj) #24, !noalias !587
  br label %_ZN5arrow6StatusD2Ev.exit108.thread.i

bb.ex:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf6BufferETtTpTyENS0_6OffsetETtTpTyENS0_6VectorESaIS8_EEET0_IJT1_IJPKT_EEEERKSt6vectorISE_T2_E.exit131._crit_edge.i.i.i
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ey:                                            ; preds = %bb.es
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.sroa.02.081.i.i.i = phi ptr [ %.sroa.02.0.lcssa.i.i.i, %bb.ex ], [ %.sroa.02.0.lcssa.i.i.i, %bb.ey ], [ %.sroa.02.0129.i.i.i, %.loopexit.i.i.i ], [ %.sroa.02.0129.i.i.i, %.loopexit.split-lp.i.i.i ] ; 3 uses
  %.sroa.14.075.i.i.i = phi ptr [ %.sroa.14.0.lcssa.i.i.i, %bb.ex ], [ %.sroa.14.0.lcssa.i.i.i, %bb.ey ], [ %.sroa.14.0131.i.i.i, %.loopexit.i.i.i ], [ %.sroa.14.0131.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.pn65.i.i.i = phi { ptr, i32 } [ %i.yk, %bb.ex ], [ %i.yl, %bb.ey ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i140.i.i.i = icmp eq ptr %.sroa.02.081.i.i.i, null
  br i1 %.not.i.i.i140.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ym = ptrtoint ptr %.sroa.14.075.i.i.i to i64
  %i.yn = ptrtoint ptr %.sroa.02.081.i.i.i to i64
  %i.yo = sub i64 %i.ym, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.081.i.i.i, i64 noundef %i.yo) #24, !noalias !587
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i:           ; preds = %bb.fa, %bb.ez, %bb.em, %bb.el, %.loopexit.split-lp66.i.i.i, %.loopexit65.i.i.i
  %.sroa.1440.091.i.i.i = phi ptr [ %.sroa.1440.0.lcssa.i.i.i, %bb.fa ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.ez ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.el ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.em ], [ %.sroa.9.0120.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.9.0120.i.i.i, %.loopexit.split-lp66.i.i.i ]
  %.sroa.034.085.i.i.i = phi ptr [ %.sroa.034.0.lcssa.i.i.i, %bb.fa ], [ %.sroa.034.0.lcssa.i.i.i, %bb.ez ], [ %.sroa.034.0.lcssa.i.i.i, %bb.el ], [ %.sroa.034.0.lcssa.i.i.i, %bb.em ], [ %.sroa.034.0121.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.034.0121.i.i.i, %.loopexit.split-lp66.i.i.i ] ; 3 uses
  %.pn69.i.i.i = phi { ptr, i32 } [ %.pn65.i.i.i, %bb.fa ], [ %.pn65.i.i.i, %bb.ez ], [ %i.xi, %bb.el ], [ %i.xj, %bb.em ], [ %lpad.loopexit67.i.i.i, %.loopexit65.i.i.i ], [ %lpad.loopexit.split-lp68.i.i.i, %.loopexit.split-lp66.i.i.i ] ; 2 uses
  %.not.i.i.i142.i.i.i = icmp eq ptr %.sroa.034.085.i.i.i, null
  br i1 %.not.i.i.i142.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i
  %i.yp = ptrtoint ptr %.sroa.1440.091.i.i.i to i64
  %i.yq = ptrtoint ptr %.sroa.034.085.i.i.i to i64
  %i.yr = sub i64 %i.yp, %i.yq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.085.i.i.i, i64 noundef %i.yr) #24, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i: ; preds = %bb.fb, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i
  %.sroa.1450.0106.i.i.i = phi ptr [ %.sroa.1450.0.lcssa.i.i.i, %bb.fb ], [ %.sroa.1450.0.lcssa.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %.sroa.947.0112.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %.sroa.947.0112.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ]
  %.sroa.043.098.i.i.i = phi ptr [ %.sroa.043.0.lcssa.i.i.i, %bb.fb ], [ %.sroa.043.0.lcssa.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %.sroa.043.0113.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %.sroa.043.0113.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ] ; 3 uses
  %.pn6961.i.i.i = phi { ptr, i32 } [ %.pn69.i.i.i, %bb.fb ], [ %.pn69.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %lpad.loopexit70.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %lpad.loopexit.split-lp71.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i144.i.i.i = icmp eq ptr %.sroa.043.098.i.i.i, null
  br i1 %.not.i.i.i144.i.i.i, label %.body.i, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i
  %i.ys = ptrtoint ptr %.sroa.1450.0106.i.i.i to i64
  %i.yt = ptrtoint ptr %.sroa.043.098.i.i.i to i64
  %i.yu = sub i64 %i.ys, %i.yt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.098.i.i.i, i64 noundef %i.yu) #24, !noalias !587
  br label %.body.i

bb.fd:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !549
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %.noexc106.i unwind label %bb.fr, !noalias !524

.noexc106.i:                                      ; preds = %bb.fd
  %i.yv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.yw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef nonnull @.str.47, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.fl, !noalias !549 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !549
  %i.yx = load ptr, ptr %i.fm, align 8, !tbaa !18, !noalias !549
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load ptr, ptr %i.yy, align 8, !noalias !549
  invoke void %i.yz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %i.fm)
          to label %bb.fe unwind label %bb.fm, !noalias !549

bb.fe:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.za = load ptr, ptr %11, align 8, !tbaa !103, !noalias !549
  %i.zb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.zc = load i64, ptr %i.zb, align 8, !tbaa !102, !noalias !549
  %i.zd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.yv, ptr noundef %i.za, i64 noundef %i.zc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.fn, !noalias !549 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %bb.fe
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !18, !noalias !549
  %i.zf = getelementptr i8, ptr %i.ze, i64 -24
  %i.zg = load i64, ptr %i.zf, align 8, !noalias !549
  %i.zh = getelementptr inbounds i8, ptr %i.zd, i64 %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 240
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !625, !noalias !549 ; 6 uses
  %.not.i.i.i.i77.i = icmp eq ptr %i.zj, null
  br i1 %.not.i.i.i.i77.i, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ff:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc.i.i unwind label %bb.fn, !noalias !549

.noexc.i.i:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 56
  %i.zl = load i8, ptr %i.zk, align 8, !tbaa !640, !noalias !549
  %.not.i1.i.i.i.i = icmp eq i8 %i.zl, 0
  br i1 %.not.i1.i.i.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zj, i64 67
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !14, !noalias !549
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zj)
          to label %.noexc110.i.i unwind label %bb.fn, !noalias !549

.noexc110.i.i:                                    ; preds = %bb.fh
  %i.zo = load ptr, ptr %i.zj, align 8, !tbaa !18, !noalias !549
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 48
  %i.zq = load ptr, ptr %i.zp, align 8, !noalias !549
  %i.zr = invoke noundef signext i8 %i.zq(ptr noundef nonnull align 8 dereferenceable(570) %i.zj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %bb.fn, !noalias !549, !inline_history !646

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc110.i.i, %bb.fg
  %.0.i.i.i.i78.i = phi i8 [ %i.zn, %bb.fg ], [ %i.zr, %.noexc110.i.i ]
  %i.zs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.zd, i8 noundef signext %.0.i.i.i.i78.i)
          to label %.noexc112.i.i unwind label %bb.fn, !noalias !549

.noexc112.i.i:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zs)
          to label %_ZNSolsEPFRSoS_E.exit.i.i unwind label %bb.fn, !noalias !549 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i.i:                        ; preds = %.noexc112.i.i
  %i.zu = load ptr, ptr %11, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.zw = icmp eq ptr %i.zu, %i.zv
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i
  %i.zx = load i64, ptr %i.zv, align 8, !tbaa !14, !noalias !549
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zu, i64 noundef %i.zy) #24, !noalias !549
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !549
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.zz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc8internal15WriteFileFooterERKNS_6SchemaERKSt6vectorINS1_9FileBlockESaIS6_EESA_RKSt10shared_ptrIKNS_16KeyValueMetadataEEPNS_2io12OutputStreamE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body

_ZN5arrow6StatusD2Ev.exit42:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.val37 = load ptr, ptr %2, align 8, !tbaa !672
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val38 = load ptr, ptr %i.s, align 8, !tbaa !672
  %i.t = invoke fastcc i32 @_ZN5arrow3ipc8internalL22FileBlocksToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKSt6vectorINS1_9FileBlockESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr %.val37, ptr %.val38)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %.val35 = load ptr, ptr %3, align 8, !tbaa !672
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val36 = load ptr, ptr %i.u, align 8, !tbaa !672
  %i.v = invoke fastcc i32 @_ZN5arrow3ipc8internalL22FileBlocksToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKSt6vectorINS1_9FileBlockESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr %.val35, ptr %.val36)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %4, align 8, !tbaa !377   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(48) %.val, ptr noundef %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %6, align 8, !tbaa !378    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !378  ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.y
  %spec.select.i.i.i = select i1 %i.z, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EEEPKT_RKSt6vectorISA_T0_EE1t, ptr %i.w
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  %i.ae = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN3org6apache5arrow7flatbuf8KeyValueEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef %spec.select.i.i.i, i64 noundef %i.ad)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i unwind label %bb.i ; 2 uses

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %6, align 8, !tbaa !380   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !382
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i: ; preds = %bb.h
  %.not.i.i.i5.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !382
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ap) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i, %bb.f
  %.sroa.0.04.i = phi i32 [ %i.ae, %bb.k ], [ %i.ae, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.sroa.04.0.copyload = load i32, ptr %8, align 4, !tbaa !3
  %i.aq = invoke i32 @_ZN3org6apache5arrow7flatbuf12CreateFooterERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_15MetadataVersionENS4_6OffsetINS2_6SchemaEEENS9_INS4_6VectorIPKNS2_5BlockEjEEEESH_NS9_INSC_INS9_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %7, i16 noundef signext 4, i32 %.sroa.04.0.copyload, i32 %i.t, i32 %i.v, i32 %.sroa.0.04.i)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE6FinishEjPKcb(ptr noundef nonnull align 8 dereferenceable(128) %7, i32 noundef %i.aq, ptr noundef null, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ar = load i32, ptr %i.f, align 8, !tbaa !301
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !407
  %i.au = sext i32 %i.ar to i64
  %i.av = load ptr, ptr %5, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.at, i64 noundef %i.au)
          to label %.critedge unwind label %bb.r

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit42
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.n
  call void @_ZN5arrow3ipc21DictionaryFieldMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

.body:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit.i, %bb.o, %bb.r, %bb.q, %bb.p, %bb.d
  %.pn28.pn.pn.pn.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.ay, %bb.o ], [ %i.az, %bb.p ], [ %i.ba, %bb.q ], [ %i.bb, %bb.r ], [ %i.af, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit.i ]
  call void @_ZN5arrow3ipc21DictionaryFieldMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.c
  %.pn28.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn.pn, %.body ], [ %i.q, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn28.pn.pn.pn.pn.pn
}

declare void @_ZN5arrow3ipc21DictionaryFieldMapperC1ERKNS_6SchemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc i32 @_ZN5arrow3ipc8internalL22FileBlocksToFlatbufferERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKSt6vectorINS1_9FileBlockESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr readonly captures(address) %.0.val, ptr readnone captures(address) %.8.val) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit
  %i.b = ptrtoint ptr %.sroa.10.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit ]
  %.sroa.14.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.14.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.04.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.04.1, %._crit_edge.loopexit ] ; 5 uses
  %i.c = ptrtoint ptr %.sroa.04.0.lcssa to i64    ; 2 uses
  %i.d = sub i64 %.sroa.10.0.lcssa, %i.c
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE21CreateVectorOfStructsIN3org6apache5arrow7flatbuf5BlockETtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJPKT_EEEESF_m(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %.sroa.04.0.lcssa, i64 noundef %i.e)
          to label %bb.f unwind label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit
  %.sroa.04.025 = phi ptr [ %.sroa.04.1, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit ], [ null, %bb.a ] ; 8 uses
  %.sroa.01.024 = phi ptr [ %i.ah, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit ], [ %.0.val, %bb.a ] ; 5 uses
  %.sroa.14.023 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.10.022 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit ], [ null, %bb.a ] ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10.022, %.sroa.14.023
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %.sroa.01.024, align 8, !tbaa !440
  %i.j = load i32, ptr %i.g, align 8, !tbaa !3
  %i.k = load i64, ptr %i.h, align 8, !tbaa !440
  store i64 %i.i, ptr %.sroa.10.022, align 8, !tbaa !674
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.10.022, i64 8
  store i32 %i.j, ptr %i.l, align 8, !tbaa !676
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.10.022, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !677
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.10.022, i64 16
  store i64 %i.k, ptr %i.n, align 8, !tbaa !678
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.o = ptrtoint ptr %.sroa.14.023 to i64
  %i.p = ptrtoint ptr %.sroa.04.025 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.s = sdiv exact i64 %i.q, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %1 = icmp ult i64 %i.t, %i.s
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 384307168202282325)
  %2 = select i1 %1, i64 384307168202282325, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = mul nuw nsw i64 %2, 24
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23
          to label %.noexc10 unwind label %.loopexit ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q ; 4 uses
  %i.y = load i64, ptr %.sroa.01.024, align 8, !tbaa !440
  %i.z = load i32, ptr %i.g, align 8, !tbaa !3
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !440
  store i64 %i.y, ptr %i.x, align 8, !tbaa !674
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.z, ptr %i.ab, align 8, !tbaa !676
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !677
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.aa, ptr %i.ad, align 8, !tbaa !678
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.04.025, %.sroa.14.023
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.w, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.025, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !679, !alias.scope !680
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %.sroa.14.023
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !684

_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc10
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %.noexc10 ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %.not.i35.i.i = icmp eq ptr %.sroa.04.025, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.025, i64 noundef %i.q) #24
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit34.i.i
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %2
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit

_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12emplace_backIJRKlRKiS9_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.b
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.10.022, %bb.b ]
  %.sroa.14.1 = phi ptr [ %i.ag, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.14.023, %bb.b ] ; 2 uses
  %.sroa.04.1 = phi ptr [ %i.w, %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE17_M_realloc_insertIJRKlRKiS9_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.04.025, %bb.b ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %.8.val
  br i1 %i.ai, label %._crit_edge.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %.not.i.i.i11 = icmp eq ptr %.sroa.04.0.lcssa, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = ptrtoint ptr %.sroa.14.0.lcssa to i64
  %i.ak = sub i64 %i.aj, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.0.lcssa, i64 noundef %i.ak) #24
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit

_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit: ; preds = %bb.f, %bb.g
  ret i32 %i.f

bb.h:                                             ; preds = %._crit_edge
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h
  %.sroa.14.018 = phi ptr [ %.sroa.14.0.lcssa, %bb.h ], [ %.sroa.14.023, %.loopexit ], [ %.sroa.14.023, %.loopexit.split-lp ]
  %.sroa.04.014 = phi ptr [ %.sroa.04.0.lcssa, %bb.h ], [ %.sroa.04.025, %.loopexit ], [ %.sroa.04.025, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i12 = icmp eq ptr %.sroa.04.014, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = ptrtoint ptr %.sroa.14.018 to i64
  %i.an = ptrtoint ptr %.sroa.04.014 to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.014, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit13

_ZNSt6vectorIN3org6apache5arrow7flatbuf5BlockESaIS4_EED2Ev.exit13: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN3org6apache5arrow7flatbuf12CreateFooterERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_15MetadataVersionENS4_6OffsetINS2_6SchemaEEENS9_INS4_6VectorIPKNS2_5BlockEjEEEESH_NS9_INSC_INS9_INS2_8KeyValueEEEjEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef signext %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !301  ; 4 uses
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %_ZN3org6apache5arrow7flatbuf13FooterBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !307
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = sub i32 0, %i.c
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %.pre4.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !491
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %i.c, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i.i, %bb.e ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %i.x = add nuw i64 %.05.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !685

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %i.y = phi i32 [ %.pre.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i ], [ %i.c, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i ]
  %reass.sub = sub i32 %i.y, %5
  %i.z = add i32 %reass.sub, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 12, i32 noundef %i.z, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf13FooterBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf13FooterBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit: ; preds = %bb.a, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i
  %.not.i.i.i9 = icmp eq i32 %4, 0
  br i1 %.not.i.i.i9, label %_ZN3org6apache5arrow7flatbuf13FooterBuilder17add_recordBatchesEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIPKNS2_5BlockEjEEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3org6apache5arrow7flatbuf13FooterBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !307
  %i.ac = icmp ult i64 %i.ab, 4
  br i1 %i.ac, label %bb.g, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10

bb.g:                                             ; preds = %bb.f
  store i64 4, ptr %i.aa, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10: ; preds = %bb.g, %bb.f
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !301 ; 3 uses
  %i.ae = sub i32 0, %i.ad
  %i.af = and i32 %i.ae, 3                        ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %.not.i.i.i.i.i.i11 = icmp eq i32 %i.af, 0
  %.phi.trans.insert.i.i.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i11, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20, label %bb.h

bb.h:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10
  %.pre4.i.i.i.i.i.i13 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !407 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !491
  %i.aj = ptrtoint ptr %.pre4.i.i.i.i.i.i13 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = and i64 %i.al, 4294967295
  %i.an = icmp samesign ult i64 %i.am, %i.ag
  br i1 %i.an, label %bb.i, label %.lr.ph.preheader.i.i.i.i.i14

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.ag)
  %.pre.i.i.i.i.i.i22 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !407
  %.pre.i.i.i.i23 = load i32, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i.i14

.lr.ph.preheader.i.i.i.i.i14:                     ; preds = %bb.i, %bb.h
  %i.ao = phi i32 [ %i.ad, %bb.h ], [ %.pre.i.i.i.i23, %bb.i ]
  %i.ap = phi ptr [ %.pre4.i.i.i.i.i.i13, %bb.h ], [ %.pre.i.i.i.i.i.i22, %bb.i ]
  %i.aq = sub nsw i64 0, %i.ag
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store ptr %i.ar, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !407
  %i.as = add i32 %i.ao, %i.af
  store i32 %i.as, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i15.epil

.lr.ph.i.i.i.i.i15.epil:                          ; preds = %.lr.ph.i.i.i.i.i15.epil, %.lr.ph.preheader.i.i.i.i.i14
  %.05.i.i.i.i.i16.epil = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i15.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i14 ] ; 2 uses
  %epil.iter78 = phi i64 [ %epil.iter78.next, %.lr.ph.i.i.i.i.i15.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i14 ]
  %i.at = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i12, align 8, !tbaa !407
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.05.i.i.i.i.i16.epil
  store i8 0, ptr %i.au, align 1, !tbaa !14
  %i.av = add nuw i64 %.05.i.i.i.i.i16.epil, 1
  %epil.iter78.next = add i64 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i64 %epil.iter78.next, %i.ag
  br i1 %epil.iter78.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18, label %.lr.ph.i.i.i.i.i15.epil, !llvm.loop !686

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i15.epil
  %.pre.i.i.i19 = load i32, ptr %i.b, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i20: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i18, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i10
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc8internal17GetTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEESC_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE:bb.a
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = add i64 %i.h, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.r = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.s = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !758
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.50)
  %.pr = load ptr, ptr %7, align 8, !tbaa !22     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit45, label %.critedge

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.087 = phi ptr [ %i.u, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  %i.w = load i32, ptr %.087, align 4, !tbaa !3
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.087, i64 %i.y ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 6
  br i1 %i.ab, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.087, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 4
  %i.ai = icmp ugt i16 %i.aa, 8
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.087, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 16 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar                    ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i47 = icmp ne i16 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !766 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.trip.count = zext i32 %i.bb to i64
  br label %bb.d

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit45
  call void @_ZN5arrow6Status8FromArgsIJRA57_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(57) @.str.25)
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre100 = load i32, ptr %i.ap, align 4, !tbaa !3
  %.pre104 = sext i32 %.pre100 to i64
  %.pre105 = sub nsw i64 0, %.pre104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %.pre-phi106 = phi i64 [ %.pre105, %._crit_edge.loopexit ], [ %i.as, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi106 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !31
  %i.bk = icmp ugt i16 %i.bj, 10
  br i1 %i.bk, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48: ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i49 = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i49, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bn = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.bo = sext i32 %i.bn to i64
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %i.ap, i64 %i.bp ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !31
  %i.bs = icmp ugt i16 %i.br, 8
  br i1 %i.bs, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50: ; preds = %bb.d
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i51 = icmp eq i16 %i.bu, 0
  br i1 %.not.i.i.i51, label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50
  %i.bv = zext i16 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  br label %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52

_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, %bb.e
  %i.ca = phi ptr [ %i.bz, %bb.e ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50 ], [ null, %bb.d ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = shl i64 %indvars.iv, 2
  %i.cd = and i64 %i.cc, 4294967292
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 6 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = sext i32 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !31
  %i.cn = icmp ugt i16 %i.cm, 4
  br i1 %i.cn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.cq = zext i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.f
  %i.ct = phi i64 [ %i.cs, %bb.f ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK3org6apache5arrow7flatbuf6Tensor5shapeEv.exit52 ] ; 2 uses
  %i.cu = load ptr, ptr %i.bc, align 8, !tbaa !488 ; 4 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !736
  %.not.i.i53 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !440
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cw, ptr %i.bc, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.h:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.cx = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.i, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dc ; 2 uses
  %10 = icmp ult i64 %i.dd, %i.dc
  %i.de = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %11 = select i1 %10, i64 1152921504606846975, i64 %i.de ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.df = shl nuw nsw i64 %11, 3
  %i.dg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #23 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.da ; 2 uses
  store i64 %i.ct, ptr %i.dh, align 8, !tbaa !440
  %i.di = icmp sgt i64 %i.da, 0
  br i1 %i.di, label %bb.j, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cx, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dg, ptr %3, align 8, !tbaa !490
  store ptr %i.dj, ptr %i.bc, align 8, !tbaa !488
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %11
  store ptr %i.dk, ptr %i.bd, align 8, !tbaa !736
  %.pre = load i32, ptr %i.ch, align 4, !tbaa !3
  %.pre111 = sext i32 %.pre to i64
  %.pre113 = sub nsw i64 0, %.pre111
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.g, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.pre-phi114 = phi i64 [ %i.ck, %bb.g ], [ %.pre113, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.dl = getelementptr inbounds i8, ptr %i.ch, i64 %.pre-phi114 ; 2 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !31
  %i.dn = icmp ugt i16 %i.dm, 6
  br i1 %i.dn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55, label %._crit_edge.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55: ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i56 = icmp eq i16 %i.dp, 0
  br i1 %.not.i.i.i56, label %._crit_edge.i.i.i, label %bb.l

._crit_edge.i.i.i:                                ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  store ptr %i.be, ptr %8, align 8, !tbaa !101, !alias.scope !768
  store i64 0, ptr %i.bf, align 8, !tbaa !102, !alias.scope !768
  store i8 0, ptr %i.be, align 8, !tbaa !14, !alias.scope !768
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

bb.l:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55
  %i.dq = zext i16 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !98, !noalias !774 ; 3 uses
  %i.dx = zext i32 %i.dw to i64                   ; 5 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !101, !alias.scope !774
  %i.dy = icmp ugt i32 %i.dw, 15
  br i1 %i.dy, label %.noexc.i14.i, label %._crit_edge.i.i.i.i

.noexc.i14.i:                                     ; preds = %bb.l
  %i.dz = add nuw nsw i64 %i.dx, 1
  %i.ea = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #23 ; 2 uses
  store ptr %i.ea, ptr %8, align 8, !tbaa !103, !alias.scope !774
  store i64 %i.dx, ptr %i.be, align 8, !tbaa !14, !alias.scope !774
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i14.i, %bb.l
  %i.eb = phi ptr [ %i.ea, %.noexc.i14.i ], [ %i.be, %bb.l ] ; 3 uses
  switch i32 %i.dw, label %bb.n [
    i32 1, label %bb.m
    i32 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ec = load i8, ptr %i.dv, align 4, !tbaa !14, !noalias !774
  store i8 %i.ec, ptr %i.eb, align 1, !tbaa !14
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 4 %i.dv, i64 %i.dx, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  store i64 %i.dx, ptr %i.bf, align 8, !tbaa !102, !alias.scope !774
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dx
  store i8 0, ptr %i.ed, align 1, !tbaa !14
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit: ; preds = %._crit_edge.i.i.i, %bb.o
  %i.ee = load ptr, ptr %i.bg, align 8, !tbaa !775 ; 6 uses
  %i.ef = load ptr, ptr %i.bh, align 8, !tbaa !777
  %.not.i.i57 = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i57, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 3 uses
  store ptr %i.eg, ptr %i.ee, align 8, !tbaa !101
  %i.eh = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.be
  br i1 %i.ei, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ej = load i64, ptr %i.bf, align 8, !tbaa !102 ; 3 uses
  %i.ek = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ek)
  %i.el = add nuw nsw i64 %i.ej, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.el, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !103
  %i.em = load i64, ptr %i.be, align 8, !tbaa !14
  store i64 %i.em, ptr %i.eg, align 8, !tbaa !14
  %.pre98 = load i64, ptr %i.bf, align 8, !tbaa !102
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.en = phi i64 [ %.pre98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ej, %bb.q ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !102
  store ptr %i.be, ptr %8, align 8, !tbaa !103
  store i64 0, ptr %i.bf, align 8, !tbaa !102
  %i.ep = load ptr, ptr %i.bg, align 8, !tbaa !775
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store ptr %i.eq, ptr %i.bg, align 8, !tbaa !775
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.s

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.r
  %.pre99 = load ptr, ptr %8, align 8, !tbaa !103 ; 2 uses
  %i.er = icmp eq ptr %.pre99, %i.be
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.es = load i64, ptr %i.be, align 8, !tbaa !14
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %.pre99, i64 noundef %i.et) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !778

bb.s:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %i.ev = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.be
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.s
  %i.ex = load i64, ptr %i.be, align 8, !tbaa !14
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ak

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48
  %i.ez = zext i16 %i.bm to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !779 ; 2 uses
  %.not38 = icmp eq i32 %i.fe, 0
  br i1 %.not38, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61
  %.not39 = icmp eq i32 %i.fe, %i.bb
  br i1 %.not39, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph, label %bb.t

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.trip.count96 = zext i32 %i.bb to i64
  %.pre101 = load ptr, ptr %i.ff, align 8, !tbaa !488
  %.pre102 = load ptr, ptr %i.fg, align 8, !tbaa !736
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67

bb.t:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64
  call void @_ZN5arrow6Status8FromArgsIJRA59_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(59) @.str.26)
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77
  %i.fh = phi ptr [ %.pre102, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %i.gm, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 3 uses
  %i.fi = phi ptr [ %.pre101, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %i.gn, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 3 uses
  %indvars.iv93 = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %indvars.iv.next94, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 2 uses
  %i.fj = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.fk = sext i32 %i.fj to i64
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.ap, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 10
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i68 = icmp ne i16 %i.fo, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.fp = zext i16 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fp ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv93
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !440 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.fi, %i.fh
  br i1 %.not.i.i70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67
  store i64 %i.fw, ptr %i.fi, align 8, !tbaa !440
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  store ptr %i.fx, ptr %i.ff, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77

bb.v:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67
  %i.fy = load ptr, ptr %4, align 8, !tbaa !490   ; 4 uses
  %i.fz = ptrtoint ptr %i.fh to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 6 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775800
  br i1 %i.gc, label %bb.w, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i71

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i71: ; preds = %bb.v
  %i.gd = ashr exact i64 %i.gb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i.i72, %i.gd ; 2 uses
  %12 = icmp ult i64 %i.ge, %i.gd
  %i.gf = call i64 @llvm.umin.i64(i64 %i.ge, i64 1152921504606846975)
  %13 = select i1 %12, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i.i73 = icmp ne i64 %13, 0
  call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.gg = shl nuw nsw i64 %13, 3
  %i.gh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #23 ; 4 uses
  %i.gi = getelementptr inbounds i8, ptr %i.gh, i64 %i.gb ; 2 uses
  store i64 %i.fw, ptr %i.gi, align 8, !tbaa !440
  %i.gj = icmp sgt i64 %i.gb, 0
  br i1 %i.gj, label %bb.x, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i74

bb.x:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %i.fy, i64 %i.gb, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i74

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i74: ; preds = %bb.x, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i71
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %.not.i17.i.i.i75 = icmp eq ptr %i.fy, null
  br i1 %.not.i17.i.i.i75, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.gb) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76: ; preds = %bb.y, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i74
  store ptr %i.gh, ptr %4, align 8, !tbaa !490
  store ptr %i.gk, ptr %i.ff, align 8, !tbaa !488
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %13 ; 2 uses
  store ptr %i.gl, ptr %i.fg, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77

_ZNSt6vectorIlSaIlEE9push_backEOl.exit77:         ; preds = %bb.u, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76
  %i.gm = phi ptr [ %i.fh, %bb.u ], [ %i.gl, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76 ]
  %i.gn = phi ptr [ %i.fx, %bb.u ], [ %i.gk, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i76 ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread.loopexit, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67, !llvm.loop !781

_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread.loopexit: ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77
  %.pre103 = load i32, ptr %i.ap, align 4, !tbaa !3
  %.pre107 = sext i32 %.pre103 to i64
  %.pre109 = sub nsw i64 0, %.pre107
  br label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread

_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread.loopexit, %._crit_edge, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61
  %.pre-phi110 = phi i64 [ %.pre109, %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread.loopexit ], [ %.pre-phi106, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61 ], [ %.pre-phi106, %._crit_edge ], [ %.pre-phi106, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48 ]
  %i.go = getelementptr inbounds i8, ptr %i.ap, i64 %.pre-phi110 ; 3 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !31 ; 2 uses
  %i.gq = icmp ugt i16 %i.gp, 6
  br i1 %i.gq, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i78, label %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i78: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 6
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i79 = icmp eq i16 %i.gs, 0
  br i1 %.not.i.i.i79, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80, label %bb.z

bb.z:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i78
  %i.gt = zext i16 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !3
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80

_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread
  %i.gy = icmp samesign ugt i16 %i.gp, 4
  br i1 %i.gy, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80, label %_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80: ; preds = %bb.z, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i78, %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit
  %i.gz = phi ptr [ null, %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i78 ], [ %i.gx, %bb.z ] ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !31 ; 2 uses
  %.not.i.i81 = icmp eq i16 %i.hb, 0
  br i1 %.not.i.i81, label %_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80
  %i.hc = zext i16 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !14
  br label %_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit

_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit: ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80, %bb.aa
  %i.hf = phi ptr [ %i.gz, %bb.aa ], [ %i.gz, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80 ], [ null, %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit ]
  %i.hg = phi i8 [ %i.he, %bb.aa ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i80 ], [ 0, %_ZNK3org6apache5arrow7flatbuf6Tensor4typeEv.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow3ipc8internal26ConcreteTypeFromFlatbufferEN3org6apache5arrow7flatbuf4TypeEPKvSt6vectorISt10shared_ptrINS_5FieldEESaISC_EEPSA_INS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef zeroext %i.hg, ptr noundef %i.hf, ptr noundef nonnull %9, ptr noundef %2)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit
  %i.hh = load ptr, ptr %9, align 8, !tbaa !124   ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !121 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hh, %i.hj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ib, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i ], [ %i.hh, %bb.ab ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.hm, align 8, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !17
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !18
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22, !inline_history !704
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !18
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22, !inline_history !704
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.hp, %bb.af ], [ %i.hz, %bb.ag ]
  %i.ia = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ia, label %bb.ah, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i, !prof !21

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ad, %.lr.ph.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.ib, %i.hj
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !210

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %9, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.ab
  %i.ic = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.hh, %bb.ab ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i1.i, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !203
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.ic to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ih) #24
  br label %.critedge

bb.aj:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf6Tensor9type_typeEv.exit
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #22
  br label %bb.ak

.critedge:                                        ; preds = %bb.ai, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %_ZN5arrow6StatusD2Ev.exit, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, %bb.t
  ret void

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.ii, %bb.aj ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal25GetSparseCOOIndexMetadataEPKN3org6apache5arrow7flatbuf20SparseTensorIndexCOOEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !31
  %i.f = icmp ugt i16 %i.e, 4
  br i1 %i.f, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf20SparseTensorIndexCOO11indicesTypeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i16, ptr %i.g, align 2, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf20SparseTensorIndexCOO11indicesTypeEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  br label %_ZNK3org6apache5arrow7flatbuf20SparseTensorIndexCOO11indicesTypeEv.exit

_ZNK3org6apache5arrow7flatbuf20SparseTensorIndexCOO11indicesTypeEv.exit: ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  tail call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_117IntFromFlatbufferEPKN3org6apache5arrow7flatbuf3IntEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.n, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal25GetSparseCSXIndexMetadataEPKN3org6apache5arrow7flatbuf20SparseMatrixIndexCSXEPSt10shared_ptrINS_8DataTypeEESC_(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow3ipc8internal25GetSparseCSXIndexMetadataEPKN3org6apache5arrow7flatbuf20SparseMatrixIndexCSXEPSt10shared_ptrINS_8DataTypeEESC_:bb.a
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_117IntFromFlatbufferEPKN3org6apache5arrow7flatbuf3IntEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef %i.n, ptr noundef %2)
  %i.o = load ptr, ptr %4, align 8, !tbaa !22     ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = load i32, ptr %1, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !31
  %i.v = icmp ugt i16 %i.u, 10
  br i1 %i.v, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19, label %_ZN5arrow6StatusD2Ev.exit22

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !31   ; 2 uses
  %.not.i.i.i20 = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i20, label %_ZN5arrow6StatusD2Ev.exit22, label %bb.d

bb.d:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %_ZN5arrow6StatusD2Ev.exit22

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.c, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i19 ], [ null, %bb.c ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_117IntFromFlatbufferEPKN3org6apache5arrow7flatbuf3IntEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef %i.ad, ptr noundef %3)
  %i.ae = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit22
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !782
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit22, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal25GetSparseCSFIndexMetadataEPKN3org6apache5arrow7flatbuf20SparseTensorIndexCSFEPSt6vectorIlSaIlEESC_PSt10shared_ptrINS_8DataTypeEESG_(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = load i32, ptr %1, align 4, !tbaa !3
  %i.b = sext i32 %i.a to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !31
  %i.f = icmp ugt i16 %i.e, 4
  br i1 %i.f, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZN5arrow6StatusD2Ev.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i16, ptr %i.g, align 2, !tbaa !31   ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.i = zext i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ null, %bb.a ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_117IntFromFlatbufferEPKN3org6apache5arrow7flatbuf3IntEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef %i.n, ptr noundef %4)
  %i.o = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.o

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.q = load i32, ptr %1, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !31
  %i.v = icmp ugt i16 %i.u, 8
  br i1 %i.v, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30, label %_ZN5arrow6StatusD2Ev.exit33

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i16, ptr %i.w, align 2, !tbaa !31   ; 2 uses
  %.not.i.i.i31 = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i31, label %_ZN5arrow6StatusD2Ev.exit33, label %bb.d

bb.d:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %_ZN5arrow6StatusD2Ev.exit33

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %bb.c, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.d ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i30 ], [ null, %bb.c ]
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_117IntFromFlatbufferEPKN3org6apache5arrow7flatbuf3IntEPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef %i.ad, ptr noundef %5)
  %i.ae = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i38, label %bb.o

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i38: ; preds = %_ZN5arrow6StatusD2Ev.exit33
  %i.ag = load i32, ptr %1, align 4, !tbaa !3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i39 = icmp ne i16 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i39)
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !198 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40.lr.ph, label %._crit_edge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40.lr.ph: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i38
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ar to i64
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40

._crit_edge:                                      ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i38
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !785
  br label %bb.o

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52
  %indvars.iv = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52 ] ; 3 uses
  %i.ax = load i32, ptr %1, align 4, !tbaa !3
  %i.ay = sext i32 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay                    ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i41 = icmp ne i16 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i41)
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = load ptr, ptr %i.at, align 8, !tbaa !488 ; 4 uses
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !736
  %.not.i.i = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !440
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bo, ptr %i.at, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40
  %i.bp = load ptr, ptr %2, align 8, !tbaa !490   ; 4 uses
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775800
  br i1 %i.bt, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.bu = ashr exact i64 %i.bs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bu ; 2 uses
  %8 = icmp ult i64 %i.bv, %i.bu
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 1152921504606846975)
  %9 = select i1 %8, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %9, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %9, 3
  %i.by = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #23 ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bs ; 2 uses
  store i64 %i.bl, ptr %i.bz, align 8, !tbaa !440
  %i.ca = icmp sgt i64 %i.bs, 0
  br i1 %i.ca, label %bb.h, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %i.bp, i64 %i.bs, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bs) #24
  %.pre.pre = load i32, ptr %1, align 4, !tbaa !3
  %.pre62 = sext i32 %.pre.pre to i64
  %.pre63 = sub nsw i64 0, %.pre62
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %.pre60.pre-phi = phi i64 [ %.pre63, %bb.i ], [ %i.az, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i ]
  store ptr %i.by, ptr %2, align 8, !tbaa !490
  store ptr %i.cb, ptr %i.at, align 8, !tbaa !488
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %9
  store ptr %i.cc, ptr %i.au, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.e, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.pre-phi61 = phi i64 [ %i.az, %bb.e ], [ %.pre60.pre-phi, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %.pre-phi61
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i44 = icmp ne i16 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj
  %i.cl = shl nuw nsw i64 %indvars.iv, 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !505 ; 2 uses
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !488 ; 4 uses
  %i.cq = load ptr, ptr %i.aw, align 8, !tbaa !736
  %.not.i.i45 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !440
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cr, ptr %i.av, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.cs = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 6 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.l, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46: ; preds = %bb.k
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i47 = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i.i47, %i.cx ; 2 uses
  %10 = icmp ult i64 %i.cy, %i.cx
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %11 = select i1 %10, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i.i48 = icmp ne i64 %11, 0
  call void @llvm.assume(i1 %.not.i.i.i.i48)
  %i.da = shl nuw nsw i64 %11, 3
  %i.db = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #23 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.cv ; 2 uses
  store i64 %i.co, ptr %i.dc, align 8, !tbaa !440
  %i.dd = icmp sgt i64 %i.cv, 0
  br i1 %i.dd, label %bb.m, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49

bb.m:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %i.cs, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49: ; preds = %bb.m, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i46
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.not.i17.i.i.i50 = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i.i50, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51: ; preds = %bb.n, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i49
  store ptr %i.db, ptr %3, align 8, !tbaa !490
  store ptr %i.de, ptr %i.av, align 8, !tbaa !488
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %11
  store ptr %i.df, ptr %i.aw, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit52

_ZNSt6vectorIlSaIlEE9push_backEOl.exit52:         ; preds = %bb.j, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i40, !llvm.loop !788

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit33, %_ZN5arrow6StatusD2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal23GetSparseTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEEPS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EEPlPNS_18SparseTensorFormat4typeE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr noundef captures(address_is_null) %3, ptr noundef %4, ptr noundef writeonly captures(address_is_null) %5, ptr noundef writeonly captures(address_is_null) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::vector", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !399, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !605  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !789
  %.tr.i.i = trunc i64 %i.h to i32
  %i.i = shl i32 %.tr.i.i, 3
  store ptr %i.f, ptr %7, align 8, !tbaa !761, !noalias !789
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !765, !noalias !789
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 128, ptr %i.k, align 8, !tbaa !3, !noalias !789
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !789
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !789
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !172, !noalias !789
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !789
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !789
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !789
  %i.m = icmp ugt i64 %i.h, 11
  br i1 %i.m, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !789 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.n, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = add i64 %i.h, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !789
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.r = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %7), !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !789
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.s = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !789
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN5arrow6StatusD2Ev.exit60

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.50)
  %.pr = load ptr, ptr %8, align 8, !tbaa !22     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit60, label %.critedge

_ZN5arrow6StatusD2Ev.exit60:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %.092 = phi ptr [ %i.u, %_ZN5arrow6StatusD2Ev.exit.thread ], [ null, %_ZN5arrow6StatusD2Ev.exit ] ; 4 uses
  %i.w = load i32, ptr %.092, align 4, !tbaa !3
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %.092, i64 %i.y ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !31  ; 2 uses
  %i.ab = icmp ugt i16 %i.aa, 6
  br i1 %i.ab, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 6
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ae = zext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.092, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = icmp eq i8 %i.ag, 5
  %i.ai = icmp ugt i16 %i.aa, 8
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.092, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao ; 15 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i16, ptr %i.au, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i62 = icmp ne i16 %i.av, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !766 ; 2 uses
  %i.bc = icmp ne ptr %3, null                    ; 2 uses
  %i.bd = icmp ne ptr %4, null                    ; 2 uses
  %or.cond = or i1 %i.bc, %i.bd
  %i.be = icmp sgt i32 %i.bb, 0
  %or.cond94 = select i1 %or.cond, i1 %i.be, i1 false
  br i1 %or.cond94, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 13 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %wide.trip.count = zext nneg i32 %i.bb to i64
  br label %bb.d

_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit60
  call void @_ZN5arrow6Status8FromArgsIJRA63_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(63) @.str.27)
  br label %.critedge

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.bl = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.bm = sext i32 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.ap, i64 %i.bn ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !31
  %i.bq = icmp ugt i16 %i.bp, 8
  br i1 %i.bq, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63: ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i64 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i.i64, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65, label %bb.e

bb.e:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  br label %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65

_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63, %bb.e
  %i.by = phi ptr [ %i.bx, %bb.e ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i63 ], [ null, %bb.d ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = shl i64 %indvars.iv, 2
  %i.cb = and i64 %i.ca, 4294967292
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce ; 6 uses
  br i1 %i.bc, label %bb.f, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !31
  %i.cl = icmp ugt i16 %i.ck, 4
  br i1 %i.cl, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %bb.f, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.g
  %i.cr = phi i64 [ %i.cq, %bb.g ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.cs = load ptr, ptr %i.bf, align 8, !tbaa !488 ; 4 uses
  %i.ct = load ptr, ptr %i.bg, align 8, !tbaa !736
  %.not.i.i66 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not.i.i66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !440
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cu, ptr %i.bf, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.i:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.cv = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 6 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.cz, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.da = ashr exact i64 %i.cy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.db = add nsw i64 %.sroa.speculated.i.i.i.i, %i.da ; 2 uses
  %11 = icmp ult i64 %i.db, %i.da
  %i.dc = call i64 @llvm.umin.i64(i64 %i.db, i64 1152921504606846975)
  %12 = select i1 %11, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.dd = shl nuw nsw i64 %12, 3
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #23 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cy ; 2 uses
  store i64 %i.cr, ptr %i.df, align 8, !tbaa !440
  %i.dg = icmp sgt i64 %i.cy, 0
  br i1 %i.dg, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.de, ptr %3, align 8, !tbaa !490
  store ptr %i.dh, ptr %i.bf, align 8, !tbaa !488
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %12
  store ptr %i.di, ptr %i.bg, align 8, !tbaa !736
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.h, %_ZNK3org6apache5arrow7flatbuf12SparseTensor5shapeEv.exit65
  br i1 %i.bd, label %bb.m, label %bb.v

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.dj = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.cf, i64 %i.dl ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !31
  %i.do = icmp ugt i16 %i.dn, 6
  br i1 %i.do, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i68, label %._crit_edge.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i68: ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 6
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i69 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.i.i69, label %._crit_edge.i.i.i, label %bb.n

._crit_edge.i.i.i:                                ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i68, %bb.m
  store ptr %i.bh, ptr %9, align 8, !tbaa !101, !alias.scope !792
  store i64 0, ptr %i.bi, align 8, !tbaa !102, !alias.scope !792
  store i8 0, ptr %i.bh, align 8, !tbaa !14, !alias.scope !792
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

bb.n:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i68
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.du ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !98, !noalias !798 ; 3 uses
  %i.dy = zext i32 %i.dx to i64                   ; 5 uses
  store ptr %i.bh, ptr %9, align 8, !tbaa !101, !alias.scope !798
  %i.dz = icmp ugt i32 %i.dx, 15
  br i1 %i.dz, label %.noexc.i14.i, label %._crit_edge.i.i.i.i

.noexc.i14.i:                                     ; preds = %bb.n
  %i.ea = add nuw nsw i64 %i.dy, 1
  %i.eb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #23 ; 2 uses
  store ptr %i.eb, ptr %9, align 8, !tbaa !103, !alias.scope !798
  store i64 %i.dy, ptr %i.bh, align 8, !tbaa !14, !alias.scope !798
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i14.i, %bb.n
  %i.ec = phi ptr [ %i.eb, %.noexc.i14.i ], [ %i.bh, %bb.n ] ; 3 uses
  switch i32 %i.dx, label %bb.p [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ed = load i8, ptr %i.dw, align 4, !tbaa !14, !noalias !798
  store i8 %i.ed, ptr %i.ec, align 1, !tbaa !14
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr nonnull align 4 %i.dw, i64 %i.dy, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i.i
  store i64 %i.dy, ptr %i.bi, align 8, !tbaa !102, !alias.scope !798
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.dy
  store i8 0, ptr %i.ee, align 1, !tbaa !14
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit: ; preds = %._crit_edge.i.i.i, %bb.q
  %i.ef = load ptr, ptr %i.bj, align 8, !tbaa !775 ; 6 uses
  %i.eg = load ptr, ptr %i.bk, align 8, !tbaa !777
  %.not.i.i70 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not.i.i70, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !101
  %i.ei = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.bh
  br i1 %i.ej, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ek = load i64, ptr %i.bi, align 8, !tbaa !102 ; 3 uses
  %i.el = icmp ult i64 %i.ek, 16
  call void @llvm.assume(i1 %i.el)
  %i.em = add nuw nsw i64 %i.ek, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.em, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.r
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !103
  %i.en = load i64, ptr %i.bh, align 8, !tbaa !14
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !14
  %.pre = load i64, ptr %i.bi, align 8, !tbaa !102
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.eo = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ek, %bb.s ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !102
  store ptr %i.bh, ptr %9, align 8, !tbaa !103
  store i64 0, ptr %i.bi, align 8, !tbaa !102
  %i.eq = load ptr, ptr %i.bj, align 8, !tbaa !775
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.er, ptr %i.bj, align 8, !tbaa !775
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.u

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.t
  %.pre96 = load ptr, ptr %9, align 8, !tbaa !103 ; 2 uses
  %i.es = icmp eq ptr %.pre96, %i.bh
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.et = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %.pre96, i64 noundef %i.eu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %9, align 8, !tbaa !103   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.bh
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.u
  %i.ey = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.aq

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.d, !llvm.loop !799

.loopexit.loopexit:                               ; preds = %bb.v
  %.pre97.pre.pre = load i32, ptr %i.ap, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit
  %.pre97.pre = phi i32 [ %.pre97.pre.pre, %.loopexit.loopexit ], [ %i.aq, %_ZNK3org6apache5arrow7flatbuf7Message22header_as_SparseTensorEv.exit ] ; 2 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.fa = sext i32 %.pre97.pre to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr inbounds i8, ptr %i.ap, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !31
  %i.fe = icmp ugt i16 %i.fd, 10
  br i1 %i.fe, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i74, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor15non_zero_lengthEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i74: ; preds = %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 10
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !31 ; 2 uses
  %.not.i.i75 = icmp eq i16 %i.fg, 0
  br i1 %.not.i.i75, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor15non_zero_lengthEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i74
  %i.fh = zext i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf12SparseTensor15non_zero_lengthEv.exit

_ZNK3org6apache5arrow7flatbuf12SparseTensor15non_zero_lengthEv.exit: ; preds = %bb.w, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i74, %bb.x
  %i.fk = phi i64 [ %i.fj, %bb.x ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i74 ], [ 0, %bb.w ]
  store i64 %i.fk, ptr %5, align 8, !tbaa !440
  br label %bb.y

bb.y:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf12SparseTensor15non_zero_lengthEv.exit, %.loopexit
  %.not51 = icmp eq ptr %6, null
  %.pre99 = sext i32 %.pre97.pre to i64
  %.pre100 = sub nsw i64 0, %.pre99               ; 2 uses
  br i1 %.not51, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fl = getelementptr inbounds i8, ptr %i.ap, i64 %.pre100 ; 3 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !31 ; 2 uses
  %i.fn = icmp ugt i16 %i.fm, 12
  br i1 %i.fn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i76, label %_ZNK3org6apache5arrow7flatbuf12SparseTensor16sparseIndex_typeEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i76: ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor9GetResultERKSt10shared_ptrINS_5FieldEEPN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEE:_ZN5arrow6StatusD2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !839
  %i.bl = invoke noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(72) %i.bh)
          to label %.noexc unwind label %bb.o, !inline_history !842

.noexc:                                           ; preds = %bb.n
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !18, !noalias !839
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !839
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(72) %i.bh)
          to label %.noexc71 unwind label %bb.o, !inline_history !842

.noexc71:                                         ; preds = %.noexc
  %i.bq = invoke i32 @_ZN3org6apache5arrow7flatbuf9CreateIntERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEib(ptr noundef nonnull align 8 dereferenceable(128) %i.bf, i32 noundef %i.bl, i1 noundef zeroext %i.bp)
          to label %.noexc72 unwind label %bb.o

.noexc72:                                         ; preds = %.noexc71
  %i.br = getelementptr inbounds nuw i8, ptr %.048, i64 104
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !843, !range !72, !noalias !839, !noundef !73
  %i.bt = trunc nuw i8 %i.bs to i1
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
  %9 = icmp ult i64 %i.dr, %i.dq
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dr, i64 2305843009213693951)
  %10 = select i1 %9, i64 2305843009213693951, i64 %i.ds ; 3 uses
  %.not.i.i.i.i88 = icmp ne i64 %10, 0
  call void @llvm.assume(i1 %.not.i.i.i.i88)
  %i.dt = shl nuw nsw i64 %10, 2
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #23
          to label %.noexc90 unwind label %.loopexit ; 8 uses

.noexc90:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.do
  store i32 %i.di, ptr %i.dv, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.dj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc90
  %i.dw = ptrtoaddr ptr %i.du to i64
  %i.dx = add i64 %i.dm, -4
  %i.dy = sub i64 %i.dx, %i.dn                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 2
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dy, 28
  %i.eb = sub i64 %i.dw, %i.dn
  %diff.check = icmp ult i64 %i.eb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ea, 9223372036854775800     ; 3 uses
  %i.ec = shl i64 %n.vec, 2                       ; 2 uses
  %i.ed = getelementptr i8, ptr %i.du, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.cx, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.du, i64 %i.ef ; 2 uses
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
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ed, %middle.block ]
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
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.du, %.noexc90 ], [ %i.ed, %middle.block ], [ %i.el, %.lr.ph.i.i.i.i.i.i ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.do) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.em, ptr %.phi.trans.insert122, align 8, !tbaa !849
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %10
  store ptr %i.en, ptr %i.cu, align 8, !tbaa !382
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE9push_backEOS8_.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.ac
  %i.eo = phi ptr [ %i.em, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.dl, %bb.ac ]
  %i.ep = phi ptr [ %i.du, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %i.cx, %bb.ac ] ; 2 uses
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
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #22
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.az

bb.as:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.at:                                            ; preds = %bb.ai
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

bb.au:                                            ; preds = %bb.aj
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.z, %bb.ah, %bb.at, %bb.au, %bb.as
  %.pn58.ph = phi { ptr, i32 } [ %i.gu, %bb.au ], [ %i.gs, %bb.as ], [ %i.ew, %bb.ah ], [ %i.cr, %bb.z ], [ %i.gt, %bb.at ]
  %.pr = load ptr, ptr %8, align 8, !tbaa !380
  br label %bb.av

bb.av:                                            ; preds = %thread-pre-split, %.loopexit, %.loopexit.split-lp
  %i.gv = phi ptr [ %.pr, %thread-pre-split ], [ %i.cx, %.loopexit ], [ %i.cx, %.loopexit.split-lp ] ; 3 uses
  %.pn58 = phi { ptr, i32 } [ %.pn58.ph, %thread-pre-split ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i96 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !382
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EED2Ev.exit97: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit70

.critedge:                                        ; preds = %bb.j
  %i.hb = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i98, label %_ZN5arrow6ResultIlED2Ev.exit99, label %bb.ax, !prof !58

bb.ax:                                            ; preds = %.critedge
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !61, !range !72, !noundef !73
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %_ZN5arrow6ResultIlED2Ev.exit99, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %_ZN5arrow6ResultIlED2Ev.exit99

_ZN5arrow6ResultIlED2Ev.exit99:                   ; preds = %.critedge, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.az
end_hunk_8
begin_hunk_9_@_ZN3org6apache5arrow7flatbuf12CreateSchemaERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_10EndiannessENS4_6OffsetINS4_6VectorINS9_INS2_5FieldEEEjEEEENS9_INSA_INS9_INS2_8KeyValueEEEjEEEENS9_INSA_IljEEEE:bb.a

.lr.ph.preheader.i.i.i.i.i27:                     ; preds = %bb.m, %bb.l
  %i.bm = phi i32 [ %i.bb, %bb.l ], [ %.pre.i.i.i.i36, %bb.m ]
  %i.bn = phi ptr [ %.pre4.i.i.i.i.i.i26, %bb.l ], [ %.pre.i.i.i.i.i.i35, %bb.m ]
  %i.bo = sub nsw i64 0, %i.be
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  store ptr %i.bp, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !407
  %i.bq = add i32 %i.bm, %i.bd
  store i32 %i.bq, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i28.epil

.lr.ph.i.i.i.i.i28.epil:                          ; preds = %.lr.ph.i.i.i.i.i28.epil, %.lr.ph.preheader.i.i.i.i.i27
  %.05.i.i.i.i.i29.epil = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i28.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i27 ] ; 2 uses
  %epil.iter61 = phi i64 [ %epil.iter61.next, %.lr.ph.i.i.i.i.i28.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i27 ]
  %i.br = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i25, align 8, !tbaa !407
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.05.i.i.i.i.i29.epil
  store i8 0, ptr %i.bs, align 1, !tbaa !14
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
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_122AppendKeyValueMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEERKNS_16KeyValueMetadataEPSt6vectorINS4_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaISI_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull captures(none) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
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
  %3 = icmp ult i64 %i.be, %i.bd
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %4 = select i1 %3, i64 2305843009213693951, i64 %i.bf ; 3 uses
  %.not.i.i.i.i12 = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i12)
  %i.bg = shl nuw nsw i64 %4, 2
  %i.bh = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #23 ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bb
  store i32 %i.au, ptr %i.bi, align 4, !tbaa !3
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.av
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = ptrtoaddr ptr %i.bh to i64
  %i.bk = add i64 %i.az, -4
  %i.bl = sub i64 %i.bk, %i.ba                    ; 2 uses
  %i.bm = lshr i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check28 = icmp ult i64 %i.bl, 28
  %i.bo = sub i64 %i.bj, %i.ba
  %diff.check26 = icmp ult i64 %i.bo, 32
  %or.cond43 = or i1 %min.iters.check28, %diff.check26
  br i1 %or.cond43, label %.lr.ph.i.i.i.i.i.i.preheader44, label %vector.ph29

vector.ph29:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec31 = and i64 %i.bn, 9223372036854775800   ; 3 uses
  %i.bp = shl i64 %n.vec31, 2                     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 %i.bp  ; 2 uses
  %i.br = getelementptr i8, ptr %i.ay, i64 %i.bp
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph29
  %index33 = phi i64 [ 0, %vector.ph29 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.bs = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.bh, i64 %i.bs ; 2 uses
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
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bq, %middle.block39 ]
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
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bh, %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bq, %middle.block39 ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 4
  %.not.i23.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  store ptr %i.bh, ptr %2, align 8, !tbaa !380
  store ptr %i.bz, ptr %i.al, align 8, !tbaa !849
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %4
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
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = sub i32 0, %i.c
  %i.h = and i32 %i.g, 3                          ; 3 uses
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %.pre4.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !491
  %i.l = ptrtoint ptr %.pre4.i.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp samesign ult i64 %i.o, %i.i
  br i1 %i.p, label %bb.e, label %.lr.ph.preheader.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.i)
  %.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i.i.i = load i32, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %i.c, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.r = phi ptr [ %.pre4.i.i.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i.i.i, %bb.e ]
  %i.s = sub nsw i64 0, %i.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store ptr %i.t, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %i.u = add i32 %i.q, %i.h
  store i32 %i.u, ptr %i.b, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.epil = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i ]
  %i.v = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !407
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.05.i.i.i.i.i.epil
  store i8 0, ptr %i.w, align 1, !tbaa !14
  %i.x = add nuw i64 %.05.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.i
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !882

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.epil
  %.pre.i.i.i = load i32, ptr %i.b, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i
  %i.y = phi i32 [ %.pre.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i ], [ %i.c, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i ]
  %reass.sub = sub i32 %i.y, %7
  %i.z = add i32 %reass.sub, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 16, i32 noundef %i.z, i32 noundef 0)
  br label %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit

_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit: ; preds = %bb.a, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i
  %.not.i.i.i12 = icmp eq i32 %6, 0
  br i1 %.not.i.i.i12, label %_ZN3org6apache5arrow7flatbuf12FieldBuilder12add_childrenEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_5FieldEEEjEEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3org6apache5arrow7flatbuf12FieldBuilder19add_custom_metadataEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_8KeyValueEEEjEEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !307
  %i.ac = icmp ult i64 %i.ab, 4
end_hunk_9
begin_hunk_10_@_ZN5arrow15VisitTypeInlineINS_3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitorEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !14
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !1197
  %i.yd = load ptr, ptr %7, align 8, !tbaa !103   ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.yf = icmp eq ptr %i.yd, %i.ye
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.yg = load i64, ptr %i.ye, align 8, !tbaa !14
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !1197
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !1202
  br label %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8ListTypeE.exit

bb.cl:                                            ; preds = %bb.ci
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

bb.cm:                                            ; preds = %bb.cj
  %i.yj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yk = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232: ; preds = %bb.cm
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !14
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232, %bb.cl
  %.pn.i = phi { ptr, i32 } [ %i.yi, %bb.cl ], [ %i.yj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i232 ], [ %i.yj, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !1197
  %i.yp = load ptr, ptr %4, align 8, !tbaa !103   ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234
  %i.ys = load i64, ptr %i.yq, align 8, !tbaa !14
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.yt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !1197
  br label %bb.cp

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

bb.co:                                            ; preds = %bb.ck
  %i.yv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yw = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.co
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !14
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226, %bb.cn
  %.pn13.i = phi { ptr, i32 } [ %i.yu, %bb.cn ], [ %i.yv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226 ], [ %i.yv, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !1197
  %i.zb = load ptr, ptr %7, align 8, !tbaa !103   ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.zd = icmp eq ptr %i.zb, %i.zc
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %i.ze = load i64, ptr %i.zc, align 8, !tbaa !14
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.zf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !1197
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231
  %.pn13.pn.i = phi { ptr, i32 } [ %.pn13.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ]
  resume { ptr, i32 } %.pn13.pn.i

bb.cq:                                            ; preds = %tailrecurse
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.41)
  br label %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8ListTypeE.exit

_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_8ListTypeE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZN5arrow6StatusD2Ev.exit253, %bb.ch, %_ZN5arrow6StatusD2Ev.exit225, %bb.cd, %_ZN5arrow6StatusD2Ev.exit219, %bb.cc, %_ZN5arrow6StatusD2Ev.exit213, %bb.cb, %_ZN5arrow6StatusD2Ev.exit207, %bb.ca, %_ZN5arrow6StatusD2Ev.exit201, %bb.bz, %_ZN5arrow6StatusD2Ev.exit195, %bb.by, %_ZN5arrow6StatusD2Ev.exit189, %bb.bx, %_ZN5arrow6StatusD2Ev.exit183, %bb.cq, %bb.cf, %bb.ce, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_13TimestampTypeE.exit, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int64TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int32TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_10UInt16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9Int16TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_9UInt8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitINS_8Int8TypeEEENSt9enable_ifIXsr15is_integer_typeIT_EE5valueENS_6StatusEE4typeERKS7_.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor5VisitERKNS_9UnionTypeE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(120) initializes((32, 33)) %1, ptr noundef nonnull align 8 dereferenceable(120) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 14, ptr %i.a, align 8, !tbaa !858
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor16VisitChildFieldsERKNS_8DataTypeE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.b = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.a, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = tail call noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !205  ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.n, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.i, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = shl nuw nsw i64 %i.m, 2
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.r = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.18.3, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %i.r, %._crit_edge.loopexit ]
  %.sroa.043.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.043.3, %._crit_edge.loopexit ] ; 6 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817
  %i.t = ptrtoint ptr %.sroa.043.0.lcssa to i64   ; 2 uses
  %i.u = sub i64 %.sroa.12.0.lcssa, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIiTtTpTyENS0_6OffsetETtTpTyENS0_6VectorEEET0_IJT1_IJT_EEEEPKS8_m(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef %.sroa.043.0.lcssa, i64 noundef %i.v)
          to label %bb.h unwind label %bb.n       ; 2 uses

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.043.072 = phi ptr [ %.sroa.043.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.p, %.lr.ph.preheader ] ; 7 uses
  %.sroa.12.071 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.p, %.lr.ph.preheader ] ; 6 uses
  %.sroa.18.070 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.sroa.040.069 = phi ptr [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.x = load i8, ptr %.sroa.040.069, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.071, %.sroa.18.070
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i32 %i.y, ptr %.sroa.12.071, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.d:                                             ; preds = %.lr.ph
  %i.z = ptrtoint ptr %.sroa.12.071 to i64
  %i.aa = ptrtoint ptr %.sroa.043.072 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %4 = icmp ult i64 %i.ae, %i.ad
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %5 = select i1 %4, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %5, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %5, 2
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23
          to label %.noexc30 unwind label %.loopexit ; 4 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !3
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr align 4 %.sroa.043.072, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc30
  %.not.i17.i.i.i = icmp eq ptr %.sroa.043.072, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.072, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %5
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.18.3 = phi ptr [ %i.ak, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.18.070, %bb.c ] ; 2 uses
  %.pn = phi ptr [ %i.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.12.071, %bb.c ]
  %.sroa.043.3 = phi ptr [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.043.072, %bb.c ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.040.069, i64 1 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.i
  br i1 %i.am, label %._crit_edge.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %1, align 8, !tbaa !838, !nonnull !73, !align !817 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  store i8 1, ptr %i.ao, align 8, !tbaa !305
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !301 ; 4 uses
  %.not.i.i.i.i31 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i31, label %_ZN3org6apache5arrow7flatbuf12UnionBuilder11add_typeIdsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIijEEEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !307
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %bb.j, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  store i64 4, ptr %i.ar, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.au = sub i32 0, %i.aq
  %i.av = and i32 %i.au, 3                        ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.av, 0
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i
  %.pre4.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !491
  %i.az = ptrtoint ptr %.pre4.i.i.i.i.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = icmp samesign ult i64 %i.bc, %i.aw
  br i1 %i.bd, label %bb.l, label %.lr.ph.preheader.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.an, i64 noundef %i.aw)
          to label %.noexc32 unwind label %bb.o

.noexc32:                                         ; preds = %bb.l
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.noexc32, %bb.k
  %i.be = phi i32 [ %i.aq, %bb.k ], [ %.pre.i.i.i.i.i, %.noexc32 ]
  %i.bf = phi ptr [ %.pre4.i.i.i.i.i.i.i, %bb.k ], [ %.pre.i.i.i.i.i.i.i, %.noexc32 ]
  %i.bg = sub nsw i64 0, %i.aw
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg
  store ptr %i.bh, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407
  %i.bi = add i32 %i.be, %i.av
  store i32 %i.bi, ptr %i.ap, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.epil = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.bj = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !407
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.05.i.i.i.i.i.i.epil
  store i8 0, ptr %i.bk, align 1, !tbaa !14
  %i.bl = add nuw i64 %.05.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.aw
  br i1 %epil.iter.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !1205

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.epil
  %.pre.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !301
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i
  %i.bm = phi i32 [ %.pre.i.i.i.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i.i ], [ %i.aq, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i.i ]
  %reass.sub = sub i32 %i.bm, %i.w
  %i.bn = add i32 %reass.sub, 4
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %i.an, i16 noundef zeroext 6, i32 noundef %i.bn, i32 noundef 0)
          to label %_ZN3org6apache5arrow7flatbuf12UnionBuilder11add_typeIdsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIijEEEE.exit.i unwind label %bb.o

_ZN3org6apache5arrow7flatbuf12UnionBuilder11add_typeIdsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIijEEEE.exit.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, %bb.h
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIsEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %i.an, i16 noundef zeroext 4, i16 noundef signext %i.f, i16 noundef signext 0)
          to label %.noexc34 unwind label %bb.o

.noexc34:                                         ; preds = %_ZN3org6apache5arrow7flatbuf12UnionBuilder11add_typeIdsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIijEEEE.exit.i
  %i.bo = invoke noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %i.an, i32 noundef %i.aq)
          to label %_ZN3org6apache5arrow7flatbuf11CreateUnionERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_9UnionModeENS4_6OffsetINS4_6VectorIijEEEE.exit unwind label %bb.o

_ZN3org6apache5arrow7flatbuf11CreateUnionERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_9UnionModeENS4_6OffsetINS4_6VectorIijEEEE.exit: ; preds = %.noexc34
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !3
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !1206
  %.not.i.i.i = icmp eq ptr %.sroa.043.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3org6apache5arrow7flatbuf11CreateUnionERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_9UnionModeENS4_6OffsetINS4_6VectorIijEEEE.exit
  %i.bq = ptrtoint ptr %.sroa.18.0.lcssa to i64
  %i.br = sub i64 %i.bq, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.0.lcssa, i64 noundef %i.br) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.n:                                             ; preds = %._crit_edge
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %.noexc34, %_ZN3org6apache5arrow7flatbuf12UnionBuilder11add_typeIdsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIijEEEE.exit.i, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i.i, %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.o
  %.sroa.18.067 = phi ptr [ %.sroa.18.0.lcssa, %bb.o ], [ %.sroa.18.0.lcssa, %bb.n ], [ %.sroa.12.071, %.loopexit ], [ %.sroa.12.071, %.loopexit.split-lp ]
  %.sroa.043.061 = phi ptr [ %.sroa.043.0.lcssa, %bb.o ], [ %.sroa.043.0.lcssa, %bb.n ], [ %.sroa.043.072, %.loopexit ], [ %.sroa.043.072, %.loopexit.split-lp ] ; 3 uses
  %.pn21 = phi { ptr, i32 } [ %i.bt, %bb.o ], [ %i.bs, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.043.061, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = ptrtoint ptr %.sroa.18.067 to i64
  %i.bv = ptrtoint ptr %.sroa.043.061 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.061, i64 noundef %i.bw) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %_ZN3org6apache5arrow7flatbuf11CreateUnionERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_9UnionModeENS4_6OffsetINS4_6VectorIijEEEE.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %.pn21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !307
  %i.c = icmp ult i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !301  ; 2 uses
  %i.f = sub i32 0, %i.e
  %i.g = and i32 %i.f, 3                          ; 3 uses
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  br i1 %.not.i.i.i.i, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !491
  %i.k = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp samesign ult i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %.lr.ph.preheader.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.h)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i, %bb.d ]
  %i.q = phi ptr [ %.pre4.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %bb.d ]
  %i.r = sub nsw i64 0, %i.h
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store ptr %i.s, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %i.t = add i32 %i.p, %i.g
  store i32 %i.t, ptr %i.d, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.epil
end_hunk_10
begin_hunk_11_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_:bb.a

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.l)
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e, %bb.d
  %i.t = phi i32 [ %i.i, %bb.d ], [ %.pre.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre4.i.i.i.i, %bb.d ], [ %.pre.i.i.i.i, %bb.e ]
  %i.v = sub nsw i64 0, %i.l
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store ptr %i.w, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
  %i.x = add i32 %i.t, %i.k
  store i32 %i.x, ptr %i.h, align 8, !tbaa !301
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil = phi i64 [ %i.aa, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.y = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !407
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
define internal fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_124FieldToFlatbufferVisitor16VisitChildFieldsERKNS_8DataTypeE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
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
  %6 = icmp ult i64 %i.ar, %i.aq
  %i.as = call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %7 = select i1 %6, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %7, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.at = shl nuw nsw i64 %7, 2
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #23
          to label %.noexc28 unwind label %.loopexit ; 8 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  %i.aw = load i32, ptr %3, align 4, !tbaa !3
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !3
  %.not10.i.i.i.i.i = icmp eq ptr %i.al, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc28
  %i.ax = ptrtoaddr ptr %i.au to i64
  %i.ay = add i64 %i.am, -4
  %i.az = sub i64 %i.ay, %i.an                    ; 2 uses
  %i.ba = lshr i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.az, 28
  %i.bc = sub i64 %i.ax, %i.an
  %diff.check = icmp ult i64 %i.bc, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bb, 9223372036854775800     ; 3 uses
  %i.bd = shl i64 %n.vec, 2                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.au, i64 %i.bd  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.bg ; 2 uses
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
  %.012.i.i.i.i.i.ph = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
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
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.au, %.noexc28 ], [ %i.be, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #24
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf5FieldEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.au, ptr %i.u, align 8, !tbaa !372
  store ptr %i.bn, ptr %i.v, align 8, !tbaa !857
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %7
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

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i37
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i34, i64 noundef 80) #24
  %.not.i.i.i39 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i39, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i40, label %.lr.ph.i.i.i33, !llvm.loop !371

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i40: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i38, %.critedge22
  %i.dk = load ptr, ptr %i.o, align 16, !tbaa !350
  %i.dl = load i64, ptr %i.q, align 8, !tbaa !358
  %i.dm = shl i64 %i.dl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dk, i8 0, i64 %i.dm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.dn = load ptr, ptr %i.o, align 16, !tbaa !350 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.p
  br i1 %i.do, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit43, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i40
  %i.dp = load i64, ptr %i.q, align 8, !tbaa !358
  %i.dq = shl i64 %i.dp, 3
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #24
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit43

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit43: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i40, %bb.l
  %i.dr = load ptr, ptr %i.x, align 8, !tbaa !372 ; 3 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit43
  %i.ds = load ptr, ptr %i.y, align 8, !tbaa !375
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dv) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

._crit_edge:                                      ; preds = %bb.j, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !1228
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN3org6apache5arrow7flatbuf9CreateMapERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !301  ; 2 uses
  %i.d = zext i1 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i8, ptr %i.e, align 8, !range !72
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i = select i1 %1, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.b, label %_ZN3org6apache5arrow7flatbuf10MapBuilder14add_keysSortedEb.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !307
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.i.i
end_hunk_11
begin_hunk_12_@_ZNK3org6apache5arrow7flatbuf8KeyValue6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE:bb.a
  %i.bx = icmp ugt i64 %i.bv, %i.bw
  br i1 %i.bx, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i: ; preds = %bb.g
  %i.by = add nuw nsw i64 %i.bw, 4                ; 3 uses
  %i.bz = add i64 %i.by, %i.bq                    ; 2 uses
  %i.ca = icmp uge i64 %i.by, %i.k
  %i.cb = sub nuw i64 %i.k, %i.by
  %i.cc = icmp ugt i64 %i.bq, %i.cb
  %.not14.i = select i1 %i.ca, i1 true, i1 %i.cc
  %i.cd = add i64 %i.k, -1
  %.not10.i = icmp ugt i64 %i.bz, %i.cd
  %or.cond.i = or i1 %.not10.i, %.not14.i
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit

_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bz
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  %i.cg = icmp eq i8 %i.cf, 0
  br i1 %i.cg, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit.thread33, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit.thread33: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit
  %i.ch = icmp ugt i16 %i.ax, 6
  br i1 %i.ch, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i11, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i11: ; preds = %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit.thread33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !31 ; 3 uses
  %.not.i12 = icmp eq i16 %i.cj, 0
  br i1 %.not.i12, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39, label %bb.h

bb.h:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i11
  %i.ck = zext i16 %i.cj to i64
  %i.cl = add i64 %i.d, %i.ck                     ; 4 uses
  %i.cm = and i64 %i.cl, 3
  %i.cn = icmp ne i64 %i.cm, 0
  %.not2.i.i.i.i13 = select i1 %i.cn, i1 %i.i, i1 false
  %.not57 = icmp ugt i64 %i.cl, %i.m
  %or.cond60 = or i1 %.not2.i.i.i.i13, %.not57
  br i1 %or.cond60, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cl
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %or.cond.i.i.i15 = icmp sgt i32 %i.cp, 0
  br i1 %or.cond.i.i.i15, label %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit17, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit17: ; preds = %bb.i
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add i64 %i.cl, %i.cq
  %i.cs = add i64 %i.k, -1
  %.not.i.i.i16.not = icmp ugt i64 %i.cr, %i.cs
  br i1 %.not.i.i.i16.not, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i18

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i18: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit17
  %i.ct = zext i16 %i.cj to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.c                     ; 4 uses
  %i.da = and i64 %i.cz, 3
  %i.db = icmp ne i64 %i.da, 0
  %.not2.i.i.i21 = select i1 %i.db, i1 %i.i, i1 false
  %.not58 = icmp ugt i64 %i.cz, %i.m
  %or.cond61 = or i1 %.not2.i.i.i21, %.not58
  br i1 %or.cond61, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i18
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1302
  %i.df = zext i32 %i.dc to i64                   ; 2 uses
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i23, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i23: ; preds = %bb.j
  %i.dh = add nuw nsw i64 %i.df, 4                ; 3 uses
  %i.di = add i64 %i.dh, %i.cz                    ; 2 uses
  %i.dj = icmp uge i64 %i.dh, %i.k
  %i.dk = sub nuw i64 %i.k, %i.dh
  %i.dl = icmp ugt i64 %i.cz, %i.dk
  %.not14.i24 = select i1 %i.dj, i1 true, i1 %i.dl
  %i.dm = add i64 %i.k, -1
  %.not10.i25 = icmp ugt i64 %i.di, %i.dm
  %or.cond.i26 = or i1 %.not10.i25, %.not14.i24
  br i1 %or.cond.i26, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27

_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27: ; preds = %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i23
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !14
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39, label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i11, %bb.d, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit.thread33, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27
  store i32 %i.t, ptr %i.s, align 8, !tbaa !1301
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit.thread: ; preds = %bb.j, %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i23, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i18, %bb.i, %bb.h, %bb.g, %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.f, %bb.e, %bb.a, %bb.c, %bb.b, %_ZNK22arrow_vendored_private11flatbuffers8Verifier6VerifyIiEEbm.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27, %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit17, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit, %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit, %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit
  %i.dq = phi i1 [ false, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27 ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit17 ], [ false, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table12VerifyOffsetIjEEbRKNS0_8VerifierEt.exit ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table16VerifyTableStartERNS0_8VerifierE.exit ], [ true, %_ZNK22arrow_vendored_private11flatbuffers8Verifier12VerifyStringEPKNS0_6StringE.exit27.thread39 ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.g ], [ false, %_ZNK22arrow_vendored_private11flatbuffers8Verifier6VerifyIiEEbm.exit.i.i ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.j ], [ false, %bb.e ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ false, %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i ], [ false, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i18 ], [ false, %_ZNK22arrow_vendored_private11flatbuffers8Verifier20VerifyVectorOrStringIjEEbPKhmPm.exit.i23 ], [ false, %bb.h ]
  ret i1 %i.dq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(29) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1308
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1308
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1308, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(29) %2) #22, !noalias !1308
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(29) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1308 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1308
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1308
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA29_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !775  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1311   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !101
  %i.r = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !102  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !103
  %i.y = load i64, ptr %i.s, align 8, !tbaa !14
  store i64 %i.y, ptr %i.q, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !102
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !102
  store ptr %i.s, ptr %2, align 8, !tbaa !103
  store i64 0, ptr %i.aa, align 8, !tbaa !102
  store i8 0, ptr %i.s, align 8, !tbaa !14
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !101, !alias.scope !1312, !noalias !1315
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1315, !noalias !1312 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !102, !alias.scope !1315, !noalias !1312 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !1317
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !103, !alias.scope !1312, !noalias !1315
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !14, !alias.scope !1315, !noalias !1312
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !14, !alias.scope !1312, !noalias !1315
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !102, !alias.scope !1315, !noalias !1312
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.al = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !102, !alias.scope !1312, !noalias !1315
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !103, !alias.scope !1315, !noalias !1312
  store i64 0, ptr %i.am, align 8, !tbaa !102, !alias.scope !1315, !noalias !1312
  store i8 0, ptr %i.ae, align 8, !tbaa !14, !alias.scope !1315, !noalias !1312
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1318

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i18, align 8, !tbaa !101, !alias.scope !1319, !noalias !1322
  %i.as = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !103, !alias.scope !1322, !noalias !1319 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !102, !alias.scope !1322, !noalias !1319 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !1324
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !103, !alias.scope !1319, !noalias !1322
  %i.az = load i64, ptr %i.at, align 8, !tbaa !14, !alias.scope !1322, !noalias !1319
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !14, !alias.scope !1319, !noalias !1322
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !102, !alias.scope !1322, !noalias !1319
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.f
  %i.ba = phi i64 [ %i.aw, %bb.f ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !102, !alias.scope !1319, !noalias !1322
  store ptr %i.at, ptr %.0911.i.i.i19, align 8, !tbaa !103, !alias.scope !1322, !noalias !1319
  store i64 0, ptr %i.bb, align 8, !tbaa !102, !alias.scope !1322, !noalias !1319
  store i8 0, ptr %i.at, align 8, !tbaa !14, !alias.scope !1322, !noalias !1319
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !1318

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !777
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bi) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !1311
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !775
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %4
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !777
  ret void
}

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !102  ; 7 uses
  %i.e = add i64 %i.d, %i.b                       ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !103    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 3 uses
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.j = load i64, ptr %i.g, align 8
  %i.k = select i1 %i.h, i64 15, i64 %i.j
  %i.l = icmp ugt i64 %i.e, %i.k                  ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !103   ; 4 uses
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %.pre, %i.m                  ; 2 uses
  br i1 %i.n, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.o)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12: ; preds = %bb.c, %bb.d
  %i.p = load i64, ptr %i.m, align 8
  %i.q = select i1 %i.n, i64 15, i64 %i.p
  %.not = icmp ugt i64 %i.e, %i.q
  br i1 %.not, label %bb.f, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !101
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.e:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102  ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.critedge
  store ptr %i.t, ptr %0, align 8, !tbaa !103
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !14
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !102
  store ptr %i.u, ptr %i.r, align 8, !tbaa !103
  store i64 0, ptr %i.ab, align 8, !tbaa !102
  store i8 0, ptr %i.u, align 8, !tbaa !14
  br label %bb.o

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.ae = sub i64 9223372036854775807, %i.b
  %i.af = icmp ult i64 %i.ae, %i.d
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ag = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ag)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  br i1 %i.l, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load i8, ptr %.pre, align 1, !tbaa !14
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %.pre, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, ptr noundef %.pre, i64 noundef %i.d)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.e, ptr %i.a, align 8, !tbaa !102
  %i.aj = load ptr, ptr %1, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.e
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !101
  %i.am = load ptr, ptr %1, align 8, !tbaa !103   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.g
  br i1 %i.an, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.am, ptr %0, align 8, !tbaa !103
  %i.ar = load i64, ptr %i.g, align 8, !tbaa !14
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !14
  %.pre15 = load i64, ptr %i.a, align 8, !tbaa !102
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.as = phi i64 [ %i.ao, %bb.n ], [ %.pre15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13 ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !102
  store ptr %i.g, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %i.a, align 8, !tbaa !102
  store i8 0, ptr %i.g, align 8, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
  ret void
}

declare void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !17
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !248
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !248
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
end_hunk_12
