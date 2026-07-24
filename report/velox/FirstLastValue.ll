inline.NumInlined: 1613
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED2Ev:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32, !inline_history !212
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.am, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !42
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !213
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !213
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.l, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !46

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !212
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 8)) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) initializes((88, 96)) %0, ptr noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !214
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESC_SC_SC_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(38) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.anon.193, align 8            ; 9 uses
  %9 = alloca %class.anon.188, align 8            ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !201
  %i.h = lshr i64 %i.g, 2                         ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !206  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.h, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.h, %i.p
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.r)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.h, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.h ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.t
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.t, ptr %i.j, align 8, !tbaa !215
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !216
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !217
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !169, !range !64, !noundef !65
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ah = tail call { i64, i8 } @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEjRKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESB_PS9_(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ag) ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ah, 1
  %i.ai = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %3, align 8, !tbaa !202
  %i.aj = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.aj, align 8, !tbaa !197
  tail call fastcc void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr %.val.val.i)
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.h:                                             ; preds = %bb.f
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ah, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.sroa.013.0.extract.trunc.i = trunc i64 %.fca.0.extract.i to i32
  store i32 %.sroa.013.0.extract.trunc.i, ptr %i.a, align 4, !tbaa !3
  %.sroa.013.4.extract.shift.i = lshr i64 %.fca.0.extract.i, 32 ; 6 uses
  %.sroa.013.4.extract.trunc.i = trunc nuw i64 %.sroa.013.4.extract.shift.i to i32 ; 4 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !202 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i8, ptr %i.al, align 4, !tbaa !200
  %i.an = and i8 %i.am, 2
  %.not.i.i13 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i13, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i, label %bb.i, !prof !60

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #34
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !197 ; 8 uses
  %.not27.i.i = icmp slt i32 %.sroa.013.4.extract.trunc.i, 64
  br i1 %.not27.i.i, label %.preheader26.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.sroa.013.4.extract.shift.i, i64 127)
  %i.ar = add nsw i64 %i.aq, -64                  ; 3 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = add nuw nsw i64 %i.as, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ar, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp ult i64 %i.ar, 960
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 12
  %n.vec = and i64 %i.at, 576460752303423472      ; 4 uses
  %i.au = shl i64 %n.vec, 6                       ; 2 uses
  %i.av = or disjoint i64 %i.au, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl nuw nsw i64 %index, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.ax, align 8, !tbaa !129
  %wide.load148 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !129
  %wide.load149 = load <4 x i64>, ptr %i.az, align 8, !tbaa !129
  %wide.load150 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !129
  %i.bb = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.bc = xor <4 x i64> %wide.load148, splat (i64 -1)
  %i.bd = xor <4 x i64> %wide.load149, splat (i64 -1)
  %i.be = xor <4 x i64> %wide.load150, splat (i64 -1)
  store <4 x i64> %i.bb, ptr %i.ax, align 8, !tbaa !129
  store <4 x i64> %i.bc, ptr %i.ay, align 8, !tbaa !129
  store <4 x i64> %i.bd, ptr %i.az, align 8, !tbaa !129
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !129
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !221

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec153 = and i64 %i.at, 576460752303423484   ; 3 uses
  %i.bg = shl i64 %n.vec153, 6                    ; 2 uses
  %i.bh = or disjoint i64 %i.bg, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = shl nuw nsw i64 %index154, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bi ; 2 uses
  %wide.load155 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !129
  %i.bk = xor <4 x i64> %wide.load155, splat (i64 -1)
  store <4 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !129
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next156, %n.vec153
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.at, %n.vec153
  br i1 %cmp.n157, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.preheader26.loopexit.i.i:                        ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.bm = and i32 %.sroa.013.4.extract.trunc.i, 2147483584
  br label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %.preheader26.loopexit.i.i, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i ], [ %i.bm, %.preheader26.loopexit.i.i ] ; 3 uses
  %i.bn = or disjoint i32 %.0.lcssa.i.i, 8
  %.not2429.i.i = icmp sgt i32 %i.bn, %.sroa.013.4.extract.trunc.i
  br i1 %.not2429.i.i, label %.preheader.i.i, label %iter.check178

iter.check178:                                    ; preds = %.preheader26.i.i
  %i.bo = zext nneg i32 %.0.lcssa.i.i to i64      ; 8 uses
  %i.bp = or disjoint i64 %i.bo, 8                ; 3 uses
  %i.bq = or disjoint i64 %i.bo, 16
  %i.br = add nuw nsw i64 %.sroa.013.4.extract.shift.i, 1
  %umax160 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.br)
  %i.bs = add nsw i64 %umax160, -9
  %i.bt = sub nsw i64 %i.bs, %i.bo                ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check161 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check161, label %.lr.ph31.i.i.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check178
  %min.iters.check163 = icmp ult i64 %i.bt, 1016
  br i1 %min.iters.check163, label %vec.epilog.ph182, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %n.mod.vf165 = and i64 %i.bv, 112
  %n.vec166 = and i64 %i.bv, 4611686018427387776  ; 4 uses
  %i.bw = shl i64 %n.vec166, 3                    ; 2 uses
  %i.bx = add i64 %i.bw, %i.bo
  %i.by = add i64 %i.bp, %i.bw                    ; 2 uses
  %i.bz = lshr exact i64 %i.bo, 3
  %10 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bz
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 %index168 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 96 ; 2 uses
  %wide.load169 = load <32 x i8>, ptr %i.ca, align 1, !tbaa !14
  %wide.load170 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !14
  %wide.load171 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !14
  %wide.load172 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !14
  %i.ce = xor <32 x i8> %wide.load169, splat (i8 -1)
  %i.cf = xor <32 x i8> %wide.load170, splat (i8 -1)
  %i.cg = xor <32 x i8> %wide.load171, splat (i8 -1)
  %i.ch = xor <32 x i8> %wide.load172, splat (i8 -1)
  store <32 x i8> %i.ce, ptr %i.ca, align 1, !tbaa !14
  store <32 x i8> %i.cf, ptr %i.cb, align 1, !tbaa !14
  store <32 x i8> %i.cg, ptr %i.cc, align 1, !tbaa !14
  store <32 x i8> %i.ch, ptr %i.cd, align 1, !tbaa !14
  %index.next173 = add nuw i64 %index168, 128     ; 2 uses
  %i.ci = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.ci, label %middle.block174, label %vector.body167, !llvm.loop !223

middle.block174:                                  ; preds = %vector.body167
  %ind.escape = add nsw i64 %i.by, -8
  %cmp.n175 = icmp eq i64 %i.bv, %n.vec166
  br i1 %cmp.n175, label %.preheader.i.loopexit.i, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block174
  %min.epilog.iters.check181 = icmp eq i64 %n.mod.vf165, 0
  br i1 %min.epilog.iters.check181, label %.lr.ph31.i.i.preheader, label %vec.epilog.ph182, !prof !224

vec.epilog.ph182:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check180
  %vec.epilog.resume.val176 = phi i64 [ %n.vec166, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check162 ]
  %n.vec184 = and i64 %i.bv, 4611686018427387888  ; 3 uses
  %i.cj = shl i64 %n.vec184, 3                    ; 2 uses
  %i.ck = add i64 %i.cj, %i.bo
  %i.cl = add i64 %i.bp, %i.cj                    ; 2 uses
  %i.cm = lshr exact i64 %i.bo, 3
  %11 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cm
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph182
  %index186 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph182 ], [ %index.next188, %vec.epilog.vector.body185 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 %index186 ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !14
  %i.co = xor <16 x i8> %wide.load187, splat (i8 -1)
  store <16 x i8> %i.co, ptr %i.cn, align 1, !tbaa !14
  %index.next188 = add nuw i64 %index186, 16      ; 2 uses
  %i.cp = icmp eq i64 %index.next188, %n.vec184
  br i1 %i.cp, label %vec.epilog.middle.block189, label %vec.epilog.vector.body185, !llvm.loop !225

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body185
  %ind.escape190 = add nsw i64 %i.cl, -8
  %cmp.n191 = icmp eq i64 %i.bv, %n.vec184
  br i1 %cmp.n191, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %iter.check178, %vec.epilog.iter.check180, %vec.epilog.middle.block189
  %indvars.iv27.i.ph = phi i64 [ %i.bo, %iter.check178 ], [ %i.bx, %vec.epilog.iter.check180 ], [ %i.ck, %vec.epilog.middle.block189 ]
  %indvars.iv.i.ph = phi i64 [ %i.bp, %iter.check178 ], [ %i.by, %vec.epilog.iter.check180 ], [ %i.cl, %vec.epilog.middle.block189 ]
  br label %.lr.ph31.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i, %.lr.ph.i.i ], [ %indvars.iv36.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.cq = lshr exact i64 %indvars.iv36.i.i, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !129
  %i.ct = xor i64 %i.cs, -1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !129
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %.not.i10.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %.sroa.013.4.extract.shift.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 64
  br i1 %.not.i10.i, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !226

.preheader.i.loopexit.i:                          ; preds = %.lr.ph31.i.i, %vec.epilog.middle.block189, %middle.block174
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape190, %vec.epilog.middle.block189 ], [ %ind.escape, %middle.block174 ], [ %indvars.iv.i, %.lr.ph31.i.i ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %.preheader26.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %.preheader26.i.i ], [ %i.cu, %.preheader.i.loopexit.i ] ; 2 uses
  %i.cv = icmp slt i32 %.1.lcssa.i.i, %.sroa.013.4.extract.trunc.i
  br i1 %i.cv, label %.lr.ph34.preheader.i.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i

.lr.ph34.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cw = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph34.i.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.preheader, %.lr.ph31.i.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph31.i.i ], [ %indvars.iv27.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph31.i.i ], [ %indvars.iv.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %i.cx = lshr exact i64 %indvars.iv27.i, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = xor i8 %i.cz, -1
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not24.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %.sroa.013.4.extract.shift.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 8
  br i1 %.not24.i.i, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i, !llvm.loop !227

.lr.ph34.i.i:                                     ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.lr.ph34.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ %i.cw, %.lr.ph34.preheader.i.i ], [ %indvars.iv.next42.i.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i ] ; 6 uses
  %i.db = lshr i64 %indvars.iv41.i.i, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = and i64 %indvars.iv41.i.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not25.i.i = icmp eq i64 %i.dg, 0
  %i.dh = lshr i64 %indvars.iv41.i.i, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14  ; 2 uses
  br i1 %.not25.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph34.i.i
  %i.dk = trunc i64 %indvars.iv41.i.i to i8
  %i.dl = and i8 %i.dk, 7
  %i.dm = shl nuw i8 1, %i.dl
  %i.dn = or i8 %i.dm, %i.dj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

bb.k:                                             ; preds = %.lr.ph34.i.i
  %i.do = and i64 %indvars.iv41.i.i, 7
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !14
  %i.dr = and i8 %i.dq, %i.dj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i: ; preds = %bb.k, %bb.j
  %.sink.i.i.i = phi i8 [ %i.dr, %bb.k ], [ %i.dn, %bb.j ]
  store i8 %.sink.i.i.i, ptr %i.di, align 1, !tbaa !14
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i.i, %.sroa.013.4.extract.shift.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i, label %.lr.ph34.i.i, !llvm.loop !228

_ZN8facebook5velox4bits6negateEPmi.exit.i:        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ds = load ptr, ptr %i.ag, align 8, !tbaa !202
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !197
  store ptr %i.du, ptr %i.b, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.dv = load ptr, ptr %3, align 8, !tbaa !202
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !197
  store ptr %i.dx, ptr %i.c, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.dy = load ptr, ptr %4, align 8, !tbaa !202
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !197
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.c, ptr %9, align 8
  %.sroa.2.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.d, ptr %.sroa.2.0..sroa_idx12.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !168, !range !64, !noundef !65
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.l

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.eb, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.l:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %i.ef = load i32, ptr %i.u, align 4, !tbaa !216
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.eh = load i32, ptr %i.w, align 8, !tbaa !217 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !231
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.el = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.eh, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.em = and i32 %i.eh, 2147483584               ; 3 uses
  %i.en = zext nneg i32 %i.em to i64
  %.not37.i.i.not.i.i.i139.not = icmp eq i32 %i.em, 0
  br i1 %.not37.i.i.not.i.i.i139.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i140, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.en
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !232

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.eo = lshr exact i64 %indvars.iv.i.i.i140, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !129
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.p, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !232

.critedge.i.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %.not38.i.i.i.i.i = icmp eq i32 %i.eh, %i.em
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i.i.i
  %i.es = lshr i32 %i.eh, 6
  %i.et = and i32 %i.eh, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.eu
  %i.ev = zext nneg i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !129
  %.demorgan.i.i.i = or i64 %i.ex, %notmask.i40.i.i.i.i.i
  %i.ey = icmp eq i64 %.demorgan.i.i.i, -1
  %i.ez = zext i1 %i.ey to i16
  %i.fa = or disjoint i16 %i.ez, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.q, %.critedge.i.i.i.i.i, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.m ], [ 256, %bb.l ], [ 257, %bb.n ], [ 257, %.critedge.i.i.i.i.i ], [ %i.fa, %bb.q ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.eb, align 4
  %i.fb = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.fb, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.fc = load i32, ptr %i.u, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fd = load i32, ptr %i.w, align 8, !tbaa !217 ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph.i11.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i

.lr.ph.i11.i:                                     ; preds = %bb.r, %.lr.ph.i11.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_:bb.a
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph62.prol ], [ 0, %vec.epilog.scalar.ph62.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol, !llvm.loop !388

vec.epilog.scalar.ph62.prol.loopexit:             ; preds = %vec.epilog.scalar.ph62.prol, %vec.epilog.scalar.ph62.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62

vec.epilog.scalar.ph62:                           ; preds = %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph62 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph62.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.1
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62, !llvm.loop !389

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bu = load ptr, ptr %1, align 8, !tbaa !204   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !216 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bw, %i.by
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = add i32 %i.bw, 63                       ; 2 uses
  %i.ca = srem i32 %i.bz, 64
  %i.cb = sub nsw i32 %i.bz, %i.ca                ; 6 uses
  %i.cc = and i32 %i.by, -64                      ; 6 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = ashr i32 %i.by, 6
  %i.cf = and i32 %i.by, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.cg
  %i.ch = xor i64 %notmask.i.i.i.i.i, -1
  %i.ci = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cl = sub nsw i32 64, %i.ci
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = and i64 %i.cn, %i.ch
  %i.cp = sext i32 %i.ce to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = and i64 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !206
  %i.cu = sext i32 %i.cc to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %.preheader.i.i.i.i.i ], [ %i.db, %bb.l ] ; 3 uses
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.cw = or disjoint i64 %i.cv, %i.cu            ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cw
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add nsw i64 %.012.i.i.i.i.i, -1
  %i.db = and i64 %i.da, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.l, !llvm.loop !390

bb.m:                                             ; preds = %bb.j
  %.not32.i.i.i.i = icmp eq i32 %i.bw, %i.cb
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = sdiv i32 %i.bw, 64                      ; 2 uses
  %i.dd = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dg = sub nsw i32 64, %i.dd
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl i64 %i.df, %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !129
  %i.dm = and i64 %i.dl, %i.di                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.n
  %i.dn = shl nsw i32 %i.dc, 6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i40.i.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !206
  %i.dp = sext i32 %i.dn to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i37.i.i.i.i
  %.012.i42.i.i.i.i = phi i64 [ %i.dm, %.preheader.i37.i.i.i.i ], [ %i.dw, %bb.o ] ; 3 uses
  %i.dq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i42.i.i.i.i, i1 true)
  %i.dr = or disjoint i64 %i.dq, %i.dp            ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i40.i.i.i.i, i64 %i.dr
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i64 %.012.i42.i.i.i.i, -1
  %i.dw = and i64 %i.dv, %.012.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.o, !llvm.loop !390

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dx = add nsw i32 %i.cb, 64                   ; 2 uses
  %.not3360.i.i.i.i = icmp sgt i32 %i.dx, %i.cc
  br i1 %.not3360.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val18.val.i.i.i.i.i = load ptr, ptr %i.dy, align 8 ; 4 uses
  %.val18.val.i.i.i.i.i30 = ptrtoaddr ptr %.val18.val.i.i.i.i.i to i64
  %i.dz = sub i64 %.0.val.16.val29, %.val18.val.i.i.i.i.i30
  %diff.check = icmp ugt i64 %i.dz, -128
  %.val.val.i46.i.i.i.i = load ptr, ptr %i.dy, align 8
  br label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.by, %i.cc
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.s

bb.p:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ea = phi i32 [ %i.dx, %.lr.ph.i.i.i.i ], [ %i.fo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.061.i.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.eb = sdiv i32 %.061.i.i.i.i, 64              ; 3 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.ee, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.q
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %i.ef = shl nsw i32 %i.eb, 6
  %i.eg = sext i32 %i.ef to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = shl nsw i32 %i.eb, 6                    ; 2 uses
  %i.ei = add i32 %i.eh, 64
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.061.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.ek = sext i32 %i.eh to i64                   ; 6 uses
  %i.el = or disjoint i64 %i.ek, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ej) ; 2 uses
  %i.em = sub i64 %umax, %i.ek                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 8
  %or.cond75 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond75, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.em, 32
  %n.mod.vf35 = and i64 %umax, 1                  ; 3 uses
  %n.vec36 = sub nuw i64 %i.em, %n.mod.vf35       ; 3 uses
  %i.en = add i64 %n.vec36, %i.ek                 ; 2 uses
  br i1 %min.iters.check31, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eo = add nuw i64 %index, %i.ek               ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load = load <8 x i32>, ptr %i.ep, align 4, !tbaa !3
  %wide.load32 = load <8 x i32>, ptr %i.eq, align 4, !tbaa !3
  %wide.load33 = load <8 x i32>, ptr %i.er, align 4, !tbaa !3
  %wide.load34 = load <8 x i32>, ptr %i.es, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.eo ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store <8 x i32> %wide.load, ptr %i.et, align 4, !tbaa !3
  store <8 x i32> %wide.load32, ptr %i.eu, align 4, !tbaa !3
  store <8 x i32> %wide.load33, ptr %i.ev, align 4, !tbaa !3
  store <8 x i32> %wide.load34, ptr %i.ew, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec36
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index37 = phi i64 [ %index.next39, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ey = add nuw i64 %index37, %i.ek             ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.ey
  %wide.load38 = load <8 x i32>, ptr %i.ez, align 4, !tbaa !3
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.ey
  store <8 x i32> %wide.load38, ptr %i.fa, align 4, !tbaa !3
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.fb = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.i.ph = phi i64 [ %i.en, %middle.block ], [ %i.ek, %iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i.i.i.i.i = phi i64 [ %i.ff, %vec.epilog.scalar.ph ], [ %.023.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %.023.i.i.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %.023.i.i.i.i.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %i.ff = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.ej
  br i1 %i.fg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !393

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.fn, %bb.r ] ; 3 uses
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.fi = or disjoint i64 %i.fh, %i.eg            ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i46.i.i.i.i, i64 %i.fi
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !3
  %i.fm = add i64 %.01522.i.i.i.i.i, -1
  %i.fn = and i64 %i.fm, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %bb.r, !llvm.loop !394

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.r, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.p
  %i.fo = add nsw i32 %i.ea, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fo, %i.cc
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p, !llvm.loop !395

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fp = ashr i32 %i.by, 6
  %i.fq = and i32 %i.by, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.fr
  %i.fs = xor i64 %notmask.i48.i.i.i.i, -1
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !129
  %i.fw = and i64 %i.fv, %i.fs                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i49.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i53.i.i.i.i = load ptr, ptr %i.fx, align 8, !tbaa !206
  %i.fy = sext i32 %i.cc to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i50.i.i.i.i
  %.012.i55.i.i.i.i = phi i64 [ %i.fw, %.preheader.i50.i.i.i.i ], [ %i.gf, %bb.t ] ; 3 uses
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i55.i.i.i.i, i1 true)
  %i.ga = or disjoint i64 %i.fz, %i.fy            ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i53.i.i.i.i, i64 %i.ga
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !3
  %i.ge = add nsw i64 %.012.i55.i.i.i.i, -1
  %i.gf = and i64 %i.ge, %.012.i55.i.i.i.i        ; 2 uses
  %.not10.i56.i.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not10.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.t, !llvm.loop !390

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit: ; preds = %bb.t, %bb.l, %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62, %middle.block58, %vec.epilog.middle.block72, %bb.h, %bb.i, %bb.k, %._crit_edge.i.i.i.i, %bb.s
  ret void
}

declare void @_ZNK8facebook5velox4exec15WindowPartition13extractColumnEiN5folly5RangeIPKiEEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr, ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !215  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !206    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !215
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #34
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #31 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !3
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !3
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !206
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !215
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

declare { i64, i8 } @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEjRKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESB_PS9_(ptr noundef nonnull align 8 dereferenceable(152), i32 noundef, ptr noundef nonnull align 8 dereferenceable(38), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !396
  %i.c = load ptr, ptr %0, align 8, !tbaa !401, !nonnull !65, !align !290
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !402, !nonnull !65, !align !290
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !230
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.e
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED2Ev:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !205
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32, !inline_history !212
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.am, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !42
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !213
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !213
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.l, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !46

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !212
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 8)) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) initializes((88, 96)) %0, ptr noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !431
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE5applyERKN5boost13intrusive_ptrINS0_6BufferEEESC_SC_SC_RKNS0_17SelectivityVectorEiRKSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(38) %5, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %class.anon.202, align 8            ; 6 uses
  %9 = alloca %class.anon.204, align 8            ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %10 = alloca %class.anon.202, align 8           ; 6 uses
  %11 = alloca %class.anon.204, align 8           ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.anon.202, align 8           ; 6 uses
  %13 = alloca %class.anon.204, align 8           ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %14 = alloca %class.anon.202, align 8           ; 6 uses
  %15 = alloca %class.anon.204, align 8           ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %16 = alloca %class.anon.202, align 8           ; 6 uses
  %17 = alloca %class.anon.204, align 8           ; 6 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !201
  %i.i = lshr i64 %i.h, 2                         ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !215  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !206  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ugt i64 %i.i, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw nsw i64 %i.i, %i.q
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.s)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.i, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !215
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !216
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !217
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !424, !range !64, !noundef !65
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !431
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !426
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ai = tail call { i64, i8 } @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEjRKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESB_PS9_(ptr noundef nonnull align 8 dereferenceable(152) %i.ae, i32 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ah) ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ai, 1
  %i.aj = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.aj, label %bb.g, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ai, 0 ; 2 uses
  %.sroa.015.0.extract.trunc.i = trunc i64 %.fca.0.extract.i to i32 ; 18 uses
  %.sroa.015.4.extract.shift.i = lshr i64 %.fca.0.extract.i, 32 ; 6 uses
  %.sroa.015.4.extract.trunc.i = trunc nuw i64 %.sroa.015.4.extract.shift.i to i32 ; 4 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !202 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i8, ptr %i.al, align 4, !tbaa !200
  %i.an = and i8 %i.am, 2
  %.not.i.i13 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i13, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i, label %bb.h, !prof !60

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #34
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !197 ; 8 uses
  %.not27.i.i = icmp slt i32 %.sroa.015.4.extract.trunc.i, 64
  br i1 %.not27.i.i, label %.preheader26.i.i, label %iter.check

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.sroa.015.4.extract.shift.i, i64 127)
  %i.ar = add nsw i64 %i.aq, -64                  ; 3 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = add nuw nsw i64 %i.as, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ar, 192
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check145 = icmp ult i64 %i.ar, 960
  br i1 %min.iters.check145, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 12
  %n.vec = and i64 %i.at, 576460752303423472      ; 4 uses
  %i.au = shl i64 %n.vec, 6                       ; 2 uses
  %i.av = or disjoint i64 %i.au, 64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl nuw nsw i64 %index, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %i.ax, align 8, !tbaa !129
  %wide.load146 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !129
  %wide.load147 = load <4 x i64>, ptr %i.az, align 8, !tbaa !129
  %wide.load148 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !129
  %i.bb = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.bc = xor <4 x i64> %wide.load146, splat (i64 -1)
  %i.bd = xor <4 x i64> %wide.load147, splat (i64 -1)
  %i.be = xor <4 x i64> %wide.load148, splat (i64 -1)
  store <4 x i64> %i.bb, ptr %i.ax, align 8, !tbaa !129
  store <4 x i64> %i.bc, ptr %i.ay, align 8, !tbaa !129
  store <4 x i64> %i.bd, ptr %i.az, align 8, !tbaa !129
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !129
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !432

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !221

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.at, 576460752303423484   ; 3 uses
  %i.bg = shl i64 %n.vec151, 6                    ; 2 uses
  %i.bh = or disjoint i64 %i.bg, 64
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next154, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = shl nuw nsw i64 %index152, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bi ; 2 uses
  %wide.load153 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !129
  %i.bk = xor <4 x i64> %wide.load153, splat (i64 -1)
  store <4 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !129
  %index.next154 = add nuw i64 %index152, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next154, %n.vec151
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !433

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n155 = icmp eq i64 %i.at, %n.vec151
  br i1 %cmp.n155, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv36.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %indvars.iv.i.i.ph = phi i64 [ 64, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.preheader26.loopexit.i.i:                        ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.bm = and i32 %.sroa.015.4.extract.trunc.i, 2147483584
  br label %.preheader26.i.i

.preheader26.i.i:                                 ; preds = %.preheader26.loopexit.i.i, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i ], [ %i.bm, %.preheader26.loopexit.i.i ] ; 3 uses
  %i.bn = or disjoint i32 %.0.lcssa.i.i, 8
  %.not2429.i.i = icmp sgt i32 %i.bn, %.sroa.015.4.extract.trunc.i
  br i1 %.not2429.i.i, label %.preheader.i.i, label %iter.check176

iter.check176:                                    ; preds = %.preheader26.i.i
  %i.bo = zext nneg i32 %.0.lcssa.i.i to i64      ; 8 uses
  %i.bp = or disjoint i64 %i.bo, 8                ; 3 uses
  %i.bq = or disjoint i64 %i.bo, 16
  %i.br = add nuw nsw i64 %.sroa.015.4.extract.shift.i, 1
  %umax158 = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.br)
  %i.bs = add nsw i64 %umax158, -9
  %i.bt = sub nsw i64 %i.bs, %i.bo                ; 3 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 5 uses
  %min.iters.check159 = icmp ult i64 %i.bt, 120
  br i1 %min.iters.check159, label %.lr.ph31.i.i.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %iter.check176
  %min.iters.check161 = icmp ult i64 %i.bt, 1016
  br i1 %min.iters.check161, label %vec.epilog.ph180, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %i.bv, 112
  %n.vec164 = and i64 %i.bv, 4611686018427387776  ; 4 uses
  %i.bw = shl i64 %n.vec164, 3                    ; 2 uses
  %i.bx = add i64 %i.bw, %i.bo
  %i.by = add i64 %i.bp, %i.bw                    ; 2 uses
  %i.bz = lshr exact i64 %i.bo, 3
  %18 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bz
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 %index166 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 96 ; 2 uses
  %wide.load167 = load <32 x i8>, ptr %i.ca, align 1, !tbaa !14
  %wide.load168 = load <32 x i8>, ptr %i.cb, align 1, !tbaa !14
  %wide.load169 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !14
  %wide.load170 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !14
  %i.ce = xor <32 x i8> %wide.load167, splat (i8 -1)
  %i.cf = xor <32 x i8> %wide.load168, splat (i8 -1)
  %i.cg = xor <32 x i8> %wide.load169, splat (i8 -1)
  %i.ch = xor <32 x i8> %wide.load170, splat (i8 -1)
  store <32 x i8> %i.ce, ptr %i.ca, align 1, !tbaa !14
  store <32 x i8> %i.cf, ptr %i.cb, align 1, !tbaa !14
  store <32 x i8> %i.cg, ptr %i.cc, align 1, !tbaa !14
  store <32 x i8> %i.ch, ptr %i.cd, align 1, !tbaa !14
  %index.next171 = add nuw i64 %index166, 128     ; 2 uses
  %i.ci = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.ci, label %middle.block172, label %vector.body165, !llvm.loop !434

middle.block172:                                  ; preds = %vector.body165
  %ind.escape = add nsw i64 %i.by, -8
  %cmp.n173 = icmp eq i64 %i.bv, %n.vec164
  br i1 %cmp.n173, label %.preheader.i.loopexit.i, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph31.i.i.preheader, label %vec.epilog.ph180, !prof !224

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec164, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec182 = and i64 %i.bv, 4611686018427387888  ; 3 uses
  %i.cj = shl i64 %n.vec182, 3                    ; 2 uses
  %i.ck = add i64 %i.cj, %i.bo
  %i.cl = add i64 %i.bp, %i.cj                    ; 2 uses
  %i.cm = lshr exact i64 %i.bo, 3
  %19 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cm
  br label %vec.epilog.vector.body183

vec.epilog.vector.body183:                        ; preds = %vec.epilog.vector.body183, %vec.epilog.ph180
  %index184 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next186, %vec.epilog.vector.body183 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %19, i64 %index184 ; 2 uses
  %wide.load185 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !14
  %i.co = xor <16 x i8> %wide.load185, splat (i8 -1)
  store <16 x i8> %i.co, ptr %i.cn, align 1, !tbaa !14
  %index.next186 = add nuw i64 %index184, 16      ; 2 uses
  %i.cp = icmp eq i64 %index.next186, %n.vec182
  br i1 %i.cp, label %vec.epilog.middle.block187, label %vec.epilog.vector.body183, !llvm.loop !435

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body183
  %ind.escape188 = add nsw i64 %i.cl, -8
  %cmp.n189 = icmp eq i64 %i.bv, %n.vec182
  br i1 %cmp.n189, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block187
  %indvars.iv65.i.ph = phi i64 [ %i.bo, %iter.check176 ], [ %i.bx, %vec.epilog.iter.check178 ], [ %i.ck, %vec.epilog.middle.block187 ]
  %indvars.iv.i.ph = phi i64 [ %i.bp, %iter.check176 ], [ %i.by, %vec.epilog.iter.check178 ], [ %i.cl, %vec.epilog.middle.block187 ]
  br label %.lr.ph31.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i, %.lr.ph.i.i ], [ %indvars.iv36.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.cq = lshr exact i64 %indvars.iv36.i.i, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !129
  %i.ct = xor i64 %i.cs, -1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !129
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %.not.i10.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %.sroa.015.4.extract.shift.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 64
  br i1 %.not.i10.i, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !436

.preheader.i.loopexit.i:                          ; preds = %.lr.ph31.i.i, %vec.epilog.middle.block187, %middle.block172
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape188, %vec.epilog.middle.block187 ], [ %ind.escape, %middle.block172 ], [ %indvars.iv.i, %.lr.ph31.i.i ]
  %i.cu = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %.preheader26.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %.preheader26.i.i ], [ %i.cu, %.preheader.i.loopexit.i ] ; 2 uses
  %i.cv = icmp slt i32 %.1.lcssa.i.i, %.sroa.015.4.extract.trunc.i
  br i1 %i.cv, label %.lr.ph34.preheader.i.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i

.lr.ph34.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cw = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph34.i.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.preheader, %.lr.ph31.i.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %.lr.ph31.i.i ], [ %indvars.iv65.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph31.i.i ], [ %indvars.iv.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %i.cx = lshr exact i64 %indvars.iv65.i, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = xor i8 %i.cz, -1
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not24.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %.sroa.015.4.extract.shift.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 8
  br i1 %.not24.i.i, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i, !llvm.loop !437

.lr.ph34.i.i:                                     ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.lr.ph34.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ %i.cw, %.lr.ph34.preheader.i.i ], [ %indvars.iv.next42.i.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i ] ; 6 uses
  %i.db = lshr i64 %indvars.iv41.i.i, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !129
  %i.de = and i64 %indvars.iv41.i.i, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not25.i.i = icmp eq i64 %i.dg, 0
  %i.dh = lshr i64 %indvars.iv41.i.i, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14  ; 2 uses
  br i1 %.not25.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i.i
  %i.dk = trunc i64 %indvars.iv41.i.i to i8
  %i.dl = and i8 %i.dk, 7
  %i.dm = shl nuw i8 1, %i.dl
  %i.dn = or i8 %i.dm, %i.dj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

bb.j:                                             ; preds = %.lr.ph34.i.i
  %i.do = and i64 %indvars.iv41.i.i, 7
  %i.dp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !14
  %i.dr = and i8 %i.dq, %i.dj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i: ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i8 [ %i.dr, %bb.j ], [ %i.dn, %bb.i ]
  store i8 %.sink.i.i.i, ptr %i.di, align 1, !tbaa !14
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i.i, %.sroa.015.4.extract.shift.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i, label %.lr.ph34.i.i, !llvm.loop !228

_ZN8facebook5velox4bits6negateEPmi.exit.i:        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.preheader.i.i
  %i.ds = load ptr, ptr %i.ah, align 8, !tbaa !202
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !197 ; 14 uses
  %i.dv = load ptr, ptr %3, align 8, !tbaa !202
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !197 ; 6 uses
  %i.dy = load ptr, ptr %4, align 8, !tbaa !202
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !197 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !168, !range !64, !noundef !65
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.eb, align 4, !tbaa !138, !range !64
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.k:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %i.ef = load i32, ptr %i.v, align 4, !tbaa !216
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.eh = load i32, ptr %i.x, align 8, !tbaa !217 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !231
  %i.ek = icmp eq i32 %i.eh, %i.ej
  br i1 %i.ek, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.el = load ptr, ptr %5, align 8, !tbaa !204   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.eh, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.em = and i32 %i.eh, 2147483584               ; 3 uses
  %i.en = zext nneg i32 %i.em to i64
  %.not37.i.i.not.i.i.i137.not = icmp eq i32 %i.em, 0
  br i1 %.not37.i.i.not.i.i.i137.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i138, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.en
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !232

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %indvars.iv.i.i.i138 = phi i64 [ %indvars.iv.next.i.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.eo = lshr exact i64 %indvars.iv.i.i.i138, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !129
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !232

.critedge.i.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i.i = icmp eq i32 %i.eh, %i.em
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i
  %i.es = lshr i32 %i.eh, 6
  %i.et = and i32 %i.eh, 63
  %i.eu = zext nneg i32 %i.et to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.eu
  %i.ev = zext nneg i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !129
  %.demorgan.i.i.i = or i64 %i.ex, %notmask.i40.i.i.i.i.i
  %i.ey = icmp eq i64 %.demorgan.i.i.i, -1
  %i.ez = zext i1 %i.ey to i16
  %i.fa = or disjoint i16 %i.ez, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.p, %.critedge.i.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i.i ], [ %i.fa, %bb.p ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.eb, align 4
  %i.fb = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.fb, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.fc = load i32, ptr %i.v, align 4, !tbaa !216 ; 8 uses
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fd = load i32, ptr %i.x, align 8, !tbaa !217 ; 2 uses
  %i.fe = icmp slt i32 %i.fc, %i.fd
  br i1 %i.fe, label %.lr.ph.i11.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

.lr.ph.i11.i:                                     ; preds = %bb.q
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fj = sext i32 %i.fc to i64
  %invariant.op204 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %i.fj, %.lr.ph.i11.i ], [ %indvars.iv.next.i13.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i ] ; 4 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %indvars.iv.i12.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %indvars.iv.i12.i
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = sub nsw i32 %i.fl, %.sroa.015.0.extract.trunc.i
  %.reass105.i.reass.reass = add i32 %i.fn, %invariant.op204
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_:bb.a
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph62.prol ], [ 0, %vec.epilog.scalar.ph62.preheader ]
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i.prol
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i.prol
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph62.prol.loopexit, label %vec.epilog.scalar.ph62.prol, !llvm.loop !448

vec.epilog.scalar.ph62.prol.loopexit:             ; preds = %vec.epilog.scalar.ph62.prol, %vec.epilog.scalar.ph62.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph62.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph62.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62

vec.epilog.scalar.ph62:                           ; preds = %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph62 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph62.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.1
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %indvars.iv.next.i.2
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %indvars.iv.next.i.2
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %vec.epilog.scalar.ph62, !llvm.loop !449

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.bu = load ptr, ptr %1, align 8, !tbaa !204   ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !216 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !217 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.bw, %i.by
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = add i32 %i.bw, 63                       ; 2 uses
  %i.ca = srem i32 %i.bz, 64
  %i.cb = sub nsw i32 %i.bz, %i.ca                ; 6 uses
  %i.cc = and i32 %i.by, -64                      ; 6 uses
  %i.cd = icmp slt i32 %i.cc, %i.cb
  br i1 %i.cd, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = ashr i32 %i.by, 6
  %i.cf = and i32 %i.by, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.cg
  %i.ch = xor i64 %notmask.i.i.i.i.i, -1
  %i.ci = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.cj
  %i.ck = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.cl = sub nsw i32 64, %i.ci
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = and i64 %i.cn, %i.ch
  %i.cp = sext i32 %i.ce to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !129
  %i.cs = and i64 %i.co, %i.cr                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !206
  %i.cu = sext i32 %i.cc to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cs, %.preheader.i.i.i.i.i ], [ %i.db, %bb.l ] ; 3 uses
  %i.cv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i.i.i.i.i, i1 true)
  %i.cw = or disjoint i64 %i.cv, %i.cu            ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cw
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add nsw i64 %.012.i.i.i.i.i, -1
  %i.db = and i64 %i.da, %.012.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.l, !llvm.loop !450

bb.m:                                             ; preds = %bb.j
  %.not32.i.i.i.i = icmp eq i32 %i.bw, %i.cb
  br i1 %.not32.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = sdiv i32 %i.bw, 64                      ; 2 uses
  %i.dd = sub nsw i32 %i.cb, %i.bw                ; 2 uses
  %i.de = zext nneg i32 %i.dd to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.de
  %i.df = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.dg = sub nsw i32 64, %i.dd
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl i64 %i.df, %i.dh
  %i.dj = sext i32 %i.dc to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !129
  %i.dm = and i64 %i.dl, %i.di                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not.i36.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.n
  %i.dn = shl nsw i32 %i.dc, 6
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i40.i.i.i.i = load ptr, ptr %i.do, align 8, !tbaa !206
  %i.dp = sext i32 %i.dn to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i37.i.i.i.i
  %.012.i42.i.i.i.i = phi i64 [ %i.dm, %.preheader.i37.i.i.i.i ], [ %i.dw, %bb.o ] ; 3 uses
  %i.dq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i42.i.i.i.i, i1 true)
  %i.dr = or disjoint i64 %i.dq, %i.dp            ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i40.i.i.i.i, i64 %i.dr
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i64 %.012.i42.i.i.i.i, -1
  %i.dw = and i64 %i.dv, %.012.i42.i.i.i.i        ; 2 uses
  %.not10.i43.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not10.i43.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i, label %bb.o, !llvm.loop !450

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dx = add nsw i32 %i.cb, 64                   ; 2 uses
  %.not3360.i.i.i.i = icmp sgt i32 %i.dx, %i.cc
  br i1 %.not3360.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val18.val.i.i.i.i.i = load ptr, ptr %i.dy, align 8 ; 4 uses
  %.val18.val.i.i.i.i.i30 = ptrtoaddr ptr %.val18.val.i.i.i.i.i to i64
  %i.dz = sub i64 %.0.val.16.val29, %.val18.val.i.i.i.i.i30
  %diff.check = icmp ugt i64 %i.dz, -128
  %.val.val.i46.i.i.i.i = load ptr, ptr %i.dy, align 8
  br label %bb.p

._crit_edge.i.i.i.i:                              ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit44.i.i.i.i
  %.not34.i.i.i.i = icmp eq i32 %i.by, %i.cc
  br i1 %.not34.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.s

bb.p:                                             ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ea = phi i32 [ %i.dx, %.lr.ph.i.i.i.i ], [ %i.fo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %.061.i.i.i.i = phi i32 [ %i.cb, %.lr.ph.i.i.i.i ], [ %i.ea, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i ] ; 2 uses
  %i.eb = sdiv i32 %.061.i.i.i.i, 64              ; 3 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !129 ; 2 uses
  switch i64 %i.ee, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.q
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p
  %i.ef = shl nsw i32 %i.eb, 6
  %i.eg = sext i32 %i.ef to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eh = shl nsw i32 %i.eb, 6                    ; 2 uses
  %i.ei = add i32 %i.eh, 64
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %.0.off.i.i.i.i = add i32 %.061.i.i.i.i, 127
  %.not25.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not25.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.ek = sext i32 %i.eh to i64                   ; 6 uses
  %i.el = or disjoint i64 %i.ek, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.el, i64 %i.ej) ; 2 uses
  %i.em = sub i64 %umax, %i.ek                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.em, 8
  %or.cond75 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond75, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.em, 32
  %n.mod.vf35 = and i64 %umax, 1                  ; 3 uses
  %n.vec36 = sub nuw i64 %i.em, %n.mod.vf35       ; 3 uses
  %i.en = add i64 %n.vec36, %i.ek                 ; 2 uses
  br i1 %min.iters.check31, label %vec.epilog.vector.body, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.eo = add nuw i64 %index, %i.ek               ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.eo ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load = load <8 x i32>, ptr %i.ep, align 4, !tbaa !3
  %wide.load32 = load <8 x i32>, ptr %i.eq, align 4, !tbaa !3
  %wide.load33 = load <8 x i32>, ptr %i.er, align 4, !tbaa !3
  %wide.load34 = load <8 x i32>, ptr %i.es, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.eo ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  store <8 x i32> %wide.load, ptr %i.et, align 4, !tbaa !3
  store <8 x i32> %wide.load32, ptr %i.eu, align 4, !tbaa !3
  store <8 x i32> %wide.load33, ptr %i.ev, align 4, !tbaa !3
  store <8 x i32> %wide.load34, ptr %i.ew, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec36
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !451

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.vector.body:                           ; preds = %vector.main.loop.iter.check, %vec.epilog.vector.body
  %index37 = phi i64 [ %index.next39, %vec.epilog.vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.ey = add nuw i64 %index37, %i.ek             ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %i.ey
  %wide.load38 = load <8 x i32>, ptr %i.ez, align 4, !tbaa !3
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %i.ey
  store <8 x i32> %wide.load38, ptr %i.fa, align 4, !tbaa !3
  %index.next39 = add nuw i64 %index37, 8         ; 2 uses
  %i.fb = icmp eq i64 %index.next39, %n.vec36
  br i1 %i.fb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %n.mod.vf35, 0
  br i1 %cmp.n40, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %middle.block, %iter.check, %vec.epilog.middle.block
  %.023.i.i.i.i.i.ph = phi i64 [ %i.en, %middle.block ], [ %i.ek, %iter.check ], [ %i.en, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i.i.i.i.i = phi i64 [ %i.ff, %vec.epilog.scalar.ph ], [ %.023.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0.val.16.val, i64 %.023.i.i.i.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val18.val.i.i.i.i.i, i64 %.023.i.i.i.i.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !3
  %i.ff = add nuw i64 %.023.i.i.i.i.i, 1          ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.ej
  br i1 %i.fg, label %vec.epilog.scalar.ph, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, !llvm.loop !453

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01522.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.fn, %bb.r ] ; 3 uses
  %i.fh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i.i, i1 true)
  %i.fi = or disjoint i64 %i.fh, %i.eg            ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !3
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i46.i.i.i.i, i64 %i.fi
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !3
  %i.fm = add i64 %.01522.i.i.i.i.i, -1
  %i.fn = and i64 %i.fm, %.01522.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i47.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i, label %bb.r, !llvm.loop !454

_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i: ; preds = %vec.epilog.scalar.ph, %bb.r, %middle.block, %vec.epilog.middle.block, %bb.q, %bb.p
  %i.fo = add nsw i32 %i.ea, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.fo, %i.cc
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.p, !llvm.loop !455

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.fp = ashr i32 %i.by, 6
  %i.fq = and i32 %i.by, 63
  %i.fr = zext nneg i32 %i.fq to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.fr
  %i.fs = xor i64 %notmask.i48.i.i.i.i, -1
  %i.ft = sext i32 %i.fp to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !129
  %i.fw = and i64 %i.fv, %i.fs                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i49.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.val.i53.i.i.i.i = load ptr, ptr %i.fx, align 8, !tbaa !206
  %i.fy = sext i32 %i.cc to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i50.i.i.i.i
  %.012.i55.i.i.i.i = phi i64 [ %i.fw, %.preheader.i50.i.i.i.i ], [ %i.gf, %bb.t ] ; 3 uses
  %i.fz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i55.i.i.i.i, i1 true)
  %i.ga = or disjoint i64 %i.fz, %i.fy            ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %.0.val.16.val, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !3
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i53.i.i.i.i, i64 %i.ga
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !3
  %i.ge = add nsw i64 %.012.i55.i.i.i.i, -1
  %i.gf = and i64 %i.ge, %.012.i55.i.i.i.i        ; 2 uses
  %.not10.i56.i.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not10.i56.i.i.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit, label %bb.t, !llvm.loop !450

_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE25setRowNumbersRespectNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit: ; preds = %bb.t, %bb.l, %vec.epilog.scalar.ph62.prol.loopexit, %vec.epilog.scalar.ph62, %middle.block58, %vec.epilog.middle.block72, %bb.h, %bb.i, %bb.k, %._crit_edge.i.i.i.i, %bb.s
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { cold noreturn }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { builtin nounwind }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !8, i64 0, !13, i64 8, !5, i64 16}
!13 = !{!"long", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!12, !13, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !18, i64 0, !13, i64 8, !20, i64 16, !13, i64 24, !22, i64 32, !21, i64 48}
!18 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !21, i64 0}
!21 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!22 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !23, i64 0, !13, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!17, !13, i64 8}
!25 = !{!22, !23, i64 0}
!26 = !{!27, !30, i64 32}
!27 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !28, i64 0, !28, i64 16, !30, i64 32}
!28 = !{!"_ZTSSt13_Bit_iterator", !29, i64 0}
!29 = !{!"_ZTSSt18_Bit_iterator_base", !30, i64 0, !4, i64 8}
!30 = !{!"p1 long", !10, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !10, i64 0}
!34 = !{!32, !33, i64 16}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!32, !33, i64 8}
!40 = !{!41, !4, i64 8}
!41 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!42 = !{!41, !4, i64 12}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !6, i64 0}
!45 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!33, !33, i64 0}
!48 = !{!49, !10, i64 24}
!49 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERKSt6vectorINS3_17WindowFunctionArgESaIS9_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEEE", !50, i64 0, !10, i64 24}
!50 = !{!"_ZTSSt14_Function_base", !5, i64 0, !10, i64 16}
!51 = !{!50, !10, i64 16}
!52 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
end_hunk_3
