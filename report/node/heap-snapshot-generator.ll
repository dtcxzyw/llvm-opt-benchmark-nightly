inline.NumInlined: 7022
inline.NumDeleted: 3467
begin_hunk_0_@_ZNK2v88internal4wasm9WasmValue9to_stringB5cxx11Ev:bb.a
  %i.m = icmp samesign ult i32 %i.l, 10
  %i.n = icmp samesign ult i32 %i.l, 100
  %spec.select = select i1 %i.n, i32 2, i32 3
  %.0.i.i = select i1 %i.m, i32 1, i32 %spec.select ; 3 uses
  %.lobit.i = lshr i32 %i.k, 31                   ; 2 uses
  %i.o = add nuw nsw i32 %.0.i.i, %.lobit.i       ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm9WasmValue9to_stringB5cxx11Ev:bb.a
  %i.aa = getelementptr i8, ptr %i.z, i64 -200
  %i.ab = getelementptr i8, ptr %i.z, i64 -199
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !140
  %5 = zext nneg i32 %.0.i.i to i64
  %6 = getelementptr i8, ptr %i.v, i64 %5
  %i.ad = getelementptr i8, ptr %6, i64 -1
  store i8 %i.ac, ptr %i.ad, align 1
  %i.ae = load i8, ptr %i.aa, align 2, !noalias !140
  %7 = add nsw i32 %.0.i.i, -2
  %8 = zext i32 %7 to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %8
  store i8 %i.ae, ptr %i.af, align 1
  br label %bb.i

end_hunk_1
begin_hunk_2_@_ZN2v88internal18OutputStreamWriter9AddNumberIhEEvT_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = icmp eq i8 %1, 0
  %i.e = icmp ult i8 %1, 10
  %2 = icmp ult i8 %1, 100
  %i.f = select i1 %2, i64 2, i64 3
  %i.g = select i1 %i.e, i64 1, i64 %i.f          ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.i = load i32, ptr %i.b, align 8              ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal18OutputStreamWriter9AddNumberIhEEvT_:bb.a
  %.lcssa50 = phi i64 [ %i.j, %tailrecurse.preheader ], [ %i.cd, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit ]
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.lcssa50 ; 5 uses
  %3 = icmp ugt i8 %1, 99
  br i1 %3, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %tailrecurse._crit_edge
  %i.af = urem i8 %1, 100
end_hunk_3
begin_hunk_4_@_ZN2v88internal18OutputStreamWriter9AddNumberIhEEvT_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = getelementptr i8, ptr %i.ae, i64 2
  store i8 %i.al, ptr %i.am, align 1
  %i.an = load i8, ptr %i.aj, align 2
  %i.ao = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.an, ptr %i.ao, align 1
  br label %bb.g

end_hunk_4
