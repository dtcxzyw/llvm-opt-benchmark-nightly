begin_hunk_0
%union.anon = type { %struct.mbedtls_sha512_context }
%struct.mbedtls_sha512_context = type { [2 x i64], [8 x i64], [128 x i8], i32 }

@switch.table.psa_mac_setup = private unnamed_addr constant [17 x i64] [i64 64, i64 64, i64 64, i64 poison, i64 poison, i64 64, i64 64, i64 128, i64 128, i64 128, i64 128, i64 poison, i64 poison, i64 144, i64 136, i64 104, i64 72], align 8
@switch.table.psa_mac_finish_internal = private unnamed_addr constant [17 x i64] [i64 64, i64 64, i64 64, i64 0, i64 0, i64 64, i64 64, i64 128, i64 128, i64 128, i64 128, i64 0, i64 0, i64 144, i64 136, i64 104, i64 72], align 8

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1

bb.j:                                             ; preds = %.fold.split82.i, %bb.i
  %i.t = phi i1 [ true, %.fold.split82.i ], [ false, %bb.i ]
  %switch.tableidx = add nsw i32 %i.s, -33554435  ; 3 uses
  %i.u = icmp ult i32 %switch.tableidx, 17
  %switch.shifted = lshr i32 124903, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.u, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.k

end_hunk_1
begin_hunk_2
  br label %.thread84.i

.thread84.i:                                      ; preds = %switch.lookup, %bb.i
  %.ph83.i = phi i64 [ %switch.load, %switch.lookup ], [ 64, %bb.i ]
  store i32 %i.s, ptr %i.r, align 8, !tbaa !17
  br label %bb.l

end_hunk_2
