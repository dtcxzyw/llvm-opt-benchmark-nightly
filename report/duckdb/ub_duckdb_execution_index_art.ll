inline.NumInlined: 6662
inline.NumDeleted: 2963
begin_hunk_0_@_ZN6duckdb10ARTBuilder5BuildEv:bb.a
  invoke void @_ZN6duckdb4Node3NewERNS_3ARTERS0_NS_5NTypeE(ptr noundef nonnull align 8 dereferenceable(433) %i.fb, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0121.0, i8 noundef zeroext %.0.i)
          to label %bb.ab unwind label %.loopexit173

.loopexit173:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZN6duckdb4Node11GetNodeTypeEm.exit
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_0
begin_hunk_1_@_ZN6duckdb10ARTBuilder5BuildEv:bb.a
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %.thread, label %bb.b

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit168, %.loopexit.split-lp169, %bb.ae, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.ak, %bb.av, %.loopexit173
  %.pn56 = phi { ptr, i32 } [ %.pn8.i.i.i, %bb.ak ], [ %lpad.loopexit175, %.loopexit173 ], [ %i.gw, %bb.ae ], [ %i.jx, %bb.au ], [ %i.jy, %bb.av ], [ %lpad.loopexit.split-lp171, %.loopexit.split-lp169 ], [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %lpad.loopexit170, %.loopexit168 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.kc = load ptr, ptr %6, align 8, !tbaa !143   ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i85, label %_ZNSt6vectorImSaImEED2Ev.exit86, label %bb.ax
end_hunk_1
