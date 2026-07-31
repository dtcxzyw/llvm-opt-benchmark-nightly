inline.NumInlined: 1613
inline.NumDeleted: 862
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED2Ev:bb.a
          to label %.noexc.i unwind label %bb.d, !inline_history !205

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !194
  %.not.i.i = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %..i.i
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !205

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, %bb.c, %.noexc.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !207
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32, !inline_history !214
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.am, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !44
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !215
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !215
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.l, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !48

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !214
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 8)) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) initializes((88, 96)) %0, ptr noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !216
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
  %i.e = load ptr, ptr %3, align 8, !tbaa !204
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !203
  %i.h = lshr i64 %i.g, 2                         ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !208  ; 2 uses
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
  store ptr %i.t, ptr %i.j, align 8, !tbaa !217
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !218
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !219
  %i.y = icmp slt i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !171, !range !66, !noundef !67
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.ar

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !216
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ah = tail call { i64, i8 } @_ZNK8facebook5velox4exec15WindowPartition12extractNullsEjRKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESB_PS9_(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %i.ag) ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.ah, 1
  %i.ai = trunc nuw i8 %.fca.1.extract.i to i1
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %3, align 8, !tbaa !204
  %i.aj = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.aj, align 8, !tbaa !199
  tail call fastcc void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE25setRowNumbersRespectNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(38) %5, ptr %.val.val.i)
  br label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.h:                                             ; preds = %bb.f
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.ah, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.sroa.013.0.extract.trunc.i = trunc i64 %.fca.0.extract.i to i32
  store i32 %.sroa.013.0.extract.trunc.i, ptr %i.a, align 4, !tbaa !41
  %.sroa.013.4.extract.shift.i = lshr i64 %.fca.0.extract.i, 32 ; 6 uses
  %.sroa.013.4.extract.trunc.i = trunc nuw i64 %.sroa.013.4.extract.shift.i to i32 ; 4 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !204 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i8, ptr %i.al, align 4, !tbaa !202
  %i.an = and i8 %i.am, 2
  %.not.i.i13 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i13, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i, label %bb.i, !prof !62

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #34
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199 ; 8 uses
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
  %wide.load = load <4 x i64>, ptr %i.ax, align 8, !tbaa !131
  %wide.load148 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !131
  %wide.load149 = load <4 x i64>, ptr %i.az, align 8, !tbaa !131
  %wide.load150 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !131
  %i.bb = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.bc = xor <4 x i64> %wide.load148, splat (i64 -1)
  %i.bd = xor <4 x i64> %wide.load149, splat (i64 -1)
  %i.be = xor <4 x i64> %wide.load150, splat (i64 -1)
  store <4 x i64> %i.bb, ptr %i.ax, align 8, !tbaa !131
  store <4 x i64> %i.bc, ptr %i.ay, align 8, !tbaa !131
  store <4 x i64> %i.bd, ptr %i.az, align 8, !tbaa !131
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !131
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !223

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
  %wide.load155 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !131
  %i.bk = xor <4 x i64> %wide.load155, splat (i64 -1)
  store <4 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !131
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next156, %n.vec153
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !224

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
  %10 = zext nneg i32 %.0.lcssa.i.i to i64        ; 8 uses
  %11 = or disjoint i64 %10, 8                    ; 3 uses
  %12 = or disjoint i64 %10, 16
  %13 = add nuw nsw i64 %.sroa.013.4.extract.shift.i, 1
  %umax160 = tail call i64 @llvm.umax.i64(i64 %12, i64 %13)
  %14 = add nsw i64 %umax160, -9
  %15 = sub nsw i64 %14, %10                      ; 3 uses
  %16 = lshr i64 %15, 3
  %17 = add nuw nsw i64 %16, 1                    ; 5 uses
  %min.iters.check161 = icmp ult i64 %15, 120
  br i1 %min.iters.check161, label %.lr.ph31.i.i.preheader, label %vector.main.loop.iter.check162

vector.main.loop.iter.check162:                   ; preds = %iter.check178
  %min.iters.check163 = icmp ult i64 %15, 1016
  br i1 %min.iters.check163, label %vec.epilog.ph182, label %vector.ph164

vector.ph164:                                     ; preds = %vector.main.loop.iter.check162
  %n.mod.vf165 = and i64 %17, 112
  %n.vec166 = and i64 %17, 4611686018427387776    ; 4 uses
  %18 = shl i64 %n.vec166, 3                      ; 2 uses
  %19 = add i64 %18, %10
  %20 = add i64 %11, %18                          ; 2 uses
  %21 = lshr exact i64 %10, 3
  %22 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %21
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph164
  %index168 = phi i64 [ 0, %vector.ph164 ], [ %index.next173, %vector.body167 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 %index168 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96 ; 2 uses
  %wide.load169 = load <32 x i8>, ptr %i.bo, align 1, !tbaa !15
  %wide.load170 = load <32 x i8>, ptr %i.bp, align 1, !tbaa !15
  %wide.load171 = load <32 x i8>, ptr %i.bq, align 1, !tbaa !15
  %wide.load172 = load <32 x i8>, ptr %i.br, align 1, !tbaa !15
  %i.bs = xor <32 x i8> %wide.load169, splat (i8 -1)
  %i.bt = xor <32 x i8> %wide.load170, splat (i8 -1)
  %i.bu = xor <32 x i8> %wide.load171, splat (i8 -1)
  %i.bv = xor <32 x i8> %wide.load172, splat (i8 -1)
  store <32 x i8> %i.bs, ptr %i.bo, align 1, !tbaa !15
  store <32 x i8> %i.bt, ptr %i.bp, align 1, !tbaa !15
  store <32 x i8> %i.bu, ptr %i.bq, align 1, !tbaa !15
  store <32 x i8> %i.bv, ptr %i.br, align 1, !tbaa !15
  %index.next173 = add nuw i64 %index168, 128     ; 2 uses
  %i.bw = icmp eq i64 %index.next173, %n.vec166
  br i1 %i.bw, label %middle.block174, label %vector.body167, !llvm.loop !225

middle.block174:                                  ; preds = %vector.body167
  %ind.escape = add nsw i64 %20, -8
  %cmp.n175 = icmp eq i64 %17, %n.vec166
  br i1 %cmp.n175, label %.preheader.i.loopexit.i, label %vec.epilog.iter.check180

vec.epilog.iter.check180:                         ; preds = %middle.block174
  %min.epilog.iters.check181 = icmp eq i64 %n.mod.vf165, 0
  br i1 %min.epilog.iters.check181, label %.lr.ph31.i.i.preheader, label %vec.epilog.ph182, !prof !226

vec.epilog.ph182:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check180
  %vec.epilog.resume.val176 = phi i64 [ %n.vec166, %vec.epilog.iter.check180 ], [ 0, %vector.main.loop.iter.check162 ]
  %n.vec184 = and i64 %17, 4611686018427387888    ; 3 uses
  %23 = shl i64 %n.vec184, 3                      ; 2 uses
  %24 = add i64 %23, %10
  %25 = add i64 %11, %23                          ; 2 uses
  %26 = lshr exact i64 %10, 3
  %27 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %26
  br label %vec.epilog.vector.body185

vec.epilog.vector.body185:                        ; preds = %vec.epilog.vector.body185, %vec.epilog.ph182
  %index186 = phi i64 [ %vec.epilog.resume.val176, %vec.epilog.ph182 ], [ %index.next188, %vec.epilog.vector.body185 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %27, i64 %index186 ; 2 uses
  %wide.load187 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !15
  %i.by = xor <16 x i8> %wide.load187, splat (i8 -1)
  store <16 x i8> %i.by, ptr %i.bx, align 1, !tbaa !15
  %index.next188 = add nuw i64 %index186, 16      ; 2 uses
  %i.bz = icmp eq i64 %index.next188, %n.vec184
  br i1 %i.bz, label %vec.epilog.middle.block189, label %vec.epilog.vector.body185, !llvm.loop !227

vec.epilog.middle.block189:                       ; preds = %vec.epilog.vector.body185
  %ind.escape190 = add nsw i64 %25, -8
  %cmp.n191 = icmp eq i64 %17, %n.vec184
  br i1 %cmp.n191, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %iter.check178, %vec.epilog.iter.check180, %vec.epilog.middle.block189
  %indvars.iv27.i.ph = phi i64 [ %10, %iter.check178 ], [ %19, %vec.epilog.iter.check180 ], [ %24, %vec.epilog.middle.block189 ]
  %indvars.iv.i.ph = phi i64 [ %11, %iter.check178 ], [ %20, %vec.epilog.iter.check180 ], [ %25, %vec.epilog.middle.block189 ]
  br label %.lr.ph31.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i, %.lr.ph.i.i ], [ %indvars.iv36.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ca = lshr exact i64 %indvars.iv36.i.i, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !131
  %i.cd = xor i64 %i.cc, -1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !131
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %.not.i10.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %.sroa.013.4.extract.shift.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 64
  br i1 %.not.i10.i, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !228

.preheader.i.loopexit.i:                          ; preds = %.lr.ph31.i.i, %vec.epilog.middle.block189, %middle.block174
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape190, %vec.epilog.middle.block189 ], [ %ind.escape, %middle.block174 ], [ %indvars.iv.i, %.lr.ph31.i.i ]
  %28 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %.preheader26.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %.preheader26.i.i ], [ %28, %.preheader.i.loopexit.i ] ; 2 uses
  %i.ce = icmp slt i32 %.1.lcssa.i.i, %.sroa.013.4.extract.trunc.i
  br i1 %i.ce, label %.lr.ph34.preheader.i.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i

.lr.ph34.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cf = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph34.i.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.preheader, %.lr.ph31.i.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %.lr.ph31.i.i ], [ %indvars.iv27.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph31.i.i ], [ %indvars.iv.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %29 = lshr exact i64 %indvars.iv27.i, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 %29 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = xor i8 %i.ch, -1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not24.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %.sroa.013.4.extract.shift.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 8
  br i1 %.not24.i.i, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i, !llvm.loop !229

.lr.ph34.i.i:                                     ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.lr.ph34.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ %i.cf, %.lr.ph34.preheader.i.i ], [ %indvars.iv.next42.i.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i ] ; 6 uses
  %i.cj = lshr i64 %indvars.iv41.i.i, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !131
  %i.cm = and i64 %indvars.iv41.i.i, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.cl
  %.not25.i.i = icmp eq i64 %i.co, 0
  %i.cp = lshr i64 %indvars.iv41.i.i, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 2 uses
  br i1 %.not25.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph34.i.i
  %i.cs = trunc i64 %indvars.iv41.i.i to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = or i8 %i.cu, %i.cr
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

bb.k:                                             ; preds = %.lr.ph34.i.i
  %i.cw = and i64 %indvars.iv41.i.i, 7
  %i.cx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = and i8 %i.cy, %i.cr
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i: ; preds = %bb.k, %bb.j
  %.sink.i.i.i = phi i8 [ %i.cz, %bb.k ], [ %i.cv, %bb.j ]
  store i8 %.sink.i.i.i, ptr %i.cq, align 1, !tbaa !15
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i.i, %.sroa.013.4.extract.shift.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i, label %.lr.ph34.i.i, !llvm.loop !230

_ZN8facebook5velox4bits6negateEPmi.exit.i:        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !204
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !199
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.dd = load ptr, ptr %3, align 8, !tbaa !204
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !199
  store ptr %i.df, ptr %i.c, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.dg = load ptr, ptr %4, align 8, !tbaa !204
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !199
  store ptr %i.di, ptr %i.d, align 8, !tbaa !232
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
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !170, !range !66, !noundef !67
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.l

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.dj, align 4, !tbaa !140, !range !66
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.l:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %i.dn = load i32, ptr %i.u, align 4, !tbaa !218
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dp = load i32, ptr %i.w, align 8, !tbaa !219 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !233
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %5, align 8, !tbaa !206   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.dp, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.du = and i32 %i.dp, 2147483584               ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %.not37.i.i.not.i.i.i139.not = icmp eq i32 %i.du, 0
  br i1 %.not37.i.i.not.i.i.i139.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i140, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dv
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !234

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %indvars.iv.i.i.i140 = phi i64 [ %indvars.iv.next.i.i.i, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.dw = lshr exact i64 %indvars.iv.i.i.i140, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !131
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.p, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !234

.critedge.i.i.i.i.i:                              ; preds = %bb.p, %bb.o
  %.not38.i.i.i.i.i = icmp eq i32 %i.dp, %i.du
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i.i.i.i.i
  %i.ea = lshr i32 %i.dp, 6
  %i.eb = and i32 %i.dp, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = zext nneg i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !131
  %.demorgan.i.i.i = or i64 %i.ef, %notmask.i40.i.i.i.i.i
  %i.eg = icmp eq i64 %.demorgan.i.i.i, -1
  %i.eh = zext i1 %i.eg to i16
  %i.ei = or disjoint i16 %i.eh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.q, %.critedge.i.i.i.i.i, %bb.n, %bb.m, %bb.l
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.m ], [ 256, %bb.l ], [ 257, %bb.n ], [ 257, %.critedge.i.i.i.i.i ], [ %i.ei, %bb.q ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.dj, align 4
  %i.ej = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.ej, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.ek = load i32, ptr %i.u, align 4, !tbaa !218 ; 8 uses
  br i1 %.0.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.el = load i32, ptr %i.w, align 8, !tbaa !219 ; 2 uses
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph.i11.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i

.lr.ph.i11.i:                                     ; preds = %bb.r, %.lr.ph.i11.i
  %.012.i.i = phi i32 [ %i.en, %.lr.ph.i11.i ], [ %i.ek, %bb.r ] ; 2 uses
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %9, i32 noundef %.012.i.i)
  %i.en = add i32 %.012.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.en, %i.el
  br i1 %exitcond.not.i.i, label %_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKS1_RKN5boost13intrusive_ptrINS0_6BufferEEESG_EUlT_E_EEvSH_.exit.i, label %.lr.ph.i11.i, !llvm.loop !235

bb.s:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.eo = load ptr, ptr %5, align 8, !tbaa !206   ; 5 uses
  %i.ep = load i32, ptr %i.w, align 8, !tbaa !219 ; 7 uses
  %.sroa.39.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.c, ptr %.sroa.39.0..sroa_idx.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.d, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.b, ptr %.sroa.6.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.a, ptr %.sroa.7.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %0, ptr %.sroa.8.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i, align 8
  store i8 1, ptr %8, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.eo, ptr %.sroa.28.0..sroa_idx.i.i.i.i, align 8
  %.not.i.i.i.i.i = icmp slt i32 %i.ek, %i.ep
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.eq = add i32 %i.ek, 63                       ; 2 uses
  %i.er = srem i32 %i.eq, 64
  %i.es = sub nsw i32 %i.eq, %i.er                ; 6 uses
  %i.et = and i32 %i.ep, -64                      ; 6 uses
  %i.eu = icmp slt i32 %i.et, %i.es
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ev = ashr i32 %i.ep, 6
  %i.ew = and i32 %i.ep, 63
  %i.ex = zext nneg i32 %i.ew to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.ez = sub nsw i32 %i.es, %i.ek                ; 2 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fa
  %i.fb = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.fc = sub nsw i32 64, %i.ez
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl i64 %i.fb, %i.fd
  %i.ff = and i64 %i.fe, %i.ey
  %i.fg = sext i32 %i.ev to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !131
  %i.fj = and i64 %i.ff, %i.fi                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.u, %.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.fo, %.preheader.i.i.i.i.i.i ], [ %i.fj, %bb.u ] ; 3 uses
  %i.fk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.fl = trunc nuw nsw i64 %i.fk to i32
  %i.fm = or disjoint i32 %i.et, %i.fl
  call fastcc void @_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_(ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.39.0..sroa_idx.i.i.i.i, i32 noundef %i.fm)
  %i.fn = add nsw i64 %.011.i.i.i.i.i.i, -1
  %i.fo = and i64 %i.fn, %.011.i.i.i.i.i.i        ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiiSI_.exit.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !236

bb.v:                                             ; preds = %bb.t
  %.not32.i.i.i.i.i = icmp eq i32 %i.ek, %i.es
  br i1 %.not32.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fp = sdiv i32 %i.ek, 64                      ; 2 uses
  %i.fq = sub nsw i32 %i.es, %i.ek                ; 2 uses
  %i.fr = zext nneg i32 %i.fq to i64
  %notmask.i.i35.i.i.i.i.i = shl nsw i64 -1, %i.fr
  %i.fs = xor i64 %notmask.i.i35.i.i.i.i.i, -1
  %i.ft = sub nsw i32 64, %i.fq
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl i64 %i.fs, %i.fu
  %i.fw = sext i32 %i.fp to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !131
  %i.fz = and i64 %i.fy, %i.fv                    ; 2 uses
  %.not.i36.i.i.i.i.i = icmp eq i64 %i.fz, 0
  br i1 %.not.i36.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit40.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i

.preheader.i37.i.i.i.i.i:                         ; preds = %bb.w
  %i.ga = shl nsw i32 %i.fp, 6
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader.i37.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED2Ev:bb.a
          to label %.noexc.i unwind label %bb.d, !inline_history !205

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !194
  %.not.i.i = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !45
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %..i.i
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.d, !inline_history !205

bb.d:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, %bb.c, %.noexc.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8facebook5velox4exec14WindowFunctionE, i64 16), ptr %0, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !206 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !207
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #32, !inline_history !214
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i

_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36 ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.am, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !44
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !215
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !215
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i.i.i.i2 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.l, label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit, !prof !48

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #30, !inline_history !214
  br label %_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit

_ZN8facebook5velox4exec14WindowFunctionD2Ev.exit: ; preds = %_ZN8facebook5velox17SelectivityVectorD2Ev.exit.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 8)) %0) unnamed_addr #15 align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE14resetPartitionEPKNS0_4exec15WindowPartitionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(168) initializes((88, 96)) %0, ptr noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.a, align 8, !tbaa !433
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
  %i.f = load ptr, ptr %3, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !203
  %i.i = lshr i64 %i.h, 2                         ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !217  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !208  ; 2 uses
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
  store ptr %i.u, ptr %i.k, align 8, !tbaa !217
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !218
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !219
  %i.z = icmp slt i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !426, !range !66, !noundef !67
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !433
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !428
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
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !204 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i8, ptr %i.al, align 4, !tbaa !202
  %i.an = and i8 %i.am, 2
  %.not.i.i13 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i13, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i, label %bb.h, !prof !62

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #34
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199 ; 8 uses
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
  %wide.load = load <4 x i64>, ptr %i.ax, align 8, !tbaa !131
  %wide.load146 = load <4 x i64>, ptr %i.ay, align 8, !tbaa !131
  %wide.load147 = load <4 x i64>, ptr %i.az, align 8, !tbaa !131
  %wide.load148 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !131
  %i.bb = xor <4 x i64> %wide.load, splat (i64 -1)
  %i.bc = xor <4 x i64> %wide.load146, splat (i64 -1)
  %i.bd = xor <4 x i64> %wide.load147, splat (i64 -1)
  %i.be = xor <4 x i64> %wide.load148, splat (i64 -1)
  store <4 x i64> %i.bb, ptr %i.ax, align 8, !tbaa !131
  store <4 x i64> %i.bc, ptr %i.ay, align 8, !tbaa !131
  store <4 x i64> %i.bd, ptr %i.az, align 8, !tbaa !131
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !131
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !434

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.preheader26.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !223

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
  %wide.load153 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !131
  %i.bk = xor <4 x i64> %wide.load153, splat (i64 -1)
  store <4 x i64> %i.bk, ptr %i.bj, align 8, !tbaa !131
  %index.next154 = add nuw i64 %index152, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next154, %n.vec151
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !435

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
  %18 = zext nneg i32 %.0.lcssa.i.i to i64        ; 8 uses
  %19 = or disjoint i64 %18, 8                    ; 3 uses
  %20 = or disjoint i64 %18, 16
  %21 = add nuw nsw i64 %.sroa.015.4.extract.shift.i, 1
  %umax158 = tail call i64 @llvm.umax.i64(i64 %20, i64 %21)
  %22 = add nsw i64 %umax158, -9
  %23 = sub nsw i64 %22, %18                      ; 3 uses
  %24 = lshr i64 %23, 3
  %25 = add nuw nsw i64 %24, 1                    ; 5 uses
  %min.iters.check159 = icmp ult i64 %23, 120
  br i1 %min.iters.check159, label %.lr.ph31.i.i.preheader, label %vector.main.loop.iter.check160

vector.main.loop.iter.check160:                   ; preds = %iter.check176
  %min.iters.check161 = icmp ult i64 %23, 1016
  br i1 %min.iters.check161, label %vec.epilog.ph180, label %vector.ph162

vector.ph162:                                     ; preds = %vector.main.loop.iter.check160
  %n.mod.vf163 = and i64 %25, 112
  %n.vec164 = and i64 %25, 4611686018427387776    ; 4 uses
  %26 = shl i64 %n.vec164, 3                      ; 2 uses
  %27 = add i64 %26, %18
  %28 = add i64 %19, %26                          ; 2 uses
  %29 = lshr exact i64 %18, 3
  %30 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %29
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next171, %vector.body165 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %30, i64 %index166 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 96 ; 2 uses
  %wide.load167 = load <32 x i8>, ptr %i.bo, align 1, !tbaa !15
  %wide.load168 = load <32 x i8>, ptr %i.bp, align 1, !tbaa !15
  %wide.load169 = load <32 x i8>, ptr %i.bq, align 1, !tbaa !15
  %wide.load170 = load <32 x i8>, ptr %i.br, align 1, !tbaa !15
  %i.bs = xor <32 x i8> %wide.load167, splat (i8 -1)
  %i.bt = xor <32 x i8> %wide.load168, splat (i8 -1)
  %i.bu = xor <32 x i8> %wide.load169, splat (i8 -1)
  %i.bv = xor <32 x i8> %wide.load170, splat (i8 -1)
  store <32 x i8> %i.bs, ptr %i.bo, align 1, !tbaa !15
  store <32 x i8> %i.bt, ptr %i.bp, align 1, !tbaa !15
  store <32 x i8> %i.bu, ptr %i.bq, align 1, !tbaa !15
  store <32 x i8> %i.bv, ptr %i.br, align 1, !tbaa !15
  %index.next171 = add nuw i64 %index166, 128     ; 2 uses
  %i.bw = icmp eq i64 %index.next171, %n.vec164
  br i1 %i.bw, label %middle.block172, label %vector.body165, !llvm.loop !436

middle.block172:                                  ; preds = %vector.body165
  %ind.escape = add nsw i64 %28, -8
  %cmp.n173 = icmp eq i64 %25, %n.vec164
  br i1 %cmp.n173, label %.preheader.i.loopexit.i, label %vec.epilog.iter.check178

vec.epilog.iter.check178:                         ; preds = %middle.block172
  %min.epilog.iters.check179 = icmp eq i64 %n.mod.vf163, 0
  br i1 %min.epilog.iters.check179, label %.lr.ph31.i.i.preheader, label %vec.epilog.ph180, !prof !226

vec.epilog.ph180:                                 ; preds = %vector.main.loop.iter.check160, %vec.epilog.iter.check178
  %vec.epilog.resume.val174 = phi i64 [ %n.vec164, %vec.epilog.iter.check178 ], [ 0, %vector.main.loop.iter.check160 ]
  %n.vec182 = and i64 %25, 4611686018427387888    ; 3 uses
  %31 = shl i64 %n.vec182, 3                      ; 2 uses
  %32 = add i64 %31, %18
  %33 = add i64 %19, %31                          ; 2 uses
  %34 = lshr exact i64 %18, 3
  %35 = getelementptr inbounds nuw i8, ptr %i.ap, i64 %34
  br label %vec.epilog.vector.body183

vec.epilog.vector.body183:                        ; preds = %vec.epilog.vector.body183, %vec.epilog.ph180
  %index184 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph180 ], [ %index.next186, %vec.epilog.vector.body183 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %35, i64 %index184 ; 2 uses
  %wide.load185 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !15
  %i.by = xor <16 x i8> %wide.load185, splat (i8 -1)
  store <16 x i8> %i.by, ptr %i.bx, align 1, !tbaa !15
  %index.next186 = add nuw i64 %index184, 16      ; 2 uses
  %i.bz = icmp eq i64 %index.next186, %n.vec182
  br i1 %i.bz, label %vec.epilog.middle.block187, label %vec.epilog.vector.body183, !llvm.loop !437

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body183
  %ind.escape188 = add nsw i64 %33, -8
  %cmp.n189 = icmp eq i64 %25, %n.vec182
  br i1 %cmp.n189, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i.preheader

.lr.ph31.i.i.preheader:                           ; preds = %iter.check176, %vec.epilog.iter.check178, %vec.epilog.middle.block187
  %indvars.iv65.i.ph = phi i64 [ %18, %iter.check176 ], [ %27, %vec.epilog.iter.check178 ], [ %32, %vec.epilog.middle.block187 ]
  %indvars.iv.i.ph = phi i64 [ %19, %iter.check176 ], [ %28, %vec.epilog.iter.check178 ], [ %33, %vec.epilog.middle.block187 ]
  br label %.lr.ph31.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i, %.lr.ph.i.i ], [ %indvars.iv36.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.ca = lshr exact i64 %indvars.iv36.i.i, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !131
  %i.cd = xor i64 %i.cc, -1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !131
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %.not.i10.i = icmp samesign ugt i64 %indvars.iv.next.i.i, %.sroa.015.4.extract.shift.i
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 64
  br i1 %.not.i10.i, label %.preheader26.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !438

.preheader.i.loopexit.i:                          ; preds = %.lr.ph31.i.i, %vec.epilog.middle.block187, %middle.block172
  %indvars.iv.i.lcssa = phi i64 [ %ind.escape188, %vec.epilog.middle.block187 ], [ %ind.escape, %middle.block172 ], [ %indvars.iv.i, %.lr.ph31.i.i ]
  %36 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.loopexit.i, %.preheader26.i.i
  %.1.lcssa.i.i = phi i32 [ %.0.lcssa.i.i, %.preheader26.i.i ], [ %36, %.preheader.i.loopexit.i ] ; 2 uses
  %i.ce = icmp slt i32 %.1.lcssa.i.i, %.sroa.015.4.extract.trunc.i
  br i1 %i.ce, label %.lr.ph34.preheader.i.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i

.lr.ph34.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cf = zext nneg i32 %.1.lcssa.i.i to i64
  br label %.lr.ph34.i.i

.lr.ph31.i.i:                                     ; preds = %.lr.ph31.i.i.preheader, %.lr.ph31.i.i
  %indvars.iv65.i = phi i64 [ %indvars.iv.next66.i, %.lr.ph31.i.i ], [ %indvars.iv65.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph31.i.i ], [ %indvars.iv.i.ph, %.lr.ph31.i.i.preheader ] ; 2 uses
  %37 = lshr exact i64 %indvars.iv65.i, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ap, i64 %37 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ci = xor i8 %i.ch, -1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not24.i.i = icmp samesign ugt i64 %indvars.iv.next.i, %.sroa.015.4.extract.shift.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 8
  br i1 %.not24.i.i, label %.preheader.i.loopexit.i, label %.lr.ph31.i.i, !llvm.loop !439

.lr.ph34.i.i:                                     ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.lr.ph34.preheader.i.i
  %indvars.iv41.i.i = phi i64 [ %i.cf, %.lr.ph34.preheader.i.i ], [ %indvars.iv.next42.i.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i ] ; 6 uses
  %i.cj = lshr i64 %indvars.iv41.i.i, 6
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !131
  %i.cm = and i64 %indvars.iv41.i.i, 63
  %i.cn = shl nuw i64 1, %i.cm
  %i.co = and i64 %i.cn, %i.cl
  %.not25.i.i = icmp eq i64 %i.co, 0
  %i.cp = lshr i64 %indvars.iv41.i.i, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.cp ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15  ; 2 uses
  br i1 %.not25.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i.i
  %i.cs = trunc i64 %indvars.iv41.i.i to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = shl nuw i8 1, %i.ct
  %i.cv = or i8 %i.cu, %i.cr
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

bb.j:                                             ; preds = %.lr.ph34.i.i
  %i.cw = and i64 %indvars.iv41.i.i, 7
  %i.cx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = and i8 %i.cy, %i.cr
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i: ; preds = %bb.j, %bb.i
  %.sink.i.i.i = phi i8 [ %i.cz, %bb.j ], [ %i.cv, %bb.i ]
  store i8 %.sink.i.i.i, ptr %i.cq, align 1, !tbaa !15
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i.i, %.sroa.015.4.extract.shift.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits6negateEPmi.exit.i, label %.lr.ph34.i.i, !llvm.loop !230

_ZN8facebook5velox4bits6negateEPmi.exit.i:        ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i.i, %.preheader.i.i
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !204
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !199 ; 14 uses
  %i.dd = load ptr, ptr %3, align 8, !tbaa !204
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !199 ; 6 uses
  %i.dg = load ptr, ptr %4, align 8, !tbaa !204
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !199 ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 37
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !170, !range !66, !noundef !67
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i, label %bb.k

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i: ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %.0.in.pre.i.i.i = load i8, ptr %i.dj, align 4, !tbaa !140, !range !66
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

bb.k:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit.i
  %i.dn = load i32, ptr %i.v, align 4, !tbaa !218
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.l, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.x, align 8, !tbaa !219 ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !233
  %i.ds = icmp eq i32 %i.dp, %i.dr
  br i1 %i.ds, label %bb.m, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dt = load ptr, ptr %5, align 8, !tbaa !206   ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.dp, 0
  br i1 %.not.i.i.i.i, label %bb.n, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.du = and i32 %i.dp, 2147483584               ; 3 uses
  %i.dv = zext nneg i32 %i.du to i64
  %.not37.i.i.not.i.i.i137.not = icmp eq i32 %i.du, 0
  br i1 %.not37.i.i.not.i.i.i137.not, label %.critedge.i.i.i.i.i, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i138, 64 ; 2 uses
  %.not37.i.i.not.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.dv
  br i1 %.not37.i.i.not.i.i.i, label %.lr.ph, label %.critedge.i.i.i.i.i, !llvm.loop !234

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %indvars.iv.i.i.i138 = phi i64 [ %indvars.iv.next.i.i.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.dw = lshr exact i64 %indvars.iv.i.i.i138, 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !131
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.o, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, !llvm.loop !234

.critedge.i.i.i.i.i:                              ; preds = %bb.o, %bb.n
  %.not38.i.i.i.i.i = icmp eq i32 %i.dp, %i.du
  br i1 %.not38.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i
  %i.ea = lshr i32 %i.dp, 6
  %i.eb = and i32 %i.dp, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %notmask.i40.i.i.i.i.i = shl nsw i64 -1, %i.ec
  %i.ed = zext nneg i32 %i.ea to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !131
  %.demorgan.i.i.i = or i64 %i.ef, %notmask.i40.i.i.i.i.i
  %i.eg = icmp eq i64 %.demorgan.i.i.i, -1
  %i.eh = zext i1 %i.eg to i16
  %i.ei = or disjoint i16 %i.eh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i: ; preds = %.lr.ph, %bb.p, %.critedge.i.i.i.i.i, %bb.m, %bb.l, %bb.k
  %.sroa.0.0.insert.ext.i.i.i = phi i16 [ 256, %bb.l ], [ 256, %bb.k ], [ 257, %bb.m ], [ 257, %.critedge.i.i.i.i.i ], [ %i.ei, %bb.p ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i, ptr %i.dj, align 4
  %i.ej = trunc i16 %.sroa.0.0.insert.ext.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i
  %.0.in.i.i.i = phi i8 [ %.0.in.pre.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i ], [ %i.ej, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i ]
  %.0.i.i.i = trunc nuw i8 %.0.in.i.i.i to i1
  %i.ek = load i32, ptr %i.v, align 4, !tbaa !218 ; 8 uses
  br i1 %.0.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.el = load i32, ptr %i.x, align 8, !tbaa !219 ; 2 uses
  %i.em = icmp slt i32 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph.i11.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

.lr.ph.i11.i:                                     ; preds = %bb.q
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.er = sext i32 %i.ek to i64
  %invariant.op204.a = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, %.lr.ph.i11.i
  %indvars.iv.i12.i = phi i64 [ %i.er, %.lr.ph.i11.i ], [ %indvars.iv.next.i13.i, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i ] ; 4 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv.i12.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !41
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.di, i64 %indvars.iv.i12.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = sub nsw i32 %i.et, %.sroa.015.0.extract.trunc.i
  %.reass105.i.reass.reass = add i32 %i.ev, %invariant.op204.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 -1, ptr %i.e, align 4, !tbaa !41
  store ptr %i.dc, ptr %16, align 8, !tbaa !407
  store ptr %i.e, ptr %i.en, align 8, !tbaa !232
  store i8 1, ptr %i.eo, align 8, !tbaa !409
  store ptr %i.dc, ptr %17, align 8, !tbaa !410
  store ptr %i.e, ptr %i.ep, align 8, !tbaa !232
  store i8 1, ptr %i.eq, align 8, !tbaa !412
  %i.ex = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ew, i32 noundef %.reass105.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %16, ptr noundef nonnull byval(%class.anon.204) align 8 %17) ; 0 uses
  %i.ey = load i32, ptr %i.e, align 4, !tbaa !41  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ez = icmp eq i32 %i.ey, -1
  %i.fa = add nsw i32 %i.ey, %.sroa.015.0.extract.trunc.i
  %spec.select.i = select i1 %i.ez, i32 -1, i32 %i.fa
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !208
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i12.i
  store i32 %spec.select.i, ptr %i.fc, align 4, !tbaa !41
  %indvars.iv.next.i13.i = add nsw i64 %indvars.iv.i12.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i13.i to i32
  %exitcond.not.i.i = icmp eq i32 %i.el, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, !llvm.loop !440

bb.r:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i
  %i.fd = load ptr, ptr %5, align 8, !tbaa !206   ; 4 uses
  %i.fe = load i32, ptr %i.x, align 8, !tbaa !219 ; 7 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.ek, %i.fe
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit

bb.s:                                             ; preds = %bb.r
  %i.ff = add i32 %i.ek, 63                       ; 2 uses
  %i.fg = srem i32 %i.ff, 64
  %i.fh = sub nsw i32 %i.ff, %i.fg                ; 6 uses
  %i.fi = and i32 %i.fe, -64                      ; 6 uses
  %i.fj = icmp slt i32 %i.fi, %i.fh
  br i1 %i.fj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fk = ashr i32 %i.fe, 6
  %i.fl = and i32 %i.fe, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.fm
  %i.fn = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.fo = sub nsw i32 %i.fh, %i.ek                ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fp
  %i.fq = xor i64 %notmask.i.i.i.i.i.i.i, -1
  %i.fr = sub nsw i32 64, %i.fo
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = shl i64 %i.fq, %i.fs
  %i.fu = and i64 %i.ft, %i.fn
  %i.fv = sext i32 %i.fk to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !131
  %i.fy = and i64 %i.fu, %i.fx                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.t
  %i.fz = sext i32 %i.fi to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 16
  %invariant.op203 = sub i32 1, %.sroa.015.0.extract.trunc.i
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.fy, %.preheader.i.i.i.i.i.i ], [ %i.gs, %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ge = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i.i, i1 true)
  %i.gf = or disjoint i64 %i.ge, %i.fz            ; 3 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !41
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.gf
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !41
  %i.gk = sub nsw i32 %i.gh, %.sroa.015.0.extract.trunc.i
  %.reass103.i.reass.reass = add i32 %i.gj, %invariant.op203
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 -1, ptr %i.d, align 4, !tbaa !41
  store ptr %i.dc, ptr %14, align 8, !tbaa !407
  store ptr %i.d, ptr %i.ga, align 8, !tbaa !232
  store i8 1, ptr %i.gb, align 8, !tbaa !409
  store ptr %i.dc, ptr %15, align 8, !tbaa !410
  store ptr %i.d, ptr %i.gc, align 8, !tbaa !232
  store i8 1, ptr %i.gd, align 8, !tbaa !412
  %i.gl = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.gk, i32 noundef %.reass103.i.reass.reass, ptr noundef nonnull byval(%class.anon.202) align 8 %14, ptr noundef nonnull byval(%class.anon.204) align 8 %15) ; 0 uses
end_hunk_1
begin_hunk_2_@llvm.smin.i32
!29 = !{!"_ZTSSt13_Bit_iterator", !30, i64 0}
!30 = !{!"_ZTSSt18_Bit_iterator_base", !31, i64 0, !5, i64 8}
!31 = !{!"p1 long", !11, i64 0}
!32 = !{!33, !34, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !11, i64 0}
!35 = !{!33, !34, i64 16}
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !38, i64 0}
!38 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!39 = !{!11, !11, i64 0}
!40 = !{!33, !34, i64 8}
!41 = !{!5, !5, i64 0}
!42 = !{!43, !5, i64 8}
!43 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!44 = !{!43, !5, i64 12}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !7, i64 0}
!47 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!48 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!49 = !{!34, !34, i64 0}
!50 = !{!51, !11, i64 24}
!51 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERKSt6vectorINS3_17WindowFunctionArgESaIS9_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEEE", !52, i64 0, !11, i64 24}
!52 = !{!"_ZTSSt14_Function_base", !6, i64 0, !11, i64 16}
!53 = !{!52, !11, i64 16}
!54 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!58 = distinct !{null, ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!59 = !{!60, !61, i64 32}
!60 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !6, i64 0, !61, i64 32}
!61 = !{!"bool", !6, i64 0}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!65 = distinct !{!65, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!69, !61, i64 104}
!69 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !6, i64 0, !61, i64 104}
!70 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!71 = !{!72, !73, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!73 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !11, i64 0}
!74 = !{!72, !73, i64 8}
!75 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!76 = distinct !{!76, !56}
!77 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!78 = !{!72, !73, i64 16}
!79 = distinct !{null, null}
!80 = !{!30, !31, i64 0}
!81 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!82 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!83 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!84 = !{!18, !14, i64 24}
!85 = !{!21, !22, i64 0}
!86 = distinct !{!86, !56}
!87 = !{!22, !22, i64 0}
!88 = !{!89, !14, i64 0}
!89 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !14, i64 0}
!90 = distinct !{!90, !56}
!91 = !{!92, !93, i64 0}
!92 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !93, i64 0, !94, i64 8}
!93 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEEE", !11, i64 0}
!94 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEE", !11, i64 0}
!95 = !{!92, !94, i64 8}
!96 = distinct !{!96, !56}
!97 = !{!23, !14, i64 8}
!98 = !{!18, !22, i64 16}
!99 = !{!18, !22, i64 48}
!100 = distinct !{!100, !56}
!101 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!102 = !{!103, !61, i64 96}
!103 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !13, i64 0, !104, i64 32, !107, i64 56, !61, i64 96}
!104 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !105, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !72, i64 0}
!107 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !108, i64 0}
!108 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !109, i64 0}
!109 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !110, i64 0}
!110 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !60, i64 0}
!111 = !{!73, !73, i64 0}
!112 = distinct !{null, null, null, null}
!113 = distinct !{!113, !56}
!114 = distinct !{null, null, null}
!115 = distinct !{null, null, null, null}
!116 = distinct !{null}
!117 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_}
!118 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!119 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZSt10destroy_atIN8facebook5velox4exec13TypeSignatureEEvPT_, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!120 = !{!121, !61, i64 232}
!121 = !{!"_ZTSN8facebook5velox4exec24FunctionSignatureBuilderE", !122, i64 0, !123, i64 56, !104, i64 168, !127, i64 192, !61, i64 232}
!122 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEE", !18, i64 0}
!123 = !{!"_ZTSSt8optionalIN8facebook5velox4exec13TypeSignatureEE", !124, i64 0}
!124 = !{!"_ZTSSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EE", !125, i64 0}
!125 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb0ELb0ELb0EE", !126, i64 0}
!126 = !{!"_ZTSSt17_Optional_payloadIN8facebook5velox4exec13TypeSignatureELb1ELb0ELb0EE", !69, i64 0}
!127 = !{!"_ZTSSt6vectorIbSaIbEE", !128, i64 0}
!128 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !129, i64 0}
!129 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !28, i64 0}
!130 = !{!30, !5, i64 8}
!131 = !{!14, !14, i64 0}
!132 = distinct !{null}
!133 = distinct !{!133, !56}
!134 = distinct !{null, null}
!135 = distinct !{!135, !56}
!136 = distinct !{!136, !56}
!137 = distinct !{!137, !56}
!138 = distinct !{null}
!139 = distinct !{!139, !56}
!140 = !{!61, !61, i64 0}
!141 = !{!142, !142, i64 0}
!142 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !11, i64 0}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_: argument 0"}
!145 = distinct !{!145, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_"}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!148 = distinct !{!148, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EET_St14__invoke_otherOT0_DpOT1_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZZN8facebook5velox6window9prestosql25registerFirstLastInternalILNS2_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISG_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_clESK_SQ_bST_SV_SZ_: argument 0"}
!151 = distinct !{!151, !"_ZZN8facebook5velox6window9prestosql25registerFirstLastInternalILNS2_12_GLOBAL__N_19ValueTypeE0EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISG_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_clESK_SQ_bST_SV_SZ_"}
!152 = !{!153, !150, !147, !144}
!153 = distinct !{!153, !154, !"_ZSt11make_uniqueIN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS4_9ValueTypeE0EEEJRKSt6vectorINS1_4exec17WindowFunctionArgESaISA_EERKSt10shared_ptrIKNS1_4TypeEERbRPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!154 = distinct !{!154, !"_ZSt11make_uniqueIN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS4_9ValueTypeE0EEEJRKSt6vectorINS1_4exec17WindowFunctionArgESaISA_EERKSt10shared_ptrIKNS1_4TypeEERbRPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!155 = !{!156, !142, i64 24}
!156 = !{!"_ZTSN8facebook5velox4exec14WindowFunctionE", !157, i64 8, !142, i64 24, !160, i64 32, !161, i64 40}
!157 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !158, i64 0}
!158 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !159, i64 0, !37, i64 8}
!159 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!160 = !{!"p1 _ZTSN8facebook5velox19HashStringAllocatorE", !11, i64 0}
!161 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !162, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !166, i64 36}
!162 = !{!"_ZTSSt6vectorImSaImEE", !163, i64 0}
!163 = !{!"_ZTSSt12_Vector_baseImSaImEE", !164, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!166 = !{!"_ZTSSt8optionalIbE", !167, i64 0}
!167 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !168, i64 0}
!168 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !169, i64 0}
!169 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !61, i64 1}
!170 = !{!169, !61, i64 1}
!171 = !{!172, !61, i64 80}
!172 = !{!"_ZTSN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EEE", !156, i64 0, !61, i64 80, !5, i64 84, !173, i64 88, !174, i64 96, !179, i64 120, !161, i64 128}
!173 = !{!"p1 _ZTSN8facebook5velox4exec15WindowPartitionE", !11, i64 0}
!174 = !{!"_ZTSSt6vectorIiSaIiEE", !175, i64 0}
!175 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !176, i64 0}
!176 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !177, i64 0}
!177 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !178, i64 0, !178, i64 8, !178, i64 16}
!178 = !{!"p1 int", !11, i64 0}
!179 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !180, i64 0}
!180 = !{!"p1 _ZTSN8facebook5velox6BufferE", !11, i64 0}
!181 = !{!182, !183, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17WindowFunctionArgESaIS3_EE17_Vector_impl_dataE", !183, i64 0, !183, i64 8, !183, i64 16}
!183 = !{!"p1 _ZTSN8facebook5velox4exec17WindowFunctionArgE", !11, i64 0}
!184 = !{!185, !186, i64 0}
!185 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !186, i64 0, !37, i64 8}
!186 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !11, i64 0}
!187 = !{!188, !61, i64 4}
!188 = !{!"_ZTSSt22_Optional_payload_baseIKjE", !6, i64 0, !61, i64 4}
!189 = !{!172, !5, i64 84}
!190 = !{!191, !153, !150, !147, !144}
!191 = distinct !{!191, !192, !"_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!192 = distinct !{!192, !"_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!193 = distinct !{null}
!194 = !{!195, !142, i64 8}
!195 = !{!"_ZTSN8facebook5velox6BufferE", !142, i64 8, !10, i64 16, !14, i64 24, !14, i64 32, !196, i64 40, !198, i64 44, !6, i64 48}
!196 = !{!"_ZTSSt6atomicIiE", !197, i64 0}
!197 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!198 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !6, i64 0}
!199 = !{!195, !10, i64 16}
!200 = !{!195, !14, i64 32}
!201 = !{!197, !5, i64 0}
!202 = !{!195, !198, i64 44}
!203 = !{!195, !14, i64 24}
!204 = !{!179, !180, i64 0}
!205 = distinct !{null}
!206 = !{!165, !31, i64 0}
!207 = !{!165, !31, i64 16}
!208 = !{!177, !178, i64 0}
!209 = !{!177, !178, i64 16}
!210 = !{!211, !212, i64 0}
!211 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox4exec14WindowFunctionELb0EE", !212, i64 0}
!212 = !{!"p1 _ZTSN8facebook5velox4exec14WindowFunctionE", !11, i64 0}
!213 = !{!150, !147, !144}
!214 = !{ptr @_ZN8facebook5velox4exec14WindowFunctionD2Ev}
!215 = distinct !{ptr @_ZN8facebook5velox4exec14WindowFunctionD2Ev, null, null, null}
!216 = !{!172, !173, i64 88}
!217 = !{!177, !178, i64 8}
!218 = !{!161, !5, i64 28}
!219 = !{!161, !5, i64 32}
!220 = distinct !{!220, !56, !221, !222}
!221 = !{!"llvm.loop.isvectorized", i32 1}
!222 = !{!"llvm.loop.unroll.runtime.disable"}
!223 = !{!"branch_weights", i32 4, i32 12}
!224 = distinct !{!224, !56, !221, !222}
!225 = distinct !{!225, !56, !221, !222}
!226 = !{!"branch_weights", i32 16, i32 112}
!227 = distinct !{!227, !56, !221, !222}
!228 = distinct !{!228, !56, !222, !221}
!229 = distinct !{!229, !56, !222, !221}
!230 = distinct !{!230, !56}
!231 = !{!31, !31, i64 0}
!232 = !{!178, !178, i64 0}
!233 = !{!161, !5, i64 24}
!234 = distinct !{!234, !56}
!235 = distinct !{!235, !56}
!236 = distinct !{!236, !56}
!237 = distinct !{!237, !56}
!238 = distinct !{!238, !56}
!239 = distinct !{!239, !56}
!240 = distinct !{!240, !56}
!241 = !{!165, !31, i64 8}
!242 = distinct !{!242, !56}
!243 = distinct !{!243, !56}
!244 = distinct !{!244, !56}
!245 = distinct !{null, null, null}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!248 = distinct !{!248, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!251 = distinct !{!251, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!254 = distinct !{!254, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!257 = distinct !{!257, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!258 = !{!259}
!259 = distinct !{!259, !260, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!260 = distinct !{!260, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!263 = distinct !{!263, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!266 = distinct !{!266, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!267 = !{!198, !198, i64 0}
!268 = !{!269}
!269 = distinct !{!269, !270, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!270 = distinct !{!270, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!271 = !{!272, !5, i64 0}
!272 = !{!"_ZTSN3fmt3v1111basic_specsE", !5, i64 0, !6, i64 4}
!273 = !{!274, !5, i64 12}
!274 = !{!"_ZTSN3fmt3v1112format_specsE", !272, i64 0, !5, i64 8, !5, i64 12}
!275 = !{!276, !10, i64 0}
!276 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !10, i64 0, !14, i64 8}
!277 = !{!276, !14, i64 8}
!278 = !{!279, !279, i64 0}
!279 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !11, i64 0}
!280 = distinct !{!280, !56}
!281 = !{!282, !282, i64 0}
!282 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !6, i64 0}
!283 = distinct !{!283, !56}
!284 = !{!285, !5, i64 16}
!285 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !276, i64 0, !5, i64 16}
!286 = !{!287, !287, i64 0}
!287 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !11, i64 0}
!288 = !{!289, !289, i64 0}
!289 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !11, i64 0}
!290 = !{!291, !289, i64 8}
!291 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !287, i64 0, !289, i64 8, !11, i64 16}
!292 = !{i64 8}
!293 = !{!291, !11, i64 16}
!294 = !{i64 4}
!295 = !{!291, !287, i64 0}
!296 = distinct !{!296, !56}
!297 = !{!298, !10, i64 0}
!298 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !10, i64 0, !31, i64 8, !31, i64 16}
!299 = !{!300, !10, i64 0}
!300 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !10, i64 0, !14, i64 8, !14, i64 16, !11, i64 24}
!301 = !{!300, !14, i64 8}
!302 = !{!300, !14, i64 16}
!303 = !{!300, !11, i64 24}
!304 = !{!305, !14, i64 288}
!305 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !300, i64 0, !6, i64 32, !14, i64 288}
!306 = !{!274, !5, i64 8}
!307 = distinct !{!307, !56}
!308 = distinct !{!308, !56, !221, !222}
!309 = !{!"branch_weights", i32 8, i32 120}
!310 = distinct !{!310, !56, !221, !222}
!311 = distinct !{!311, !312}
!312 = !{!"llvm.loop.unroll.disable"}
!313 = distinct !{!313, !56, !221}
!314 = distinct !{!314, !56}
!315 = !{!316, !61, i64 0}
!316 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !61, i64 0, !276, i64 8, !10, i64 24, !14, i64 32}
!317 = !{!10, !10, i64 0}
!318 = !{!316, !10, i64 24}
!319 = !{!316, !14, i64 32}
!320 = distinct !{null, null, null}
!321 = !{!322, !10, i64 0}
!322 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !10, i64 0, !10, i64 8, !5, i64 16}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!325 = distinct !{!325, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!326 = !{!322, !10, i64 8}
!327 = !{!322, !5, i64 16}
!328 = distinct !{null, null, null}
!329 = distinct !{!329, !56, !221, !222}
!330 = distinct !{!330, !56, !221, !222}
!331 = distinct !{!331, !312}
!332 = distinct !{!332, !56}
!333 = distinct !{!333, !56, !221}
!334 = distinct !{!334, !56}
!335 = distinct !{null, null}
!336 = distinct !{null, null, null, null}
!337 = distinct !{!337, !56, !221, !222}
!338 = distinct !{!338, !56, !221, !222}
!339 = distinct !{!339, !312}
!340 = distinct !{!340, !56, !221}
!341 = distinct !{!341, !56}
!342 = distinct !{!342, !56, !221, !222}
!343 = distinct !{!343, !56, !221, !222}
!344 = distinct !{!344, !312}
!345 = distinct !{!345, !56, !221}
!346 = distinct !{!346, !56}
!347 = distinct !{!347, !56}
!348 = distinct !{!348, !56, !221, !222}
!349 = distinct !{!349, !56, !221, !222}
!350 = distinct !{!350, !312}
!351 = distinct !{!351, !56, !221}
!352 = distinct !{!352, !56}
!353 = distinct !{!353, !56}
!354 = distinct !{null, null, null}
!355 = !{!356, !31, i64 0}
!356 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !31, i64 0}
!357 = distinct !{null, null, null, null}
!358 = distinct !{!358, !56}
!359 = distinct !{!359, !56, !221, !222}
!360 = distinct !{!360, !56, !221, !222}
!361 = distinct !{!361, !312}
!362 = distinct !{!362, !56, !221}
!363 = distinct !{!363, !56}
!364 = !{!365, !366, i64 0}
!365 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !366, i64 0, !6, i64 8}
!366 = !{!"long long", !6, i64 0}
!367 = !{!368, !370}
!368 = distinct !{!368, !369, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!369 = distinct !{!369, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!370 = distinct !{!370, !371, !"_ZNK3fmt3v117context3argEi: argument 0"}
!371 = distinct !{!371, !"_ZNK3fmt3v117context3argEi"}
!372 = !{!373, !375}
!373 = distinct !{!373, !374, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!374 = distinct !{!374, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!375 = distinct !{!375, !376, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!376 = distinct !{!376, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!377 = !{!378, !14, i64 8}
!378 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !379, i64 0, !14, i64 8}
!379 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !11, i64 0}
!380 = !{!378, !379, i64 0}
!381 = distinct !{!381, !56}
!382 = !{!383, !10, i64 0}
!383 = !{!"_ZTSN3fmt3v116detail14named_arg_infoIcEE", !10, i64 0, !5, i64 8}
!384 = !{!383, !5, i64 8}
!385 = !{!386, !386, i64 0}
!386 = !{!"_ZTSN3fmt3v116detail4typeE", !6, i64 0}
!387 = distinct !{!387, !56, !221, !222}
!388 = !{!"branch_weights", i32 8, i32 24}
!389 = distinct !{!389, !56, !221, !222}
!390 = distinct !{!390, !312}
!391 = distinct !{!391, !56, !221}
!392 = distinct !{!392, !56}
!393 = distinct !{!393, !56, !221, !222}
!394 = distinct !{!394, !56, !221, !222}
!395 = distinct !{!395, !56, !221}
!396 = distinct !{!396, !56}
!397 = distinct !{!397, !56}
!398 = !{!399, !402, i64 32}
!399 = !{!"_ZTSZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_EUlT_E_", !400, i64 0, !400, i64 8, !401, i64 16, !178, i64 24, !402, i64 32}
!400 = !{!"p2 int", !20, i64 0}
!401 = !{!"p2 long", !20, i64 0}
!402 = !{!"p1 _ZTSN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE0EEE", !11, i64 0}
!403 = !{!399, !400, i64 0}
!404 = !{!399, !400, i64 8}
!405 = !{!399, !401, i64 16}
!406 = !{!399, !178, i64 24}
!407 = !{!408, !31, i64 0}
!408 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !31, i64 0, !178, i64 8, !61, i64 16}
!409 = !{!408, !61, i64 16}
!410 = !{!411, !31, i64 0}
!411 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !31, i64 0, !178, i64 8, !61, i64 16}
!412 = !{!411, !61, i64 16}
!413 = distinct !{!413, !56}
!414 = !{!415}
!415 = distinct !{!415, !416, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_: argument 0"}
!416 = distinct !{!416, !"_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_"}
!417 = !{!418}
!418 = distinct !{!418, !419, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EET_St14__invoke_otherOT0_DpOT1_: argument 0"}
!419 = distinct !{!419, !"_ZSt13__invoke_implISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_6window9prestosql25registerFirstLastInternalILNS9_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRKSt6vectorINS3_17WindowFunctionArgESaISM_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSQ_SW_bSZ_S11_S15_EET_St14__invoke_otherOT0_DpOT1_"}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZZN8facebook5velox6window9prestosql25registerFirstLastInternalILNS2_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISG_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_clESK_SQ_bST_SV_SZ_: argument 0"}
!422 = distinct !{!422, !"_ZZN8facebook5velox6window9prestosql25registerFirstLastInternalILNS2_12_GLOBAL__N_19ValueTypeE1EEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENKUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISG_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_clESK_SQ_bST_SV_SZ_"}
!423 = !{!424, !421, !418, !415}
!424 = distinct !{!424, !425, !"_ZSt11make_uniqueIN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS4_9ValueTypeE1EEEJRKSt6vectorINS1_4exec17WindowFunctionArgESaISA_EERKSt10shared_ptrIKNS1_4TypeEERbRPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!425 = distinct !{!425, !"_ZSt11make_uniqueIN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS4_9ValueTypeE1EEEJRKSt6vectorINS1_4exec17WindowFunctionArgESaISA_EERKSt10shared_ptrIKNS1_4TypeEERbRPNS1_6memory10MemoryPoolEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!426 = !{!427, !61, i64 80}
!427 = !{!"_ZTSN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EEE", !156, i64 0, !61, i64 80, !5, i64 84, !173, i64 88, !174, i64 96, !179, i64 120, !161, i64 128}
!428 = !{!427, !5, i64 84}
!429 = !{!430, !424, !421, !418, !415}
!430 = distinct !{!430, !431, !"_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!431 = distinct !{!431, !"_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!432 = !{!421, !418, !415}
!433 = !{!427, !173, i64 88}
!434 = distinct !{!434, !56, !221, !222}
!435 = distinct !{!435, !56, !221, !222}
!436 = distinct !{!436, !56, !221, !222}
!437 = distinct !{!437, !56, !221, !222}
!438 = distinct !{!438, !56, !222, !221}
!439 = distinct !{!439, !56, !222, !221}
!440 = distinct !{!440, !56}
!441 = distinct !{!441, !56}
!442 = distinct !{!442, !56}
!443 = distinct !{!443, !56}
!444 = distinct !{!444, !56}
!445 = distinct !{!445, !56}
!446 = distinct !{!446, !56}
!447 = distinct !{!447, !56}
!448 = distinct !{!448, !56, !221, !222}
!449 = distinct !{!449, !56, !221, !222}
!450 = distinct !{!450, !312}
!451 = distinct !{!451, !56, !221}
!452 = distinct !{!452, !56}
!453 = distinct !{!453, !56, !221, !222}
!454 = distinct !{!454, !56, !221, !222}
!455 = distinct !{!455, !56, !221}
!456 = distinct !{!456, !56}
!457 = distinct !{!457, !56}
end_hunk_2
