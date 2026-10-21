Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Bridge?download=true
inline.NumInlined: 27247
inline.NumDeleted: 5972
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_112exportValuesERKNS0_10BaseVectorERKNS1_9SelectionERK12ArrowOptionsR10ArrowArrayPNS0_6memory10MemoryPoolERNS1_24VeloxToArrowBridgeHolderE:bb.a

.lr.ph28.i136.i:                                  ; preds = %bb.bs, %._crit_edge.i140.i
  %.27.i = phi i32 [ %.28.i, %._crit_edge.i140.i ], [ 0, %bb.bs ] ; 2 uses
  %.sroa.019.026.i137.i = phi ptr [ %i.uu, %._crit_edge.i140.i ], [ %i.uk, %bb.bs ] ; 2 uses
  %i.uo = load i64, ptr %.sroa.019.026.i137.i, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i138.i = lshr i64 %i.uo, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i139.i = trunc nuw i64 %.sroa.4.0.extract.shift.i138.i to i32
  %i.up = icmp sgt i32 %.sroa.4.0.extract.trunc.i139.i, 0
  br i1 %i.up, label %.lr.ph25.preheader.i141.i, label %._crit_edge.i140.i

.lr.ph25.preheader.i141.i:                        ; preds = %.lr.ph28.i136.i
  %i.uq = shl i64 %i.uo, 32
  %i.ur = ashr exact i64 %i.uq, 32
  %i.us = sext i32 %.27.i to i64
  br label %.lr.ph25.i142.i

._crit_edge.i140.loopexit.i:                      ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i"
  %i.ut = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i140.i

._crit_edge.i140.i:                               ; preds = %._crit_edge.i140.loopexit.i, %.lr.ph28.i136.i
  %.28.i = phi i32 [ %.27.i, %.lr.ph28.i136.i ], [ %i.ut, %._crit_edge.i140.loopexit.i ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i137.i, i64 8 ; 2 uses
  %i.uv = icmp eq ptr %i.uu, %i.um
  br i1 %i.uv, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, label %.lr.ph28.i136.i

.lr.ph25.i142.i:                                  ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i", %.lr.ph25.preheader.i141.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i" ], [ %i.us, %.lr.ph25.preheader.i141.i ] ; 2 uses
  %indvars.iv31.i143.i = phi i64 [ %indvars.iv.next32.i144.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i" ], [ 0, %.lr.ph25.preheader.i141.i ] ; 2 uses
  %i.uw = add nsw i64 %indvars.iv31.i143.i, %i.ur ; 2 uses
  %i.ux = load ptr, ptr %0, align 8, !tbaa !336
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = trunc nsw i64 %i.uw to i32
  %i.vb = invoke noundef zeroext i1 %i.uz(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.va)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2345

.noexc65:                                         ; preds = %.lr.ph25.i142.i
  br i1 %i.vb, label %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i", label %bb.bt

bb.bt:                                            ; preds = %.noexc65
  %i.vc = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.uw
  %i.vd = invoke noundef i64 @_ZNK8facebook5velox9Timestamp7toNanosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vc)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.bt
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.i
  store i64 %i.vd, ptr %i.ve, align 8, !tbaa !433
  br label %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit.i.i": ; preds = %.noexc66, %.noexc65
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next32.i144.i = add nuw nsw i64 %indvars.iv31.i143.i, 1 ; 2 uses
  %exitcond.not.i145.i = icmp eq i64 %indvars.iv.next32.i144.i, %.sroa.4.0.extract.shift.i138.i
  br i1 %exitcond.not.i145.i, label %._crit_edge.i140.loopexit.i, label %.lr.ph25.i142.i, !llvm.loop !2404

.lr.ph.i130.i:                                    ; preds = %.preheader.i129.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i"
  %indvars.iv.i131.i = phi i64 [ %indvars.iv.next.i132.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i" ], [ 0, %.preheader.i129.i ] ; 4 uses
  %i.vf = load ptr, ptr %0, align 8, !tbaa !336
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.vh = load ptr, ptr %i.vg, align 8
  %i.vi = trunc nuw nsw i64 %indvars.iv.i131.i to i32
  %i.vj = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.vi)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2345

.noexc67:                                         ; preds = %.lr.ph.i130.i
  br i1 %i.vj, label %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i", label %bb.bu

bb.bu:                                            ; preds = %.noexc67
  %i.vk = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv.i131.i
  %i.vl = invoke noundef i64 @_ZNK8facebook5velox9Timestamp7toNanosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vk)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc68:                                         ; preds = %bb.bu
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.i131.i
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !433
  br label %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i": ; preds = %.noexc68, %.noexc67
  %indvars.iv.next.i132.i = add nuw nsw i64 %indvars.iv.i131.i, 1 ; 2 uses
  %i.vn = load i32, ptr %i.uh, align 8, !tbaa !260
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next.i132.i, %i.vo
  br i1 %i.vp, label %.lr.ph.i130.i, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, !llvm.loop !2405

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph24.i.i, %.lr.ph.i99.i, %.lr.ph33.i117.i, %.lr.ph.i70.i, %.lr.ph25.i.i, %.lr.ph20.i64.i, %.lr.ph.i56.i, %.lr.ph33.i.i, %.lr.ph.i80.i, %bb.bt, %.lr.ph25.i142.i, %bb.bu, %.lr.ph.i130.i, %.lr.ph.i9.i, %.invoke, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i, %bb.bw, %bb.bo, %bb.bk, %bb.be, %bb.ba, %bb.an, %bb.ak, %bb.ae, %bb.ab, %_ZNK8facebook5velox6Buffer9asMutableIlEEPT_v.exit.i, %bb.t, %bb.ce, %bb.cd
  %lpad.loopexit.split-lp585 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15.i35.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i92.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16.i104.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.tv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16.i104.i ], [ %i.rf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16.i.i ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15.i.i ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i15.i35.i ], [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.lr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i52.i ], [ %i.qh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i92.i ], [ %i.sx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i123.i ], [ %lpad.loopexit.split-lp585, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  br label %common.resume

bb.bv:                                            ; preds = %bb.s
  %i.vq = icmp eq ptr %i.dj, @_ZZN8facebook5velox8TimeType3getEvE9kInstance
  br i1 %i.vq, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.vr = load ptr, ptr %25, align 8, !tbaa !304  ; 2 uses
  %i.vs = load ptr, ptr %0, align 8, !tbaa !336
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 296
  %i.vu = load ptr, ptr %i.vt, align 8
  %i.vv = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.vu(ptr noundef nonnull align 8 dereferenceable(94) %0)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2406

.noexc95:                                         ; preds = %bb.bw
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !304
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !351 ; 4 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vr, i64 44
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !349
  %i.wb = and i8 %i.wa, 2
  %.not.i.i73 = icmp eq i8 %i.wb, 0
  br i1 %.not.i.i73, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i, label %.invoke, !prof !350

.invoke:                                          ; preds = %bb.as, %.critedge.i, %.noexc, %.noexc95
  %i.wc = phi ptr [ @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs, %.noexc95 ], [ @_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEE18veloxCheckFailArgs, %.critedge.i ], [ @_ZZNK8facebook5velox6Buffer9asMutableIlEEPT_vE18veloxCheckFailArgs, %.noexc ], [ @_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEE18veloxCheckFailArgs_0, %bb.as ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.wc) #47
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i: ; preds = %.noexc95
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !351 ; 6 uses
  %i.wf = load ptr, ptr %0, align 8, !tbaa !336
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wh = load ptr, ptr %i.wg, align 8
  %i.wi = invoke noundef zeroext i1 %i.wh(ptr noundef nonnull align 8 dereferenceable(94) %0)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2406

.noexc97:                                         ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit.i
  br i1 %i.wi, label %bb.bx, label %.critedge.i74

bb.bx:                                            ; preds = %.noexc97
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.0.0.copyload.i.i92 = load i64, ptr %i.wj, align 4
  %i.wk = and i64 %.sroa.0.0.copyload.i.i92, 8589934591
  %i.wl = icmp eq i64 %i.wk, 4294967296
  br i1 %i.wl, label %.critedge.i74, label %bb.bz

.critedge.i74:                                    ; preds = %bb.bx, %.noexc97
  %.val.i.i75 = load i8, ptr %i.c, align 8, !tbaa !254, !range !261, !noundef !262
  %i.wm = trunc nuw i8 %.val.i.i75 to i1
  br i1 %i.wm, label %bb.by, label %.preheader.i.i76

.preheader.i.i76:                                 ; preds = %.critedge.i74
  %i.wn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !260
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %.lr.ph.i.i77, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit

bb.by:                                            ; preds = %.critedge.i74
  %i.wq = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !311 ; 2 uses
  %i.wt = icmp eq ptr %i.wq, %i.ws
  br i1 %i.wt, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, label %.lr.ph23.i.i80

.lr.ph23.i.i80:                                   ; preds = %bb.by, %._crit_edge.i.i85
  %.1.i81 = phi i32 [ %.2.i, %._crit_edge.i.i85 ], [ 0, %bb.by ] ; 2 uses
  %.sroa.014.021.i.i82 = phi ptr [ %i.xm, %._crit_edge.i.i85 ], [ %i.wq, %bb.by ] ; 2 uses
  %i.wu = load i64, ptr %.sroa.014.021.i.i82, align 4 ; 5 uses
  %.sroa.4.0.extract.shift.i.i83 = lshr i64 %i.wu, 32 ; 6 uses
  %.sroa.4.0.extract.trunc.i.i84 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i83 to i32
  %i.wv = icmp sgt i32 %.sroa.4.0.extract.trunc.i.i84, 0
  br i1 %i.wv, label %iter.check, label %._crit_edge.i.i85

iter.check:                                       ; preds = %.lr.ph23.i.i80
  %i.ww = shl i64 %i.wu, 32
  %i.wx = ashr exact i64 %i.ww, 29
  %invariant.gep.i.i87 = getelementptr i8, ptr %i.vy, i64 %i.wx ; 3 uses
  %i.wy = sext i32 %.1.i81 to i64                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.wu, 17179869184
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check437 = icmp ult i64 %i.wu, 68719476736
  br i1 %min.iters.check437, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %.sroa.4.0.extract.shift.i.i83, 2147483632 ; 5 uses
  %i.wz = add nsw i64 %n.vec, %i.wy               ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.we, i64 %i.wy
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xa = getelementptr [8 x i8], ptr %invariant.gep.i.i87, i64 %index ; 4 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 32
  %i.xc = getelementptr i8, ptr %i.xa, i64 64
  %i.xd = getelementptr i8, ptr %i.xa, i64 96
  %wide.load = load <4 x i64>, ptr %i.xa, align 8, !tbaa !433
  %wide.load438 = load <4 x i64>, ptr %i.xb, align 8, !tbaa !433
  %wide.load439 = load <4 x i64>, ptr %i.xc, align 8, !tbaa !433
  %wide.load440 = load <4 x i64>, ptr %i.xd, align 8, !tbaa !433
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %27 = shufflevector <4 x i64> %wide.load, <4 x i64> %wide.load438, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %28 = trunc <8 x i64> %27 to <8 x i32>
  store <8 x i32> %28, ptr %gep, align 4, !tbaa !356
  %29 = shufflevector <4 x i64> %wide.load439, <4 x i64> %wide.load440, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %30 = trunc <8 x i64> %29 to <8 x i32>
  store <8 x i32> %30, ptr %i.xe, align 4, !tbaa !356
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.xf = icmp eq i64 %index.next, %n.vec
  br i1 %i.xf, label %middle.block, label %vector.body, !llvm.loop !2407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.4.0.extract.shift.i.i83, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.xg = and i64 %i.wu, 51539607552
  %min.epilog.iters.check = icmp eq i64 %i.xg, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !314

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec441 = and i64 %.sroa.4.0.extract.shift.i.i83, 2147483644 ; 4 uses
  %i.xh = add nsw i64 %n.vec441, %i.wy            ; 2 uses
  %invariant.gep615 = getelementptr [4 x i8], ptr %i.we, i64 %i.wy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index442 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next444, %vec.epilog.vector.body ] ; 3 uses
  %i.xi = getelementptr [8 x i8], ptr %invariant.gep.i.i87, i64 %index442
  %wide.load443 = load <4 x i64>, ptr %i.xi, align 8, !tbaa !433
  %i.xj = trunc <4 x i64> %wide.load443 to <4 x i32>
  %gep616 = getelementptr [4 x i8], ptr %invariant.gep615, i64 %index442
  store <4 x i32> %i.xj, ptr %gep616, align 4, !tbaa !356
  %index.next444 = add nuw i64 %index442, 4       ; 2 uses
  %i.xk = icmp eq i64 %index.next444, %n.vec441
  br i1 %i.xk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n445 = icmp eq i64 %.sroa.4.0.extract.shift.i.i83, %n.vec441
  br i1 %cmp.n445, label %._crit_edge.i.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv51.i.ph = phi i64 [ %i.wy, %iter.check ], [ %i.wz, %vec.epilog.iter.check ], [ %i.xh, %vec.epilog.middle.block ]
  %indvars.iv26.i.i88.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec441, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.loopexit.i:                         ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next52.i.lcssa = phi i64 [ %i.xh, %vec.epilog.middle.block ], [ %i.wz, %middle.block ], [ %indvars.iv.next52.i, %vec.epilog.scalar.ph ]
  %i.xl = trunc nsw i64 %indvars.iv.next52.i.lcssa to i32
  br label %._crit_edge.i.i85

._crit_edge.i.i85:                                ; preds = %._crit_edge.i.loopexit.i, %.lr.ph23.i.i80
  %.2.i = phi i32 [ %.1.i81, %.lr.ph23.i.i80 ], [ %i.xl, %._crit_edge.i.loopexit.i ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.sroa.014.021.i.i82, i64 8 ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.ws
  br i1 %i.xn, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, label %.lr.ph23.i.i80

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %vec.epilog.scalar.ph ], [ %indvars.iv51.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv26.i.i88 = phi i64 [ %indvars.iv.next27.i.i90, %vec.epilog.scalar.ph ], [ %indvars.iv26.i.i88.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep.i.i89 = getelementptr [8 x i8], ptr %invariant.gep.i.i87, i64 %indvars.iv26.i.i88
  %i.xo = load i64, ptr %gep.i.i89, align 8, !tbaa !433
  %i.xp = trunc i64 %i.xo to i32
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.we, i64 %indvars.iv51.i
  store i32 %i.xp, ptr %i.xq, align 4, !tbaa !356
  %indvars.iv.next27.i.i90 = add nuw nsw i64 %indvars.iv26.i.i88, 1 ; 2 uses
  %exitcond.not.i.i91 = icmp eq i64 %indvars.iv.next27.i.i90, %.sroa.4.0.extract.shift.i.i83
  br i1 %exitcond.not.i.i91, label %._crit_edge.i.loopexit.i, label %vec.epilog.scalar.ph, !llvm.loop !2409

.lr.ph.i.i77:                                     ; preds = %.preheader.i.i76, %.lr.ph.i.i77
  %indvars.iv.i.i78 = phi i64 [ %indvars.iv.next.i.i79, %.lr.ph.i.i77 ], [ 0, %.preheader.i.i76 ] ; 3 uses
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i.i78
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !433
  %i.xt = trunc i64 %i.xs to i32
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i78, 1 ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.i.i78
  store i32 %i.xt, ptr %i.xu, align 4, !tbaa !356
  %i.xv = load i32, ptr %i.wn, align 8, !tbaa !260
  %i.xw = sext i32 %i.xv to i64
  %i.xx = icmp slt i64 %indvars.iv.next.i.i79, %i.xw
  br i1 %i.xx, label %.lr.ph.i.i77, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, !llvm.loop !2410

bb.bz:                                            ; preds = %bb.bx
  %.val.i7.i = load i8, ptr %i.c, align 8, !tbaa !254, !range !261, !noundef !262
  %i.xy = trunc nuw i8 %.val.i7.i to i1
  br i1 %i.xy, label %bb.ca, label %.preheader.i8.i

.preheader.i8.i:                                  ; preds = %bb.bz
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !260
  %i.yb = icmp sgt i32 %i.ya, 0
  br i1 %i.yb, label %.lr.ph.i9.i, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit

bb.ca:                                            ; preds = %bb.bz
  %i.yc = load ptr, ptr %1, align 8, !tbaa !311   ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !311 ; 2 uses
  %i.yf = icmp eq ptr %i.yc, %i.ye
  br i1 %i.yf, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.ca, %._crit_edge.i14.i
  %.5.i = phi i32 [ %.6.i, %._crit_edge.i14.i ], [ 0, %bb.ca ] ; 2 uses
  %.sroa.018.025.i.i = phi ptr [ %i.ym, %._crit_edge.i14.i ], [ %i.yc, %bb.ca ] ; 2 uses
  %i.yg = load i64, ptr %.sroa.018.025.i.i, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i12.i = lshr i64 %i.yg, 32 ; 2 uses
  %.sroa.4.0.extract.trunc.i13.i = trunc nuw i64 %.sroa.4.0.extract.shift.i12.i to i32
  %i.yh = icmp sgt i32 %.sroa.4.0.extract.trunc.i13.i, 0
  br i1 %i.yh, label %.lr.ph24.preheader.i.i, label %._crit_edge.i14.i

.lr.ph24.preheader.i.i:                           ; preds = %.lr.ph27.i.i
  %i.yi = shl i64 %i.yg, 32
  %i.yj = ashr exact i64 %i.yi, 32
  %i.yk = sext i32 %.5.i to i64
  br label %.lr.ph24.i.i

._crit_edge.i14.loopexit.i:                       ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i"
  %i.yl = trunc nsw i64 %indvars.iv.next.i94 to i32
  br label %._crit_edge.i14.i

._crit_edge.i14.i:                                ; preds = %._crit_edge.i14.loopexit.i, %.lr.ph27.i.i
  %.6.i = phi i32 [ %.5.i, %.lr.ph27.i.i ], [ %i.yl, %._crit_edge.i14.loopexit.i ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8 ; 2 uses
  %i.yn = icmp eq ptr %i.ym, %i.ye
  br i1 %i.yn, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, label %.lr.ph27.i.i

.lr.ph24.i.i:                                     ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i", %.lr.ph24.preheader.i.i
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i94, %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i" ], [ %i.yk, %.lr.ph24.preheader.i.i ] ; 2 uses
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i" ], [ 0, %.lr.ph24.preheader.i.i ] ; 2 uses
  %i.yo = add nsw i64 %indvars.iv30.i.i, %i.yj    ; 2 uses
  %i.yp = load ptr, ptr %0, align 8, !tbaa !336
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  %i.yr = load ptr, ptr %i.yq, align 8
  %i.ys = trunc nsw i64 %i.yo to i32
  %i.yt = invoke noundef zeroext i1 %i.yr(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.ys)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2406

.noexc98:                                         ; preds = %.lr.ph24.i.i
  br i1 %i.yt, label %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i", label %bb.cb

bb.cb:                                            ; preds = %.noexc98
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.vy, i64 %i.yo
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !433
  %i.yw = trunc i64 %i.yv to i32
  %i.yx = getelementptr inbounds [4 x i8], ptr %i.we, i64 %indvars.iv.i93
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !356
  br label %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit.i.i": ; preds = %bb.cb, %.noexc98
  %indvars.iv.next.i94 = add nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %exitcond.not.i15.i = icmp eq i64 %indvars.iv.next31.i.i, %.sroa.4.0.extract.shift.i12.i
  br i1 %exitcond.not.i15.i, label %._crit_edge.i14.loopexit.i, label %.lr.ph24.i.i, !llvm.loop !2411

.lr.ph.i9.i:                                      ; preds = %.preheader.i8.i, %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i"
  %indvars.iv.i10.i = phi i64 [ %indvars.iv.next.i11.i, %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i" ], [ 0, %.preheader.i8.i ] ; 4 uses
  %i.yy = load ptr, ptr %0, align 8, !tbaa !336
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 32
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = trunc nuw nsw i64 %indvars.iv.i10.i to i32
  %i.zc = invoke noundef zeroext i1 %i.za(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.zb)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2406

.noexc99:                                         ; preds = %.lr.ph.i9.i
  br i1 %i.zc, label %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i", label %bb.cc

bb.cc:                                            ; preds = %.noexc99
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.vy, i64 %indvars.iv.i10.i
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !433
  %i.zf = trunc i64 %i.ze to i32
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %indvars.iv.i10.i
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !356
  br label %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i"

"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i": ; preds = %bb.cc, %.noexc99
  %indvars.iv.next.i11.i = add nuw nsw i64 %indvars.iv.i10.i, 1 ; 2 uses
  %i.zh = load i32, ptr %i.xz, align 8, !tbaa !260
  %i.zi = sext i32 %i.zh to i64
  %i.zj = icmp slt i64 %indvars.iv.next.i11.i, %i.zi
  br i1 %i.zj, label %.lr.ph.i9.i, label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit, !llvm.loop !2412

bb.cd:                                            ; preds = %bb.s, %bb.bv
  %i.zk = load ptr, ptr %0, align 8, !tbaa !336
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 296
  %i.zm = load ptr, ptr %i.zl, align 8
  %i.zn = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.zm(ptr noundef nonnull align 8 dereferenceable(94) %0)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !304
  %i.zp = load ptr, ptr %25, align 8, !tbaa !304  ; 2 uses
  %.val33 = load i8, ptr %i.ce, align 2
  %i.zq = getelementptr i8, ptr %i.zp, i64 16
  %.val34 = load ptr, ptr %i.zq, align 8
  %i.zr = getelementptr i8, ptr %i.zp, i64 44
  %.val35 = load i8, ptr %i.zr, align 4, !tbaa !349
  invoke fastcc void @_ZN8facebook5velox12_GLOBAL__N_116gatherFromBufferERKNS0_4TypeERKNS0_6BufferERKNS1_9SelectionERK12ArrowOptionsRS5_(ptr noundef nonnull align 8 dereferenceable(18) %i.dj, ptr noundef nonnull align 8 dereferenceable(64) %i.zo, ptr noundef nonnull align 8 dereferenceable(36) %1, i8 %.val33, ptr %.val34, i8 %.val35)
          to label %_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferE.exit: ; preds = %"_ZZN8facebook5velox12_GLOBAL__N_120gatherFromTimeBufferERKNS0_10BaseVectorERKNS1_9SelectionERNS0_6BufferEENK3$_1clEi.exit16.i.i", %._crit_edge.i14.i, %.lr.ph.i.i77, %._crit_edge.i.i85, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_7clEi.exit17.i.i", %._crit_edge.i140.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_6clEi.exit22.i.i", %._crit_edge.i115.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_5clEi.exit22.i.i", %._crit_edge.i88.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_4clEi.exit17.i.i", %._crit_edge.i76.i, %.noexc53, %._crit_edge.i63.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_2clEi.exit17.i.i", %._crit_edge.i43.i, %"_ZZN8facebook5velox12_GLOBAL__N_125gatherFromTimestampBufferERKNS0_10BaseVectorERKNS1_9SelectionE13TimestampUnitRNS0_6BufferEENK3$_1clEi.exit17.i.i", %._crit_edge.i24.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.x, %bb.ca, %.preheader.i8.i, %bb.by, %.preheader.i.i76, %bb.bs, %.preheader.i129.i, %bb.bi, %.preheader.i98.i, %bb.ay, %.preheader.i79.i, %bb.au, %.preheader.i69.i, %bb.ar, %.preheader.i55.i, %bb.ai, %.preheader.i29.i, %bb.z, %.preheader.i18.i, %bb.w, %.preheader.i.i, %bb.ce
  %i.zs = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !303
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8 ; 2 uses
  %i.zv = load ptr, ptr %25, align 8, !tbaa !304  ; 3 uses
  %.not.i.i.i100 = icmp eq ptr %i.zv, null
  br i1 %.not.i.i.i100, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i.i101, label %bb.cf
end_hunk_0
