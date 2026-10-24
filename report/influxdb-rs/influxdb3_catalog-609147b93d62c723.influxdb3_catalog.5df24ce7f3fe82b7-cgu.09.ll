Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.09?download=true
inline.NumInlined: 2842
inline.NumDeleted: 1275
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodermEINtNtB8_5coder7EncodermE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4ItermEECs844E4pPEVZX_17influxdb3_catalog:bb.a
  %.ph = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %.lr.ph ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.q = phi ptr [ %i.t, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.r, %scalar.ph ], [ %.sroa.0.06.ph, %scalar.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  %i.s = load i32, ptr %.sroa.0.06, align 4, !alias.scope !3455, !noundef !5
  store i32 %i.s, ptr %i.q, align 4, !noalias !3456
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.u = icmp eq ptr %i.r, %2
  br i1 %i.u, label %._crit_edge, label %scalar.ph, !llvm.loop !3453

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.k, %middle.block ], [ %i.t, %scalar.ph ]
  store ptr %.lcssa, ptr %i.d, align 8, !alias.scope !3454
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodertEINtNtB8_5coder7EncodertE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4ItertEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !3463 ; 6 uses
  %i.e = add i64 %i.c, -2
  %i.f = sub i64 %i.e, %i.b                       ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nuw i64 %i.g, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 6
  %.promoted9 = ptrtoaddr ptr %.promoted to i64
  %i.i = sub i64 %i.b, %.promoted9
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.f, 30
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.h, 12
  %n.vec = and i64 %i.h, -16                      ; 4 uses
  %i.k = shl i64 %n.vec, 1                        ; 2 uses
  %i.l = getelementptr i8, ptr %.promoted, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.n ; 2 uses
  %next.gep11 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %i.o = getelementptr i8, ptr %next.gep11, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep11, align 2, !alias.scope !3464
  %wide.load12 = load <8 x i16>, ptr %i.o, align 2, !alias.scope !3464
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !noalias !3465
  store <8 x i16> %wide.load12, ptr %i.p, align 2, !noalias !3465
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !3460

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3466

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.h, -4                     ; 3 uses
  %i.r = shl i64 %n.vec13, 1                      ; 2 uses
  %i.s = getelementptr i8, ptr %.promoted, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.r
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 2 uses
  %i.u = shl i64 %index14, 1                      ; 2 uses
  %next.gep15 = getelementptr i8, ptr %.promoted, i64 %i.u
  %next.gep16 = getelementptr i8, ptr %1, i64 %i.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %wide.load17 = load <4 x i16>, ptr %next.gep16, align 2, !alias.scope !3464
  store <4 x i16> %wide.load17, ptr %next.gep15, align 2, !noalias !3465
  %index.next18 = add nuw i64 %index14, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next18, %n.vec13
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3461

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %i.h, %n.vec13
  br i1 %cmp.n19, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.w = phi ptr [ %i.z, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.x, %vec.epilog.scalar.ph ], [ %.sroa.0.06.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 2 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %i.y = load i16, ptr %.sroa.0.06, align 2, !alias.scope !3464, !noundef !5
  store i16 %i.y, ptr %i.w, align 2, !noalias !3465
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 2 ; 2 uses
  %i.aa = icmp eq ptr %i.x, %2
  br i1 %i.aa, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3462

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.s, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.z, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.d, align 8, !alias.scope !3463
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncodertEINtNtB8_5coder7EncodertE15encode_vectoredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1A_5slice4iter4IterNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog6format7records5types21FieldFamilyDefinitionENCINvXs0_NvB2I_sz_1__NtB4d_28FieldFamilyDefinitionEncoderIBN_B2G_E15encode_vectoredB2f_E0EEB2O_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8, !alias.scope !3475 ; 6 uses
  %i.e = add i64 %i.c, -32
  %i.f = sub i64 %i.e, %i.b                       ; 4 uses
  %i.g = lshr i64 %i.f, 5
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 1504
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = lshr i64 %i.f, 4
  %i.j = and i64 %i.i, 1152921504606846974
  %i.k = getelementptr i8, ptr %.promoted, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 2
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = and i64 %i.f, -32
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 26
  %bound0 = icmp ult ptr %.promoted, %i.p
  %bound1 = icmp ult ptr %i.m, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 1152921504606846968      ; 4 uses
  %i.q = shl nuw nsw i64 %n.vec, 1
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q ; 2 uses
  %i.s = shl i64 %n.vec, 5
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.u
  %i.v = shl i64 %index, 5                        ; 8 uses
  %next.gep10 = getelementptr i8, ptr %1, i64 %i.v
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = getelementptr i8, ptr %1, i64 %i.v
  %i.y = getelementptr i8, ptr %1, i64 %i.v
  %i.z = getelementptr i8, ptr %1, i64 %i.v
  %i.aa = getelementptr i8, ptr %1, i64 %i.v
  %i.ab = getelementptr i8, ptr %1, i64 %i.v
  %i.ac = getelementptr i8, ptr %1, i64 %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep10, i64 24
  %i.ae = getelementptr i8, ptr %i.w, i64 56
  %i.af = getelementptr i8, ptr %i.x, i64 88
  %i.ag = getelementptr i8, ptr %i.y, i64 120
  %i.ah = getelementptr i8, ptr %i.z, i64 152
  %i.ai = getelementptr i8, ptr %i.aa, i64 184
  %i.aj = getelementptr i8, ptr %i.ab, i64 216
  %i.ak = getelementptr i8, ptr %i.ac, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %i.al = load i16, ptr %i.ad, align 2, !alias.scope !3477, !noundef !5
  %i.am = load i16, ptr %i.ae, align 2, !alias.scope !3477, !noundef !5
  %i.an = load i16, ptr %i.af, align 2, !alias.scope !3477, !noundef !5
  %i.ao = load i16, ptr %i.ag, align 2, !alias.scope !3477, !noundef !5
  %i.ap = load i16, ptr %i.ah, align 2, !alias.scope !3477, !noundef !5
  %i.aq = load i16, ptr %i.ai, align 2, !alias.scope !3477, !noundef !5
  %i.ar = load i16, ptr %i.aj, align 2, !alias.scope !3477, !noundef !5
  %i.as = load i16, ptr %i.ak, align 2, !alias.scope !3477, !noundef !5
  %i.at = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.au = insertelement <8 x i16> %i.at, i16 %i.am, i64 1
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 2
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 3
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 4
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 5
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 6
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 7
  store <8 x i16> %i.ba, ptr %next.gep, align 2, !alias.scope !3478, !noalias !3479
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !3473

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.r, %middle.block ]
  %.sroa.0.06.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.t, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bc = phi ptr [ %i.bg, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %i.bd, %scalar.ph ], [ %.sroa.0.06.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %i.bf = load i16, ptr %i.be, align 2, !alias.scope !3476, !noundef !5
  store i16 %i.bf, ptr %i.bc, align 2, !noalias !3480
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 2 uses
  %i.bh = icmp eq ptr %i.bd, %2
  br i1 %i.bh, label %._crit_edge, label %scalar.ph, !llvm.loop !3474

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.r, %middle.block ], [ %i.bg, %scalar.ph ]
  store ptr %.lcssa, ptr %i.d, align 8, !alias.scope !3475
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvYINtNtCs87O7Q65ve1k_7bitcode3int10IntEncoderyEINtNtB8_5coder7EncoderyE15encode_vectoredINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IteryEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.b, align 8, !alias.scope !3484
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.c = phi ptr [ %.promoted, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.0.06 = phi ptr [ %1, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.e = load i64, ptr %.sroa.0.06, align 8, !alias.scope !3485, !noundef !5
  store i64 %i.e, ptr %i.c, align 8, !noalias !3486
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = icmp eq ptr %i.d, %2
  br i1 %i.g, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !alias.scope !3484
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRBX_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBY_NtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBY_NtCsbFlE7Gjht9i_12influxdb3_id5TagIdEECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBY_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v48NodeModeEEB33_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBY_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v418PermissionSnapshotEEB33_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser18RawValueStrEmitterQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRIBY_NtNtNtNtCs844E4pPEVZX_17influxdb3_catalog8snapshot8versions2v424ColumnDefinitionSnapshotEEB33_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvXs7_NtCsdLkRf3gRIi6_10serde_json5errorNtB6_5ErrorNtNtCs5CfTnloWo2c_10serde_core3ser5Error6customReECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly captures(address, read_provenance) @156, i64 noundef 17)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsdLkRf3gRIi6_10serde_json3ser8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_entryeBM_ECs844E4pPEVZX_17influxdb3_catalog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3518)
  %i.b = load i8, ptr %0, align 8, !range !18, !alias.scope !3518, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #28, !noalias !3519
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !3518, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !23, !alias.scope !3518, !noundef !5
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !3519, !nonnull !5, !noundef !5
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3519
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.f, align 1, !alias.scope !3518
  %i.i = tail call noundef ptr @_RINvNtCsdLkRf3gRIi6_10serde_json3ser18format_escaped_strQINtNtCscdodAO9FK5_5alloc3vec3VechENtB2_16CompactFormatterECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !3518 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val4 = load ptr, ptr %i.j, align 8            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val5 = load i64, ptr %i.k, align 8            ; 3 uses
  %.val.i6 = load ptr, ptr %i.e, align 8, !nonnull !5, !align !12, !noundef !5
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i6, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef range(i64 0, -9223372036854775808) 1)
  %.val10.i = load ptr, ptr %i.e, align 8, !alias.scope !3520, !nonnull !5, !align !12, !noundef !5 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val4, i64 %.val5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3521
  %cond.i.i.i = icmp eq i64 %.val5, 0
  br i1 %cond.i.i.i, label %_RNvXs1_NtCsdLkRf3gRIi6_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seqCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

_RNvXs1_NtCsdLkRf3gRIi6_10serde_json3serQINtB5_10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer13serialize_seqCs844E4pPEVZX_17influxdb3_catalog.exit.i.i.i: ; preds = %bb.e
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val10.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3521
  br label %_RINvXs6_NtCsdLkRf3gRIi6_10serde_json3serINtB6_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs5CfTnloWo2c_10serde_core3ser12SerializeMap15serialize_valueBS_ECs844E4pPEVZX_17influxdb3_catalog.exit

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val4, i64 1
  %.val8.peel.i.i.i.i.i = load i8, ptr %.val4, align 1, !noalias !3522 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  %i.p = icmp ugt i8 %.val8.peel.i.i.i.i.i, 9
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.preheader.i.i.i.i.i
  %i.q = zext i8 %.val8.peel.i.i.i.i.i to i32     ; 2 uses
  %i.r = mul nuw nsw i32 %i.q, 5243
  %i.s = lshr i32 %i.r, 19                        ; 2 uses
  %i.t = trunc nuw nsw i32 %i.s to i8
  %.neg.i.i.i.i.i.i.i.i.peel.i.i.i.i.i = mul nsw i32 %i.s, -100
  %i.u = add nsw i32 %.neg.i.i.i.i.i.i.i.i.peel.i.i.i.i.i, %i.q ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = icmp ult i32 %i.u, 100
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr @_RNvCscOYT7KBnvIh_4itoa13DECIMAL_PAIRS, i64 %i.w ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !3525, !noundef !5
  store i8 %i.z, ptr %i.m, align 1, !alias.scope !3524, !noalias !3523
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !3525, !noundef !5
  store i8 %i.ab, ptr %i.n, align 1, !alias.scope !3524, !noalias !3523
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i = phi i8 [ %i.t, %bb.f ], [ %.val8.peel.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i = phi i64 [ 1, %bb.f ], [ 3, %.lr.ph.split.preheader.i.i.i.i.i ] ; 2 uses
  %i.ac = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i, 0
  %i.ad = icmp eq i8 %.val8.peel.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i = or i1 %i.ad, %i.ac
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i, label %bb.h, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCsdLkRf3gRIi6_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCs5CfTnloWo2c_10serde_core3ser10Serializer11collect_seqRB2X_E0E0Cs844E4pPEVZX_17influxdb3_catalog.exit.peel.i.i.i.i.i
end_hunk_0
