inline.NumInlined: 915
inline.NumDeleted: 373
begin_hunk_0_@_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE:bb.a

.lr.ph502:                                        ; preds = %.lr.ph
  %i.ti = load i64, ptr %i.p, align 8
  %i.tj = icmp ule i64 %i.ti, %55                 ; 2 uses
  %i.tk = ptrtoint ptr %i.te to i64
  %i.tl = ptrtoint ptr %i.tg to i64
  %i.tm = sub i64 %i.tl, %i.tk
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE:bb.a
  br label %bb.gh

.lr.ph:                                           ; preds = %bb.du, %.lr.ph
  %.096498 = phi i64 [ %55, %.lr.ph ], [ 0, %bb.du ]
  %.097497 = phi i64 [ %57, %.lr.ph ], [ 0, %bb.du ]
  %.sroa.0468.0496 = phi ptr [ %i.tr, %.lr.ph ], [ %i.te, %bb.du ] ; 2 uses
  %52 = load ptr, ptr %.sroa.0468.0496, align 8, !tbaa !42 ; 2 uses
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 120
  %54 = load i64, ptr %53, align 8, !tbaa !46
  %55 = add i64 %54, %.096498                     ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %52, i64 128
  %56 = load i64, ptr %i.tq, align 8, !tbaa !49
  %57 = add i64 %56, %.097497                     ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0468.0496, i64 8 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, %i.tg
  br i1 %i.ts, label %.lr.ph502, label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE:bb.a

bb.dz:                                            ; preds = %._crit_edge503
  %i.ul = load i64, ptr %i.p, align 8, !tbaa !46
  %i.um = sub i64 %i.ul, %55                      ; 2 uses
  %i.un = load i64, ptr %i.r, align 8, !tbaa !49
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.un, i64 %57) ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !54 ; 5 uses
end_hunk_2
