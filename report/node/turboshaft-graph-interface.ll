inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i:bb.a
  %.pre19.i = sub i64 %.pre10.i.i.i.i.i, %.pre18.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.z, %bb.y
  %.pre-phi20.i = phi i64 [ %.pre19.i, %bb.z ], [ %i.cu, %bb.y ] ; 2 uses
  %i.de = phi ptr [ %.pre.i.i.i.i.i, %bb.z ], [ %i.cp, %bb.y ] ; 10 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i:bb.a
  %.pre22.i = sub i64 %.pre10.i.i.i.i.i137, %.pre21.i
  br label %.lr.ph.i.preheader.i127

.lr.ph.i.preheader.i127:                          ; preds = %bb.ap, %bb.ao
  %.pre-phi23.i = phi i64 [ %.pre22.i, %bb.ap ], [ %i.hs, %bb.ao ] ; 2 uses
  %i.ic = phi ptr [ %.pre.i.i.i.i.i136, %bb.ap ], [ %i.hn, %bb.ao ] ; 13 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemFillEPKNS1_10WasmMemoryENS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEENS8_INS9_ILm32EEEEESB_i:bb.a
  %.pre22.i = sub i64 %.pre10.i.i.i.i.i, %.pre21.i
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.y, %bb.x
  %.pre-phi23.i = phi i64 [ %.pre22.i, %bb.y ], [ %i.dm, %bb.x ] ; 2 uses
  %i.dw = phi ptr [ %.pre.i.i.i.i.i, %bb.y ], [ %i.dh, %bb.x ] ; 13 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
end_hunk_2
