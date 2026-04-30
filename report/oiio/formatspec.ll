inline.NumInlined: 8178
inline.NumDeleted: 2488
begin_hunk_0_@_ZN11OpenImageIO4v3_1L11spec_to_xmlB5cxx11ERKNS0_9ImageSpecENS1_13SerialVerboseE:bb.a
  br i1 %.not15.i, label %.loopexit456, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %_ZN11OpenImageIO4v3_14pugi8xml_node8set_nameEPKc.exit.i
  %i.ob = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc248, %.lr.ph.i244
  %.sroa.01.016.i = phi ptr [ %i.ny, %.lr.ph.i244 ], [ %i.oe, %.noexc248 ] ; 2 uses
  store ptr @.str.277, ptr %12, align 8, !tbaa !103
  store i64 11, ptr %i.ob, align 8, !tbaa !105
  %i.oc = load ptr, ptr %.sroa.01.016.i, align 8, !tbaa !57
  %i.od = invoke fastcc ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18add_nodeERNS0_4pugi8xml_nodeENS0_17basic_string_viewIcSt11char_traitsIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef dead_on_return %12, ptr noundef %i.oc)
          to label %.noexc248 unwind label %.loopexit455 ; 0 uses
end_hunk_0
