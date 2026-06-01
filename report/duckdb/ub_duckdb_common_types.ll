inline.NumInlined: 41205
inline.NumDeleted: 6297
begin_hunk_0_@_ZN6duckdb11timestamp_tmIERKl:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #46
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 4) i8 @_ZN6duckdb9Timestamp21TryConvertTimestampTZEPKcmRNS_11timestamp_tEbRbRNS_8string_tENS_12optional_ptrIiLb1EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %4, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %5, i64 %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %7 = alloca %"struct.duckdb::date_t", align 4   ; 5 uses
  %8 = alloca %"struct.duckdb::dtime_t", align 8  ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %.sroa.4 = alloca [12 x i8], align 4            ; 7 uses
  %i.f = inttoptr i64 %6 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  store i8 0, ptr %4, align 1, !tbaa !398
  %i.g = call noundef zeroext i8 @_ZN6duckdb4Date14TryConvertDateEPKcmRmRNS_6date_tERbb(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext false) ; 2 uses
  switch i8 %i.g, label %bb.c [
    i8 1, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread
    i8 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !108  ; 4 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %7, align 4, !tbaa !981    ; 2 uses
  switch i32 %i.j, label %bb.g [
    i32 2147483647, label %bb.e
    i32 -2147483647, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i64 9223372036854775807, ptr %2, align 8, !tbaa !108
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775807, ptr %2, align 8, !tbaa !108
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.k, i64 noundef 86400000000, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.l, label %bb.h, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %2, align 8, !tbaa !984
  %i.n = tail call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.m, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.n, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit: ; preds = %bb.h
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !108 ; 2 uses
  %i.o = icmp ne i64 %.sroa.0.0.copyload.i, 9223372036854775807
  %i.p = icmp ne i64 %.sroa.0.0.copyload.i, -9223372036854775807
  %spec.select.i.i = and i1 %i.o, %i.p
  %cond.fr = freeze i1 %spec.select.i.i
  %spec.select = select i1 %cond.fr, i8 0, i8 3
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

bb.i:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1, !tbaa !153
  switch i8 %i.r, label %bb.k [
    i8 32, label %bb.j
    i8 84, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.s = add i64 %i.h, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.t = phi i64 [ %i.h, %bb.i ], [ %i.s, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = sub i64 %1, %i.t
  %i.w = call noundef zeroext i1 @_ZN6duckdb4Time18TryConvertInternalEPKcmRmRNS_7dtime_tEbNS_12optional_ptrIiLb1EEE(ptr noundef readonly %i.u, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext false, ptr %i.f)
  br i1 %i.w, label %bb.l, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread

bb.l:                                             ; preds = %bb.k
  %i.x = load i64, ptr %8, align 8, !tbaa !952    ; 2 uses
  %i.y = icmp sgt i64 %i.x, 86400000000
  br i1 %i.y, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !108
  %i.aa = add i64 %i.z, %i.t                      ; 4 uses
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !108
  %.sroa.07.0.copyload = load i32, ptr %7, align 4, !tbaa !3
  %i.ab = sext i32 %.sroa.07.0.copyload to i64
  %i.ac = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.ab, i64 noundef 86400000000, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ac, label %bb.n, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %2, align 8, !tbaa !984
  %i.ae = tail call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.ad, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.ae, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61: ; preds = %bb.n
  %.sroa.0.0.copyload.i59 = load i64, ptr %2, align 8, !tbaa !108 ; 2 uses
  switch i64 %.sroa.0.0.copyload.i59, label %bb.o [
    i64 -9223372036854775807, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread
    i64 9223372036854775807, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread
  ]

bb.o:                                             ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61
  %i.af = icmp ult i64 %i.aa, %1
  br i1 %i.af, label %bb.p, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !153
  %i.ai = icmp eq i8 %i.ah, 90
  br i1 %i.ai, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aj = add nuw i64 %i.aa, 1
  store i8 1, ptr %4, align 1, !tbaa !398
  br label %.critedge.thread

bb.r:                                             ; preds = %bb.p
  %i.ak = call noundef zeroext i1 @_ZN6duckdb9Timestamp17TryParseUTCOffsetEPKcRmmRiS4_S4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br i1 %i.ak, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %3, label %bb.t, label %.critedge56

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.c, align 4, !tbaa !3
  %i.am = sext i32 %i.al to i64
  %i.an = mul nsw i64 %i.am, 3600000000
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !3
  %i.ap = sext i32 %i.ao to i64
  %i.aq = mul nsw i64 %i.ap, 60000000
  %i.ar = add nsw i64 %i.aq, %i.an
  %i.as = load i32, ptr %i.e, align 4, !tbaa !3
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.at, 1000000
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = tail call noundef zeroext i1 @_ZN6duckdb19TrySubtractOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %.sroa.0.0.copyload.i59, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.aw, label %.critedge56, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split

.critedge56:                                      ; preds = %bb.t, %bb.s
  store i8 1, ptr %4, align 1, !tbaa !398
  %.promoted78.pre = load i64, ptr %i.a, align 8, !tbaa !108
  br label %.critedge.thread

bb.u:                                             ; preds = %bb.r
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ay = add i64 %i.ax, 1                        ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !153
  %.not = icmp eq i8 %i.ba, 32
  br i1 %.not, label %bb.v, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 3 uses
  %i.bc = icmp ult i64 %i.ay, %1
  br i1 %i.bc, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.v, %bb.w
  %i.bd = phi i64 [ %i.bl, %bb.w ], [ %i.ay, %bb.v ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !153 ; 3 uses
  %i.bg = and i8 %i.bf, -33
  %i.bh = add i8 %i.bg, -65
  %i.bi = icmp ult i8 %i.bh, 26
  %i.bj = add i8 %i.bf, -48
  %i.bk = icmp ult i8 %i.bj, 10
  %or.cond.i = or i1 %i.bk, %i.bi
  br i1 %or.cond.i, label %bb.w, label %switch.early.test.i

switch.early.test.i:                              ; preds = %.lr.ph
  switch i8 %i.bf, label %.critedge [
    i8 95, label %bb.w
    i8 47, label %bb.w
    i8 43, label %bb.w
    i8 45, label %bb.w
  ]

bb.w:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %.lr.ph
  %i.bl = add i64 %i.bd, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bl, %1
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1103

.critedge:                                        ; preds = %bb.w, %switch.early.test.i
  %.lcssa74 = phi i64 [ %i.bd, %switch.early.test.i ], [ %1, %bb.w ] ; 3 uses
  %.not54 = icmp eq i64 %.lcssa74, %i.ay
  br i1 %.not54, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %.critedge
  %gepdiff = sub nsw i64 %.lcssa74, %i.ay         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.bm = trunc i64 %gepdiff to i32               ; 3 uses
  %i.bn = icmp ult i32 %i.bm, 13
  br i1 %i.bn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i8 0, i64 12, i1 false)
  %i.bo = icmp eq i32 %i.bm, 0
  br i1 %i.bo, label %_ZN6duckdb8string_tC2EPKcj.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = and i64 %gepdiff, 15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr nonnull align 1 %i.bb, i64 %i.bp, i1 false)
  br label %_ZN6duckdb8string_tC2EPKcj.exit

bb.aa:                                            ; preds = %bb.x
  %i.bq = load i32, ptr %i.bb, align 1
  store i32 %i.bq, ptr %.sroa.4, align 4
  %.sroa.4.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  store ptr %i.bb, ptr %.sroa.4.4..sroa_idx, align 4, !tbaa !153
  br label %_ZN6duckdb8string_tC2EPKcj.exit

_ZN6duckdb8string_tC2EPKcj.exit:                  ; preds = %bb.y, %bb.z, %bb.aa
  store i32 %i.bm, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4, i64 12, i1 false), !tbaa.struct !1104
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.v, %.critedge, %_ZN6duckdb8string_tC2EPKcj.exit, %.critedge56, %bb.q
  %.promoted78 = phi i64 [ %i.ay, %.critedge ], [ %.lcssa74, %_ZN6duckdb8string_tC2EPKcj.exit ], [ %.promoted78.pre, %.critedge56 ], [ %i.aj, %bb.q ], [ %i.ay, %bb.v ] ; 2 uses
  %i.br = icmp ult i64 %.promoted78, %1
  br i1 %i.br, label %.lr.ph81, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split

.lr.ph81:                                         ; preds = %.critedge.thread, %bb.ab
  %i.bs = phi i64 [ %i.bv, %bb.ab ], [ %.promoted78, %.critedge.thread ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !153
  switch i8 %i.bu, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split [
    i8 32, label %bb.ab
    i8 12, label %bb.ab
    i8 11, label %bb.ab
    i8 10, label %bb.ab
    i8 9, label %bb.ab
    i8 13, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph81, %.lr.ph81, %.lr.ph81, %.lr.ph81, %.lr.ph81, %.lr.ph81
  %i.bv = add i64 %i.bs, 1                        ; 2 uses
  %exitcond85.not = icmp eq i64 %i.bv, %1
  br i1 %exitcond85.not, label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split, label %.lr.ph81, !llvm.loop !1105

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split: ; preds = %.lr.ph81, %bb.ab, %bb.t, %bb.u, %.critedge.thread
  %.3.ph = phi i8 [ 0, %.critedge.thread ], [ 2, %bb.u ], [ 3, %bb.t ], [ 0, %bb.ab ], [ 1, %.lr.ph81 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread: ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61, %bb.n, %bb.m, %bb.o, %bb.l, %bb.k
  %.3 = phi i8 [ 1, %bb.k ], [ 3, %bb.m ], [ 3, %bb.n ], [ 3, %bb.l ], [ 3, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61 ], [ 0, %bb.o ], [ 3, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61 ], [ %.3.ph, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread

_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit.thread: ; preds = %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit, %bb.h, %bb.g, %bb.a, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread, %bb.f, %bb.e, %bb.b
  %.4 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ %i.g, %bb.a ], [ %.3, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit61.thread ], [ 3, %bb.b ], [ 3, %bb.h ], [ %spec.select, %_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE.exit ], [ 3, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i8 %.4
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb9Timestamp15TryFromDatetimeENS_6date_tENS_7dtime_tERNS_11timestamp_tE(i32 %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.a, i64 noundef 86400000000, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8, !tbaa !984
  %i.d = tail call noundef zeroext i1 @_ZN6duckdb14TryAddOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.c, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %2, align 8, !tbaa !108 ; 2 uses
  %i.e = icmp ne i64 %.sroa.0.0.copyload, 9223372036854775807
  %i.f = icmp ne i64 %.sroa.0.0.copyload, -9223372036854775807
  %spec.select.i = and i1 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %spec.select.i, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6duckdb9Timestamp17TryParseUTCOffsetEPKcRmmRiS4_S4_(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  %i.a = load i64, ptr %1, align 8, !tbaa !108    ; 5 uses
  %i.b = add i64 %i.a, 3                          ; 5 uses
  %i.c = icmp ugt i64 %i.b, %2
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !153   ; 2 uses
  switch i8 %i.e, label %bb.o [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !153   ; 2 uses
  %i.h = add i8 %i.g, -48
  %i.i = icmp ult i8 %i.h, 10
  br i1 %i.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !153   ; 2 uses
  %i.l = add i8 %i.k, -48
  %i.m = icmp ult i8 %i.l, 10
  br i1 %i.m, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.n = zext nneg i8 %i.g to i32
  %i.o = mul nuw nsw i32 %i.n, 10
  %i.p = zext nneg i8 %i.k to i32
  %i.q = add nuw nsw i32 %i.o, %i.p               ; 2 uses
  %i.r = add nsw i32 %i.q, -528
  %i.s = icmp eq i8 %i.e, 45                      ; 3 uses
  %i.t = sub nsw i32 528, %i.q
  %spec.select = select i1 %i.s, i32 %i.t, i32 %i.r
  store i32 %spec.select, ptr %3, align 4, !tbaa !3
  %.not = icmp ult i64 %i.b, %2
  br i1 %.not, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.v = load i8, ptr %i.u, align 1, !tbaa !153
  %i.w = icmp eq i8 %i.v, 58                      ; 2 uses
  %i.x = add i64 %i.a, 4
  %spec.select86 = select i1 %i.w, i64 %i.x, i64 %i.b ; 5 uses
  %i.y = add i64 %spec.select86, 2                ; 5 uses
  %i.z = icmp ugt i64 %i.y, %2
  br i1 %i.z, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select86 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !153 ; 2 uses
  %i.ac = add i8 %i.ab, -48
  %i.ad = icmp ult i8 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.aa, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !153 ; 2 uses
  %i.ag = add i8 %i.af, -48
  %i.ah = icmp ult i8 %i.ag, 10
  br i1 %i.ah, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ai = zext nneg i8 %i.ab to i32
  %i.aj = mul nuw nsw i32 %i.ai, 10
  %i.ak = zext nneg i8 %i.af to i32
  %i.al = add nuw nsw i32 %i.aj, %i.ak            ; 2 uses
  %i.am = add nsw i32 %i.al, -528
  %i.an = sub nsw i32 528, %i.al
  %spec.select87 = select i1 %i.s, i32 %i.an, i32 %i.am
  store i32 %spec.select87, ptr %4, align 4, !tbaa !3
  %i.ao = icmp ult i64 %i.y, %2
  %or.cond4 = and i1 %i.w, %i.ao
  br i1 %or.cond4, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !153
  %.not84 = icmp eq i8 %i.aq, 58
  br i1 %.not84, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.ar = add i64 %i.a, 7                         ; 4 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_ub_duckdb_common_types.cpp:bb.a
  %i.aes = zext i64 %.sroa.4.0.copyload.i115.i to i128
  %i.aet = shl nuw i128 %i.aes, 64
  %i.aeu = or disjoint i128 %i.aet, %i.aer
  %i.aev = zext i64 %.sroa.0.0.copyload.i.i116.i to i128
  %i.aew = zext i64 %.sroa.2.0.copyload.i.i118.i to i128
  %i.aex = shl nuw i128 %i.aew, 64
  %i.aey = or disjoint i128 %i.aex, %i.aev
  %i.aez = mul i128 %i.aey, %i.aeu                ; 2 uses
  %i.afa = lshr i128 %i.aez, 64
  %i.afb = trunc nuw i128 %i.afa to i64
  %i.afc = trunc i128 %i.aez to i64
  store i64 %i.afc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 544), align 16
  store i64 %i.afb, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 552), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %32, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %33, i64 noundef 100000000000000000)
  %.sroa.0.0.copyload.i121.i = load i64, ptr %32, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx.i122.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %.sroa.4.0.copyload.i123.i = load i64, ptr %.sroa.4.0..sroa_idx.i122.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i.i124.i = load i64, ptr %33, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i125.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  %.sroa.2.0.copyload.i.i126.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i125.i, align 8, !tbaa !108
  %i.afd = zext i64 %.sroa.0.0.copyload.i121.i to i128
  %i.afe = zext i64 %.sroa.4.0.copyload.i123.i to i128
  %i.aff = shl nuw i128 %i.afe, 64
  %i.afg = or disjoint i128 %i.aff, %i.afd
  %i.afh = zext i64 %.sroa.0.0.copyload.i.i124.i to i128
  %i.afi = zext i64 %.sroa.2.0.copyload.i.i126.i to i128
  %i.afj = shl nuw i128 %i.afi, 64
  %i.afk = or disjoint i128 %i.afj, %i.afh
  %i.afl = mul i128 %i.afk, %i.afg                ; 2 uses
  %i.afm = lshr i128 %i.afl, 64
  %i.afn = trunc nuw i128 %i.afm to i64
  %i.afo = trunc i128 %i.afl to i64
  store i64 %i.afo, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 560), align 16
  store i64 %i.afn, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 568), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %34, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %35, i64 noundef 1000000000000000000)
  %.sroa.0.0.copyload.i129.i = load i64, ptr %34, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx.i130.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.4.0.copyload.i131.i = load i64, ptr %.sroa.4.0..sroa_idx.i130.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i.i132.i = load i64, ptr %35, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i133.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  %.sroa.2.0.copyload.i.i134.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i133.i, align 8, !tbaa !108
  %i.afp = zext i64 %.sroa.0.0.copyload.i129.i to i128
  %i.afq = zext i64 %.sroa.4.0.copyload.i131.i to i128
  %i.afr = shl nuw i128 %i.afq, 64
  %i.afs = or disjoint i128 %i.afr, %i.afp
  %i.aft = zext i64 %.sroa.0.0.copyload.i.i132.i to i128
  %i.afu = zext i64 %.sroa.2.0.copyload.i.i134.i to i128
  %i.afv = shl nuw i128 %i.afu, 64
  %i.afw = or disjoint i128 %i.afv, %i.aft
  %i.afx = mul i128 %i.afw, %i.afs                ; 2 uses
  %i.afy = lshr i128 %i.afx, 64
  %i.afz = trunc nuw i128 %i.afy to i64
  %i.aga = trunc i128 %i.afx to i64
  store i64 %i.aga, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 576), align 16
  store i64 %i.afz, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 584), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %36, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %37, i64 noundef 1000000000000000000)
  %.sroa.0.0.copyload.i137.i13 = load i64, ptr %36, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx.i138.i14 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.sroa.4.0.copyload.i139.i15 = load i64, ptr %.sroa.4.0..sroa_idx.i138.i14, align 8, !tbaa !108
  %.sroa.0.0.copyload.i.i140.i16 = load i64, ptr %37, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i141.i17 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %.sroa.2.0.copyload.i.i142.i18 = load i64, ptr %.sroa.2.0..sroa_idx.i.i141.i17, align 8, !tbaa !108
  %i.agb = zext i64 %.sroa.0.0.copyload.i137.i13 to i128
  %i.agc = zext i64 %.sroa.4.0.copyload.i139.i15 to i128
  %i.agd = shl nuw i128 %i.agc, 64
  %i.age = or disjoint i128 %i.agd, %i.agb
  %i.agf = zext i64 %.sroa.0.0.copyload.i.i140.i16 to i128
  %i.agg = zext i64 %.sroa.2.0.copyload.i.i142.i18 to i128
  %i.agh = shl nuw i128 %i.agg, 64
  %i.agi = or disjoint i128 %i.agh, %i.agf
  %i.agj = mul i128 %i.agi, %i.age
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %38, i64 noundef 10)
  %.sroa.0.0.copyload.i.i148.i = load i64, ptr %38, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i149.i = getelementptr inbounds nuw i8, ptr %38, i64 8
  %.sroa.2.0.copyload.i.i150.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i149.i, align 8, !tbaa !108
  %i.agk = zext i64 %.sroa.0.0.copyload.i.i148.i to i128
  %i.agl = zext i64 %.sroa.2.0.copyload.i.i150.i to i128
  %i.agm = shl nuw i128 %i.agl, 64
  %i.agn = or disjoint i128 %i.agm, %i.agk
  %i.ago = mul i128 %i.agj, %i.agn                ; 2 uses
  %i.agp = lshr i128 %i.ago, 64
  %i.agq = trunc nuw i128 %i.agp to i64
  %i.agr = trunc i128 %i.ago to i64
  store i64 %i.agr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 592), align 16
  store i64 %i.agq, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 600), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef 1000000000000000000)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %40, i64 noundef 1000000000000000000)
  %.sroa.0.0.copyload.i153.i = load i64, ptr %39, align 8, !tbaa !108
  %.sroa.4.0..sroa_idx.i154.i = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.sroa.4.0.copyload.i155.i = load i64, ptr %.sroa.4.0..sroa_idx.i154.i, align 8, !tbaa !108
  %.sroa.0.0.copyload.i.i156.i = load i64, ptr %40, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i157.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.sroa.2.0.copyload.i.i158.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i157.i, align 8, !tbaa !108
  %i.ags = zext i64 %.sroa.0.0.copyload.i153.i to i128
  %i.agt = zext i64 %.sroa.4.0.copyload.i155.i to i128
  %i.agu = shl nuw i128 %i.agt, 64
  %i.agv = or disjoint i128 %i.agu, %i.ags
  %i.agw = zext i64 %.sroa.0.0.copyload.i.i156.i to i128
  %i.agx = zext i64 %.sroa.2.0.copyload.i.i158.i to i128
  %i.agy = shl nuw i128 %i.agx, 64
  %i.agz = or disjoint i128 %i.agy, %i.agw
  %i.aha = mul i128 %i.agz, %i.agv
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #46
  call void @_ZN6duckdb10uhugeint_tC1Em(ptr noundef nonnull align 8 dereferenceable(16) %41, i64 noundef 100)
  %.sroa.0.0.copyload.i.i164.i = load i64, ptr %41, align 8, !tbaa !108
  %.sroa.2.0..sroa_idx.i.i165.i = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.sroa.2.0.copyload.i.i166.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i165.i, align 8, !tbaa !108
  %i.ahb = zext i64 %.sroa.0.0.copyload.i.i164.i to i128
  %i.ahc = zext i64 %.sroa.2.0.copyload.i.i166.i to i128
  %i.ahd = shl nuw i128 %i.ahc, 64
  %i.ahe = or disjoint i128 %i.ahd, %i.ahb
  %i.ahf = mul i128 %i.aha, %i.ahe                ; 2 uses
  %i.ahg = lshr i128 %i.ahf, 64
  %i.ahh = trunc nuw i128 %i.ahg to i64
  %i.ahi = trunc i128 %i.ahf to i64
  store i64 %i.ahi, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 608), align 16
  store i64 %i.ahh, ptr getelementptr inbounds nuw (i8, ptr @_ZN6duckdb8Uhugeint13POWERS_OF_TENE, i64 616), align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #46
  %i.ahj = call ptr @llvm.invariant.start.p0(i64 624, ptr nonnull @_ZN6duckdb8Uhugeint13POWERS_OF_TENE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #36

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold nofree noreturn }
attributes #29 = { nofree nounwind }
attributes #30 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind memory(none) }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #38 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #46 = { nounwind }
attributes #47 = { builtin nounwind }
attributes #48 = { builtin allocsize(0) }
attributes #49 = { noreturn }
attributes #50 = { noreturn nounwind }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind willreturn memory(none) }
attributes #53 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6duckdb13ClientContextE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTSN6duckdb11LogicalTypeE", !9, i64 0}
!12 = !{!13, !11, i64 16}
!13 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!15, !20, i64 32}
!15 = !{!"_ZTSN6duckdb21BatchedDataCollectionE", !8, i64 0, !16, i64 8, !20, i64 32, !21, i64 36, !22, i64 40, !32, i64 88}
!16 = !{!"_ZTSN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEE", !17, i64 0}
!17 = !{!"_ZTSSt6vectorIN6duckdb11LogicalTypeESaIS1_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE12_Vector_implE", !13, i64 0}
!20 = !{!"_ZTSN6duckdb23ColumnDataAllocatorTypeE", !5, i64 0}
!21 = !{!"_ZTSN6duckdb28ColumnDataCollectionLifetimeE", !5, i64 0}
!22 = !{!"_ZTSSt3mapImN6duckdb10unique_ptrINS0_20ColumnDataCollectionESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE", !23, i64 0}
!23 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE", !24, i64 0}
!24 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_20ColumnDataCollectionESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !25, i64 0, !27, i64 8}
!25 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !26, i64 0}
!26 = !{!"_ZTSSt4lessImE"}
!27 = !{!"_ZTSSt15_Rb_tree_header", !28, i64 0, !31, i64 32}
!28 = !{!"_ZTSSt18_Rb_tree_node_base", !29, i64 0, !30, i64 8, !30, i64 16, !30, i64 24}
!29 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!30 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!"_ZTSN6duckdb21BatchedDataCollection16CachedCollectionE", !31, i64 0, !33, i64 8, !34, i64 16}
!33 = !{!"p1 _ZTSN6duckdb20ColumnDataCollectionE", !9, i64 0}
!34 = !{!"_ZTSN6duckdb21ColumnDataAppendStateE", !35, i64 0, !45, i64 64}
!35 = !{!"_ZTSN6duckdb20ChunkManagementStateE", !36, i64 0, !44, i64 56}
!36 = !{!"_ZTSSt13unordered_mapImN6duckdb12BufferHandleESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !37, i64 0}
!37 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb12BufferHandleEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !38, i64 0, !31, i64 8, !40, i64 16, !31, i64 24, !42, i64 32, !41, i64 48}
!38 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !39, i64 0}
!39 = !{!"any p2 pointer", !9, i64 0}
!40 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!41 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!42 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !43, i64 0, !31, i64 8}
!43 = !{!"float", !5, i64 0}
!44 = !{!"_ZTSN6duckdb24ColumnDataScanPropertiesE", !5, i64 0}
!45 = !{!"_ZTSN6duckdb6vectorINS_19UnifiedVectorFormatELb1ESaIS1_EEE", !46, i64 0}
!46 = !{!"_ZTSSt6vectorIN6duckdb19UnifiedVectorFormatESaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19UnifiedVectorFormatESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSN6duckdb19UnifiedVectorFormatE", !9, i64 0}
!51 = !{!15, !21, i64 36}
!52 = !{!27, !29, i64 0}
!53 = !{!27, !30, i64 8}
!54 = !{!27, !30, i64 16}
!55 = !{!27, !30, i64 24}
!56 = !{!27, !31, i64 32}
!57 = !{!32, !31, i64 0}
!58 = !{!32, !33, i64 8}
!59 = !{!37, !38, i64 0}
!60 = !{!37, !31, i64 8}
!61 = !{!42, !43, i64 0}
!62 = !{!13, !11, i64 0}
!63 = !{!13, !11, i64 8}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!30, !30, i64 0}
!67 = !{!28, !30, i64 8}
!68 = !{!15, !33, i64 96}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRS1_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!71 = distinct !{!71, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRS1_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!72 = !{!33, !33, i64 0}
!73 = !{!15, !8, i64 0}
!74 = !{}
!75 = !{i64 8}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13BufferManagerERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS_28ColumnDataCollectionLifetimeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!78 = distinct !{!78, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_13BufferManagerERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERKNS_28ColumnDataCollectionLifetimeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!79 = !{!21, !21, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!82 = distinct !{!82, !"_ZN6duckdb9make_uniqINS_20ColumnDataCollectionEJRNS_9AllocatorERKNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
end_hunk_1
