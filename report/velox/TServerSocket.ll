inline.NumInlined: 485
inline.NumDeleted: 207
begin_hunk_0_@_ZN6apache6thrift9transport13TServerSocket6listenEv:bb.a
  br i1 %i.ch, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = icmp samesign ult i32 %i.bt, 10000      ; 2 uses
  %spec.select = select i1 %i.ci, i64 4, i64 5
  %spec.select.a = select i1 %i.ci, i32 3, i32 4
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.af, %bb.ae, %.lr.ph.i.i, %bb.ad
  %.0.i.i = phi i64 [ 3, %bb.ae ], [ %spec.select, %bb.af ], [ 2, %.lr.ph.i.i ], [ 1, %bb.ad ]
  %17 = phi i32 [ 2, %bb.ae ], [ %spec.select.a, %bb.af ], [ 1, %.lr.ph.i.i ], [ 0, %bb.ad ]
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.cj, ptr %4, align 8, !tbaa !30, !alias.scope !91
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0.i.i, i8 noundef signext 45)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.ck = load ptr, ptr %4, align 8, !tbaa !37, !alias.scope !91 ; 4 uses
  %i.cl = icmp samesign ugt i32 %i.bt, 99
  br i1 %i.cl, label %.lr.ph.i11.i, label %._crit_edge.i.i

.lr.ph.i11.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i, %.lr.ph.i11.i
  %.020.i.i = phi i32 [ %i.co, %.lr.ph.i11.i ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.cz, %.lr.ph.i11.i ], [ %17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ] ; 3 uses
  %i.cm = urem i32 %.020.i.i, 100
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = udiv i32 %.020.i.i, 100                 ; 2 uses
end_hunk_0
