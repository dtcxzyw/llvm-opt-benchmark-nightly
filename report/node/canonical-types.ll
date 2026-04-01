begin_hunk_0
  %i.bb = load i64, ptr %.sroa.055.0.copyload, align 8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bb, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %invariant.op150 = sub i32 %4, %3               ; 2 uses
  %.not150 = icmp eq i64 %i.bb, 0
  br i1 %.not150, label %._crit_edge153, label %.lr.ph152

end_hunk_0
begin_hunk_1
  br label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i"

bb.k:                                             ; preds = %bb.i
  %i.cd = add i32 %i.bs, %invariant.op150         ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, 999999
  br i1 %i.ce, label %bb.l, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i", !prof !5

end_hunk_1
begin_hunk_2
  br label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i81"

bb.p:                                             ; preds = %bb.n
  %i.dl = add i32 %i.da, %invariant.op150         ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 999999
  br i1 %i.dm, label %bb.q, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i81", !prof !5

end_hunk_2
begin_hunk_3
  %i.ea = load i8, ptr %i.dz, align 1, !range !13, !noundef !14
  %i.eb = trunc nuw i8 %i.ea to i1
  call void @_ZN2v88internal4wasm14StructTypeBase11BuilderImplINS1_19CanonicalStructTypeENS1_18CanonicalValueTypeEEC2EPNS0_4ZoneEjbb(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull %i.dt, i32 noundef %i.dv, i1 noundef zeroext %i.dy, i1 noundef zeroext %i.eb)
  %invariant.op = sub i32 %4, %3                  ; 2 uses
  %i.ec = load i16, ptr %.sroa.055.0.copyload, align 8
  %.not159 = icmp eq i16 %i.ec, 0
  br i1 %.not159, label %._crit_edge.thread, label %.lr.ph
end_hunk_3
begin_hunk_4
  br i1 %i.er, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.es = add i32 %i.eq, %invariant.op            ; 2 uses
  %i.et = icmp ugt i32 %i.es, 999999
  br i1 %i.et, label %.loopexit, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i98.peel", !prof !5

end_hunk_4
begin_hunk_5
  br label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i98"

bb.aj:                                            ; preds = %bb.ah
  %i.jv = add i32 %i.jk, %invariant.op            ; 2 uses
  %i.jw = icmp ugt i32 %i.jv, 999999
  br i1 %i.jw, label %.loopexit, label %"_ZZN2v88internal4wasm17TypeCanonicalizer19CanonicalizeTypeDefEPKNS1_10WasmModuleENS1_15ModuleTypeIndexENS1_18CanonicalTypeIndexEjENK3$_0clES6_.exit.i98", !prof !5

end_hunk_5
