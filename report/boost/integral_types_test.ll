Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/integral_types_test?download=true
inline.NumInlined: 9947
inline.NumDeleted: 2193
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE9pbackfailEt:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !198
  %i.l = and i32 %i.k, 16
  %i.m = icmp ne i32 %i.l, 0
  %or.cond = or i1 %i.i, %i.m
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.c, align 8, !tbaa !228
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %1, ptr %i.g, align 2, !tbaa !151
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.c, align 8, !tbaa !228
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.a
  %.0 = phi i16 [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %bb.c ], [ %1, %bb.e ], [ %1, %bb.d ]
  ret i16 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15basic_streambufIDsSt11char_traitsIDsEE6xsputnEPKDsl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = icmp sgt i64 %2, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.01937 = phi ptr [ %.4, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %.02136 = phi i64 [ %.425, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !231  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !230  ; 4 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 1
  %i.j = sub nsw i64 %2, %.02136
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.i) ; 5 uses
  %i.k = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.k, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl i64 %.sroa.speculated, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.e, ptr align 2 %.01937, i64 %i.l, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !230
  br label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit:        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %i.n = add nsw i64 %.sroa.speculated, %.02136
  %i.o = getelementptr inbounds [2 x i8], ptr %.01937, i64 %.sroa.speculated
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %.sroa.speculated
  store ptr %i.p, ptr %i.b, align 8, !tbaa !230
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit, %.lr.ph
  %.122 = phi i64 [ %i.n, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit ], [ %.02136, %.lr.ph ] ; 4 uses
  %.120 = phi ptr [ %i.o, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit ], [ %.01937, %.lr.ph ] ; 3 uses
  %i.q = icmp slt i64 %.122, %2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i16, ptr %.120, align 2, !tbaa !151 ; 2 uses
  %i.s = icmp eq i16 %i.r, -1
  %spec.select.i = select i1 %i.s, i16 -3, i16 %i.r
  %i.t = load ptr, ptr %0, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i16 %i.v(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %spec.select.i)
  %i.x = icmp eq i16 %i.w, -1
  %i.y = add nsw i64 %.122, 1
  %i.z = getelementptr inbounds nuw i8, ptr %.120, i64 2
  br i1 %i.x, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.425 = phi i64 [ %i.y, %bb.e ], [ %.122, %bb.d ] ; 3 uses
  %.4 = phi ptr [ %i.z, %bb.e ], [ %.120, %bb.d ]
  %i.aa = icmp slt i64 %.425, %2
  br i1 %i.aa, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ %.425, %bb.f ], [ %.122, %bb.e ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8overflowEt(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef zeroext %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string.29", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !198  ; 2 uses
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ae, label %bb.b, !prof !232

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i16 %1, -1
  br i1 %i.e, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit, !prof !232

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !223  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load i64, ptr %i.h, align 8
  %i.k = select i1 %i.i, i64 7, i64 %i.j          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 1
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !230
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.q
  %i.z = ashr exact i64 %i.y, 1                   ; 4 uses
  store ptr %i.g, ptr %i.n, align 8, !tbaa !233
  store ptr %i.u, ptr %i.l, align 8, !tbaa !231
  %i.aa = icmp sgt i64 %i.z, 2147483647
  br i1 %i.aa, label %.lr.ph.preheader.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 4294967294)
  %i.ac = add nuw nsw i64 %i.ab, 2147483646
  %i.ad = udiv i64 %i.ac, 2147483647              ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 4294967294
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae
  %scevgep.i = getelementptr i8, ptr %i.af, i64 4294967294
  %i.ag = add nsw i64 %i.z, -2147483647
  %.neg.i = mul nsw i64 %i.ad, -2147483647
  %i.ah = add nsw i64 %i.ag, %.neg.i
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit: ; preds = %bb.c, %.lr.ph.preheader.i
  %i.ai = phi ptr [ %scevgep.i, %.lr.ph.preheader.i ], [ %i.g, %bb.c ]
  %.0.lcssa.i = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.z, %bb.c ]
  %i.aj = shl i64 %.0.lcssa.i, 32
  %i.ak = ashr exact i64 %i.aj, 31
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 3 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !230
  %i.am = and i32 %i.c, 8
  %.not24 = icmp eq i32 %i.am, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !227
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !229
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store ptr %i.g, ptr %i.ap, align 8, !tbaa !227
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !228
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !229
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit
  store i16 %1, ptr %i.al, align 2, !tbaa !151
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !230
  br label %bb.ae

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !230 ; 3 uses
  %i.be = icmp uge ptr %i.bd, %i.m                ; 2 uses
  %i.bf = icmp eq i64 %i.k, 2305843009213693951
  %i.bg = and i1 %i.bf, %i.be
  br i1 %i.bg, label %bb.ae, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i, label %bb.ac

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i: ; preds = %bb.g
  %3 = shl i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %3, i64 512)
  %.sroa.speculated62 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 2305843009213693951) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 27 uses
  store ptr %4, ptr %2, align 8, !tbaa !199
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %5, align 8, !tbaa !200
  store i16 0, ptr %4, align 8, !tbaa !151
  %i.bh = shl nuw nsw i64 %.sroa.speculated62, 1
  %i.bi = add nuw nsw i64 %i.bh, 2
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #37
          to label %.noexc26 unwind label %bb.k   ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !223   ; 4 uses
  %i.bl = load i64, ptr %5, align 8, !tbaa !200   ; 3 uses
  %i.bm = add i64 %i.bl, 1                        ; 2 uses
  switch i64 %i.bm, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i
  ]

bb.h:                                             ; preds = %.noexc26
  %i.bn = load i16, ptr %i.bk, align 2, !tbaa !151
  store i16 %i.bn, ptr %i.bj, align 2, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i

bb.i:                                             ; preds = %.noexc26
  %i.bo = shl i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.bj, ptr align 2 %i.bk, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i: ; preds = %bb.i, %bb.h, %.noexc26
  %i.bp = icmp eq ptr %i.bk, %4
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i
  %i.bq = icmp ult i64 %i.bl, 8
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit.i
  %i.br = load i64, ptr %4, align 8, !tbaa !64
  %i.bs = shl i64 %i.br, 1
  %i.bt = add i64 %i.bs, 2
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bt) #34
  %.pre75.pre = load i64, ptr %5, align 8, !tbaa !200
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i5.i
  %.pre75 = phi i64 [ %.pre75.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i4.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i5.i ] ; 3 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !223
  store i64 %.sroa.speculated62, ptr %4, align 8, !tbaa !64
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !233 ; 3 uses
  %.not23 = icmp eq ptr %i.bu, null
  br i1 %.not23, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread, label %bb.j

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit.i
  %i.bv = add i64 %.pre75, 1
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_disposeEv.exit.i
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 1
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE10_M_replaceEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %.pre75, ptr noundef nonnull %i.bu, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49, %bb.l, %bb.j, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 8, !tbaa !223   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %4
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.cf = load i64, ptr %4, align 8, !tbaa !64
  %i.cg = shl i64 %i.cf, 1
  %i.ch = add i64 %i.cg, 2
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #34
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.cc

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit: ; preds = %bb.j
  %.pre = load i64, ptr %5, align 8, !tbaa !200   ; 4 uses
  %.pre76 = load ptr, ptr %2, align 8, !tbaa !223 ; 3 uses
  %i.ci = add i64 %.pre, 1                        ; 4 uses
  %i.cj = icmp eq ptr %.pre76, %4
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit
  %i.ck = icmp samesign ult i64 %.pre, 8
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.ci, 7
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i48, label %bb.r

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit
  %i.cm = phi i64 [ %i.bv, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit ] ; 3 uses
  %i.cn = phi i64 [ %.pre75, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit ] ; 2 uses
  %i.co = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit.thread ], [ %.pre76, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6assignEPKDsm.exit ]
  %i.cp = load i64, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.cq = icmp ugt i64 %i.cm, %i.cp
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i48, label %bb.r

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32
  %i.cr = phi i64 [ %i.ci, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 6 uses
  %i.cs = phi i64 [ 7, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 3 uses
  %i.ct = phi i64 [ 7, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 2 uses
  %i.cu = icmp ugt i64 %i.cr, 2305843009213693951
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i48
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #33
          to label %.noexc57 unwind label %bb.k

.noexc57:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i48
  %i.cv = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cv, label %bb.n, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49

bb.n:                                             ; preds = %bb.m
  %i.cw = shl nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cr, %i.cw
  br i1 %i.cx, label %bb.o, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i.i55 = call i64 @llvm.umin.i64(i64 %i.cw, i64 2305843009213693951)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49: ; preds = %bb.o, %bb.n, %bb.m
  %.0.i50 = phi i64 [ %spec.store.select.i.i55, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %bb.m ] ; 2 uses
  %i.cy = shl nuw nsw i64 %.0.i50, 1
  %i.cz = add nuw nsw i64 %i.cy, 2
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #37
          to label %.noexc58 unwind label %bb.k   ; 4 uses

.noexc58:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i49
  %.pre.i53.pre = load ptr, ptr %2, align 8, !tbaa !223 ; 4 uses
  switch i64 %i.cs, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %.noexc58
  %i.db = load i16, ptr %.pre.i53.pre, align 2, !tbaa !151
  store i16 %i.db, ptr %i.da, align 2, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i

bb.q:                                             ; preds = %.noexc58
  %i.dc = shl nuw nsw i64 %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.da, ptr align 2 %.pre.i53.pre, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i: ; preds = %.noexc58, %bb.p, %bb.q
  %i.dd = icmp eq ptr %.pre.i53.pre, %4
  br i1 %i.dd, label %.noexc34, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i
  %i.de = load i64, ptr %4, align 8, !tbaa !64
  %i.df = shl i64 %i.de, 1
  %i.dg = add i64 %i.df, 2
  call void @_ZdlPvm(ptr noundef %.pre.i53.pre, i64 noundef %i.dg) #34
  br label %.noexc34

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit27.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i28.i
  store ptr %i.da, ptr %2, align 8, !tbaa !223
  store i64 %.0.i50, ptr %4, align 8, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %.noexc34, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread
  %i.dh = phi i64 [ %i.cr, %.noexc34 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 10 uses
  %i.di = phi i64 [ %i.cs, %.noexc34 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 2 uses
  %i.dj = phi ptr [ %i.da, %.noexc34 ], [ %.pre76, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i32.thread ] ; 12 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.di
  store i16 %1, ptr %i.dk, align 2, !tbaa !151
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dh
  store i16 0, ptr %i.dl, align 2, !tbaa !151
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !223 ; 8 uses
  %i.dn = icmp eq ptr %i.dm, %i.h
  br i1 %i.dn, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i35

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !200 ; 8 uses
  %i.dq = icmp ult i64 %i.dp, 8
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq ptr %i.dj, %4
  br i1 %i.dr, label %bb.t, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i

bb.t:                                             ; preds = %bb.s
  %i.ds = icmp ult i64 %i.dh, 8
  call void @llvm.assume(i1 %i.ds)
  %.not.i36 = icmp eq i64 %i.dp, 0
  %.not38.i = icmp eq i64 %i.dh, 0                ; 2 uses
  br i1 %.not.i36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44.i, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i:    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dt = shl i64 %i.di, 1
  %i.du = add i64 %i.dt, 4                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.du, i1 false)
  %i.dv = shl nuw nsw i64 %i.dp, 1
  %i.dw = add nuw nsw i64 %i.dv, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.dw, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.du, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not38.i, label %bb.x, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43.i

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43.i:    ; preds = %bb.v
  %i.dx = shl nuw nsw i64 %i.dh, 1
  %i.dy = add nuw nsw i64 %i.dx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.dy, i1 false)
  store i64 %i.dh, ptr %i.do, align 8, !tbaa !200
  store i64 0, ptr %5, align 8, !tbaa !200
  store i16 0, ptr %i.dj, align 2, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44.i:    ; preds = %bb.u
  %i.dz = shl nuw nsw i64 %i.dp, 1
  %i.ea = add nuw nsw i64 %i.dz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ea, i1 false)
  store i64 %i.dp, ptr %5, align 8, !tbaa !200
  store i64 0, ptr %i.do, align 8, !tbaa !200
  store i16 0, ptr %i.dm, align 2, !tbaa !151
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i:    ; preds = %bb.s
  %i.eb = load i64, ptr %4, align 8, !tbaa !64
  %i.ec = shl nuw nsw i64 %i.dp, 1
  %i.ed = add nuw nsw i64 %i.ec, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ed, i1 false)
  store ptr %i.dj, ptr %i.f, align 8, !tbaa !223
  store ptr %4, ptr %2, align 8, !tbaa !223
  store i64 %i.eb, ptr %i.h, align 8, !tbaa !64
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i35: ; preds = %bb.r
  %i.ee = load i64, ptr %i.h, align 8, !tbaa !64
  %i.ef = icmp eq ptr %i.dj, %4
  br i1 %i.ef, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i35
  %i.eg = icmp ult i64 %i.dh, 8
  call void @llvm.assume(i1 %i.eg)
  %i.eh = shl nuw nsw i64 %i.dh, 1
  %i.ei = add nuw nsw i64 %i.eh, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.ei, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i35
  %i.ej = load i64, ptr %4, align 8, !tbaa !64
  store i64 %i.ej, ptr %i.h, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47.i
  %.sink = phi ptr [ %i.h, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47.i ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46.i ] ; 2 uses
  store ptr %i.dm, ptr %2, align 8, !tbaa !223
  store ptr %.sink, ptr %i.f, align 8, !tbaa !223
  store i64 %i.ee, ptr %4, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre77 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !200
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i, %bb.v, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i
  %i.ek = phi ptr [ %i.dm, %bb.w ], [ %4, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i ], [ %i.dj, %bb.v ], [ %i.dj, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i ]
  %i.el = phi ptr [ %.sink, %bb.w ], [ %i.dj, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i ], [ %i.dm, %bb.v ], [ %i.dm, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i ]
  %i.em = phi i64 [ %.pre77, %bb.w ], [ %i.dp, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45.i ], [ 0, %bb.v ], [ %i.dp, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.dh, ptr %i.en, align 8, !tbaa !200
  store i64 %i.em, ptr %5, align 8, !tbaa !200
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit: ; preds = %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43.i, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44.i, %bb.x
  %i.eo = phi ptr [ %i.dj, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43.i ], [ %i.dj, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44.i ], [ %i.ek, %bb.x ] ; 2 uses
  %i.ep = phi ptr [ %i.dm, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43.i ], [ %i.dm, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44.i ], [ %i.el, %bb.x ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !228
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !227
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = load ptr, ptr %i.bc, align 8, !tbaa !230 ; 2 uses
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !233
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 1                 ; 4 uses
  %i.fd = load i32, ptr %i.b, align 8, !tbaa !198 ; 2 uses
  %i.fe = and i32 %i.fd, 8
  %.not.i38 = icmp eq i32 %i.fe, 0                ; 2 uses
  %i.ff = and i32 %i.fd, 16
  %.not21.i = icmp eq i32 %i.ff, 0
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.dh ; 4 uses
  %i.fh = icmp eq ptr %i.ep, %i.h
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i42, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit
  %i.fi = icmp ult i64 %i.dh, 8
  call void @llvm.assume(i1 %i.fi)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_.exit
  %i.fj = load i64, ptr %i.h, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i39, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i42
  %i.fk = phi i64 [ %i.fj, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i39 ], [ 7, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i42 ]
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.fk
  br i1 %.not.i38, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ew
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !227
  store ptr %i.fm, ptr %i.eq, align 8, !tbaa !228
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !229
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i40
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ep, ptr %i.n, align 8, !tbaa !233
  store ptr %i.fl, ptr %i.l, align 8, !tbaa !231
  %i.fo = icmp sgt i64 %i.fc, 2147483647
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aa
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.fc, i64 4294967294)
  %i.fq = add nuw nsw i64 %i.fp, 2147483646
  %i.fr = udiv i64 %i.fq, 2147483647              ; 2 uses
  %i.fs = mul nuw nsw i64 %i.fr, 4294967294
  %i.ft = getelementptr i8, ptr %i.ep, i64 %i.fs
  %scevgep.i.i = getelementptr i8, ptr %i.ft, i64 4294967294
  %i.fu = add nsw i64 %i.fc, -2147483647
  %.neg.i.i = mul nsw i64 %i.fr, -2147483647
  %i.fv = add nsw i64 %i.fu, %.neg.i.i
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.aa
  %i.fw = phi ptr [ %scevgep.i.i, %.lr.ph.preheader.i.i ], [ %i.ep, %bb.aa ]
  %.0.lcssa.i.i = phi i64 [ %i.fv, %.lr.ph.preheader.i.i ], [ %i.fc, %bb.aa ]
  %i.fx = shl i64 %.0.lcssa.i.i, 32
  %i.fy = ashr exact i64 %i.fx, 31
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy ; 3 uses
  store ptr %i.fz, ptr %i.bc, align 8, !tbaa !230
  br i1 %.not.i38, label %bb.ab, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit

bb.ab:                                            ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i
  store ptr %i.fg, ptr %i.es, align 8, !tbaa !227
  store ptr %i.fg, ptr %i.eq, align 8, !tbaa !228
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fg, ptr %i.ga, align 8, !tbaa !229
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit: ; preds = %bb.ab, %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i, %bb.z
  %.pre7881 = phi ptr [ %i.fz, %bb.ab ], [ %i.fz, %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE8_M_pbumpEPDsS5_l.exit.i ], [ %i.ex, %bb.z ]
  %i.gb = icmp eq ptr %i.eo, %4
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit
  %i.gc = load i64, ptr %4, align 8, !tbaa !64
  %i.gd = shl i64 %i.gc, 1
  %i.ge = add i64 %i.gd, 2
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.ge) #34
  %.pre78.pre = load ptr, ptr %i.bc, align 8, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit46: ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i43
  %.pre78 = phi ptr [ %.pre78.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i43 ], [ %.pre7881, %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  store i16 %1, ptr %i.bd, align 2, !tbaa !151
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit46
  %i.gf = phi ptr [ %i.bd, %bb.ac ], [ %.pre78, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit46 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  store ptr %i.gg, ptr %i.bc, align 8, !tbaa !230
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f, %bb.b, %bb.a, %bb.e
  %.3 = phi i16 [ 0, %bb.b ], [ -1, %bb.a ], [ %1, %bb.e ], [ %1, %bb.ad ], [ -1, %bb.f ]
  ret i16 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = shl i64 %i.e, 1
  %i.g = add i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #34, !inline_history !224
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIDsSt11char_traitsIDsEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #32, !inline_history !225
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE6setbufEPDsl(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i64 %2, -1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.d, align 8, !tbaa !200
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !223  ; 3 uses
  store i16 0, ptr %i.e, align 2, !tbaa !151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.h = and i32 %i.g, 8
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = and i32 %i.g, 16
  %.not21.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  %i.l = load i64, ptr %i.j, align 8
  %spec.select = select i1 %i.k, i64 7, i64 %i.l
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %spec.select
  %.not22.i = icmp eq ptr %1, %i.e                ; 3 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2 ; 2 uses
  %.019.i = select i1 %.not22.i, ptr %1, ptr %i.n ; 3 uses
  %.0.i = select i1 %.not22.i, ptr %i.m, ptr %i.n ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit, label %bb.c

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i
  %.020.i = select i1 %.not22.i, i64 %2, i64 0
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.020.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !227
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !228
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.019.i, ptr %i.r, align 8, !tbaa !229
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.s, align 8, !tbaa !233
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !231
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.u, align 8, !tbaa !230
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit.sink.split

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit.sink.split: ; preds = %.thread, %bb.c
  %.sink13 = phi i64 [ 8, %bb.c ], [ 32, %.thread ]
  %.019.i.sink12 = phi ptr [ %.019.i, %bb.c ], [ %1, %.thread ] ; 2 uses
  %.sink11 = phi i64 [ 16, %bb.c ], [ 48, %.thread ]
  %.019.i.sink10 = phi ptr [ %.019.i, %bb.c ], [ %.0.i, %.thread ]
  %.sink9 = phi i64 [ 24, %bb.c ], [ 40, %.thread ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store ptr %.019.i.sink12, ptr %i.v, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  store ptr %.019.i.sink10, ptr %i.w, align 8, !tbaa !234
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.019.i.sink12, ptr %i.x, align 8, !tbaa !234
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit: ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7_M_syncEPDsmm.exit.sink.split, %bb.b, %.thread, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !198  ; 2 uses
  %i.c = and i32 %i.b, 8                          ; 2 uses
  %i.d = and i32 %i.c, %3
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = and i32 %3, 16                           ; 2 uses
  %i.g = and i32 %i.f, %i.b
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %i.i = icmp ne i32 %2, 1
  %i.j = and i1 %i.i, %i.h
  %i.k = and i1 %i.e, %i.j                        ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  %i.l = and i1 %.not, %i.e                       ; 3 uses
  %i.m = and i32 %3, 8
  %.not56 = icmp eq i32 %i.m, 0
  %i.n = and i1 %.not56, %i.h                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = select i1 %i.l, ptr %i.p, ptr %i.r       ; 5 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp eq i64 %1, 0
  %or.cond3.not65 = or i1 %i.u, %i.t
  %or.cond5 = or i1 %i.l, %i.n
  %or.cond7 = or i1 %or.cond5, %i.k
  %or.cond = and i1 %or.cond7, %or.cond3.not65
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !230  ; 7 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE15_M_update_egptrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !229
  %i.z = icmp ugt ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE15_M_update_egptrEv.exit

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.o, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !228
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.w, %bb.e ], [ %i.p, %bb.d ]
  store ptr %i.w, ptr %i.x, align 8, !tbaa !229
  br label %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE15_M_update_egptrEv.exit

_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE15_M_update_egptrEv.exit: ; preds = %bb.b, %bb.c, %.sink.split.i
  %i.ac = phi ptr [ %i.p, %bb.b ], [ %i.p, %bb.c ], [ %i.ab, %.sink.split.i ]
  switch i32 %2, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1115basic_stringbufIDsSt11char_traitsIDsESaIDsEE15_M_update_egptrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !228
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  %i.aj = add nsw i64 %i.ai, %1
  %i.ak = ptrtoint ptr %i.w to i64
  %i.al = sub i64 %i.ak, %i.ag
  %i.am = ashr exact i64 %i.al, 1
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE9pbackfailEj:bb.a
  %i.h = load i32, ptr %i.g, align 4, !tbaa !159
  %i.i = icmp eq i32 %1, %i.h                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !247
  %i.l = and i32 %i.k, 16
  %i.m = icmp ne i32 %i.l, 0
  %or.cond = or i1 %i.i, %i.m
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %i.c, align 8, !tbaa !277
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %1, ptr %i.g, align 4, !tbaa !159
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.c, align 8, !tbaa !277
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.a ], [ -1, %bb.c ], [ %1, %bb.e ], [ %1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15basic_streambufIDiSt11char_traitsIDiEE6xsputnEPKDil(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = icmp sgt i64 %2, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.01937 = phi ptr [ %.4, %bb.f ], [ %1, %bb.a ] ; 3 uses
  %.02136 = phi i64 [ %.425, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !280  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !279  ; 4 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = sub nsw i64 %2, %.02136
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.i) ; 5 uses
  %i.k = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.k, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = shl i64 %.sroa.speculated, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.e, ptr align 4 %.01937, i64 %i.l, i1 false)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !279
  br label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit:        ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.e, %bb.b ], [ %.pre, %bb.c ]
  %i.n = add nsw i64 %.sroa.speculated, %.02136
  %i.o = getelementptr inbounds [4 x i8], ptr %.01937, i64 %.sroa.speculated
  %i.p = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.sroa.speculated
  store ptr %i.p, ptr %i.b, align 8, !tbaa !279
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit, %.lr.ph
  %.122 = phi i64 [ %i.n, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit ], [ %.02136, %.lr.ph ] ; 4 uses
  %.120 = phi ptr [ %i.o, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit ], [ %.01937, %.lr.ph ] ; 3 uses
  %i.q = icmp slt i64 %.122, %2
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %.120, align 4, !tbaa !159
  %i.s = load ptr, ptr %0, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.r)
  %i.w = icmp eq i32 %i.v, -1
  %i.x = add nsw i64 %.122, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.120, i64 4
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.425 = phi i64 [ %i.x, %bb.e ], [ %.122, %bb.d ] ; 3 uses
  %.4 = phi ptr [ %i.y, %bb.e ], [ %.120, %bb.d ]
  %i.z = icmp slt i64 %.425, %2
  br i1 %i.z, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ %.425, %bb.f ], [ %.122, %bb.e ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8overflowEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string.50", align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !247  ; 2 uses
  %i.d = and i32 %i.c, 16
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.ae, label %bb.b, !prof !232

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, -1
  br i1 %i.e, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit, !prof !232

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !272  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 15 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load i64, ptr %i.h, align 8
  %i.k = select i1 %i.i, i64 3, i64 %i.j          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !280  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !281
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp ult i64 %i.s, %i.k
  br i1 %i.t, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.q
  %i.z = ashr exact i64 %i.y, 2                   ; 4 uses
  store ptr %i.g, ptr %i.n, align 8, !tbaa !281
  store ptr %i.u, ptr %i.l, align 8, !tbaa !280
  %i.aa = icmp sgt i64 %i.z, 2147483647
  br i1 %i.aa, label %.lr.ph.preheader.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 4294967294)
  %i.ac = add nuw nsw i64 %i.ab, 2147483646
  %i.ad = udiv i64 %i.ac, 2147483647              ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 8589934588
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae
  %scevgep.i = getelementptr i8, ptr %i.af, i64 8589934588
  %i.ag = add nsw i64 %i.z, -2147483647
  %.neg.i = mul nsw i64 %i.ad, -2147483647
  %i.ah = add nsw i64 %i.ag, %.neg.i
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit: ; preds = %bb.c, %.lr.ph.preheader.i
  %i.ai = phi ptr [ %scevgep.i, %.lr.ph.preheader.i ], [ %i.g, %bb.c ]
  %.0.lcssa.i = phi i64 [ %i.ah, %.lr.ph.preheader.i ], [ %i.z, %bb.c ]
  %i.aj = shl i64 %.0.lcssa.i, 32
  %i.ak = ashr exact i64 %i.aj, 30
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 3 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !279
  %i.am = and i32 %i.c, 8
  %.not24 = icmp eq i32 %i.am, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !277
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !278
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.as
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store ptr %i.g, ptr %i.ap, align 8, !tbaa !276
  store ptr %i.ay, ptr %i.an, align 8, !tbaa !277
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !278
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit
  store i32 %1, ptr %i.al, align 4, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !279
  br label %bb.ae

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !279 ; 3 uses
  %i.be = icmp uge ptr %i.bd, %i.m                ; 2 uses
  %i.bf = icmp eq i64 %i.k, 1152921504606846975
  %i.bg = and i1 %i.bf, %i.be
  br i1 %i.bg, label %bb.ae, label %bb.g, !prof !232

bb.g:                                             ; preds = %bb.f
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %bb.ac

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %bb.g
  %3 = shl i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %3, i64 512)
  %.sroa.speculated62 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 1152921504606846975) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 27 uses
  store ptr %4, ptr %2, align 8, !tbaa !248
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i64 0, ptr %5, align 8, !tbaa !249
  store i32 0, ptr %4, align 8, !tbaa !159
  %i.bh = shl nuw nsw i64 %.sroa.speculated62, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #37
          to label %.noexc26 unwind label %bb.k   ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !272   ; 4 uses
  %i.bl = load i64, ptr %5, align 8, !tbaa !249   ; 3 uses
  %i.bm = add i64 %i.bl, 1                        ; 2 uses
  switch i64 %i.bm, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i
  ]

bb.h:                                             ; preds = %.noexc26
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !159
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

bb.i:                                             ; preds = %.noexc26
  %i.bo = shl i64 %i.bm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %i.bk, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i: ; preds = %bb.i, %bb.h, %.noexc26
  %i.bp = icmp eq ptr %i.bk, %4
  br i1 %i.bp, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i5.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i4.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i
  %i.bq = icmp ult i64 %i.bl, 4
  call void @llvm.assume(i1 %i.bq)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit.i
  %i.br = load i64, ptr %4, align 8, !tbaa !64
  %i.bs = shl i64 %i.br, 2
  %i.bt = add i64 %i.bs, 4
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bt) #34
  %.pre75.pre = load i64, ptr %5, align 8, !tbaa !249
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i4.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i5.i
  %.pre75 = phi i64 [ %.pre75.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i4.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i5.i ] ; 3 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !272
  store i64 %.sroa.speculated62, ptr %4, align 8, !tbaa !64
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !281 ; 3 uses
  %.not23 = icmp eq ptr %i.bu, null
  br i1 %.not23, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread, label %bb.j

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit.i
  %i.bv = add i64 %.pre75, 1
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_disposeEv.exit.i
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE10_M_replaceEmmPKDim(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %.pre75, ptr noundef nonnull %i.bu, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49, %bb.l, %bb.j, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %2, align 8, !tbaa !272   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %4
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i28: ; preds = %bb.k
  %i.cf = load i64, ptr %4, align 8, !tbaa !64
  %i.cg = shl i64 %i.cf, 2
  %i.ch = add i64 %i.cg, 4
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #34
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.cc

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit: ; preds = %bb.j
  %.pre = load i64, ptr %5, align 8, !tbaa !249   ; 4 uses
  %.pre76 = load ptr, ptr %2, align 8, !tbaa !272 ; 3 uses
  %i.ci = add i64 %.pre, 1                        ; 4 uses
  %i.cj = icmp eq ptr %.pre76, %4
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit
  %i.ck = icmp samesign ult i64 %.pre, 4
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.ci, 3
  br i1 %i.cl, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i48, label %bb.r

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit
  %i.cm = phi i64 [ %i.bv, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit ] ; 3 uses
  %i.cn = phi i64 [ %.pre75, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit ] ; 2 uses
  %i.co = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit.thread ], [ %.pre76, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE6assignEPKDim.exit ]
  %i.cp = load i64, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.cq = icmp ugt i64 %i.cm, %i.cp
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i48, label %bb.r

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i48: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32
  %i.cr = phi i64 [ %i.ci, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 6 uses
  %i.cs = phi i64 [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 3 uses
  %i.ct = phi i64 [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 2 uses
  %i.cu = icmp ugt i64 %i.cr, 1152921504606846975
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i48
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #33
          to label %.noexc57 unwind label %bb.k

.noexc57:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i48
  %i.cv = icmp ugt i64 %i.cr, %i.ct
  br i1 %i.cv, label %bb.n, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49

bb.n:                                             ; preds = %bb.m
  %i.cw = shl nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cr, %i.cw
  br i1 %i.cx, label %bb.o, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49

bb.o:                                             ; preds = %bb.n
  %spec.store.select.i.i55 = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49: ; preds = %bb.o, %bb.n, %bb.m
  %.0.i50 = phi i64 [ %spec.store.select.i.i55, %bb.o ], [ %i.cr, %bb.n ], [ %i.cr, %bb.m ] ; 2 uses
  %i.cy = shl nuw nsw i64 %.0.i50, 2
  %i.cz = add nuw nsw i64 %i.cy, 4
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #37
          to label %.noexc58 unwind label %bb.k   ; 4 uses

.noexc58:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE9_M_createERmm.exit.i49
  %.pre.i53.pre = load ptr, ptr %2, align 8, !tbaa !272 ; 4 uses
  switch i64 %i.cs, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %.noexc58
  %i.db = load i32, ptr %.pre.i53.pre, align 4, !tbaa !159
  store i32 %i.db, ptr %i.da, align 4, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

bb.q:                                             ; preds = %.noexc58
  %i.dc = shl nuw nsw i64 %i.cs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %.pre.i53.pre, i64 %i.dc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i: ; preds = %.noexc58, %bb.p, %bb.q
  %i.dd = icmp eq ptr %.pre.i53.pre, %4
  br i1 %i.dd, label %.noexc34, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i
  %i.de = load i64, ptr %4, align 8, !tbaa !64
  %i.df = shl i64 %i.de, 2
  %i.dg = add i64 %i.df, 4
  call void @_ZdlPvm(ptr noundef %.pre.i53.pre, i64 noundef %i.dg) #34
  br label %.noexc34

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE7_S_copyEPDiPKDim.exit27.i, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i28.i
  store ptr %i.da, ptr %2, align 8, !tbaa !272
  store i64 %.0.i50, ptr %4, align 8, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %.noexc34, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread
  %i.dh = phi i64 [ %i.cr, %.noexc34 ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 10 uses
  %i.di = phi i64 [ %i.cs, %.noexc34 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 2 uses
  %i.dj = phi ptr [ %i.da, %.noexc34 ], [ %.pre76, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32 ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i32.thread ] ; 12 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.di
  store i32 %1, ptr %i.dk, align 4, !tbaa !159
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dh
  store i32 0, ptr %i.dl, align 4, !tbaa !159
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !272 ; 8 uses
  %i.dn = icmp eq ptr %i.dm, %i.h
  br i1 %i.dn, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i35

bb.s:                                             ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !249 ; 8 uses
  %i.dq = icmp ult i64 %i.dp, 4
  call void @llvm.assume(i1 %i.dq)
  %i.dr = icmp eq ptr %i.dj, %4
  br i1 %i.dr, label %bb.t, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i

bb.t:                                             ; preds = %bb.s
  %i.ds = icmp ult i64 %i.dh, 4
  call void @llvm.assume(i1 %i.ds)
  %.not.i36 = icmp eq i64 %i.dp, 0
  %.not38.i = icmp eq i64 %i.dh, 0                ; 2 uses
  br i1 %.not.i36, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not38.i, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit44.i, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i:    ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dt = shl i64 %i.di, 2
  %i.du = add i64 %i.dt, 8                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.du, i1 false)
  %i.dv = shl nuw nsw i64 %i.dp, 2
  %i.dw = add nuw nsw i64 %i.dv, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.dw, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.du, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  br i1 %.not38.i, label %bb.x, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit43.i

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit43.i:    ; preds = %bb.v
  %i.dx = shl nuw nsw i64 %i.dh, 2
  %i.dy = add nuw nsw i64 %i.dx, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.dy, i1 false)
  store i64 %i.dh, ptr %i.do, align 8, !tbaa !249
  store i64 0, ptr %5, align 8, !tbaa !249
  store i32 0, ptr %i.dj, align 4, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit44.i:    ; preds = %bb.u
  %i.dz = shl nuw nsw i64 %i.dp, 2
  %i.ea = add nuw nsw i64 %i.dz, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ea, i1 false)
  store i64 %i.dp, ptr %5, align 8, !tbaa !249
  store i64 0, ptr %i.do, align 8, !tbaa !249
  store i32 0, ptr %i.dm, align 4, !tbaa !159
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i:    ; preds = %bb.s
  %i.eb = load i64, ptr %4, align 8, !tbaa !64
  %i.ec = shl nuw nsw i64 %i.dp, 2
  %i.ed = add nuw nsw i64 %i.ec, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.ed, i1 false)
  store ptr %i.dj, ptr %i.f, align 8, !tbaa !272
  store ptr %4, ptr %2, align 8, !tbaa !272
  store i64 %i.eb, ptr %i.h, align 8, !tbaa !64
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i35: ; preds = %bb.r
  %i.ee = load i64, ptr %i.h, align 8, !tbaa !64
  %i.ef = icmp eq ptr %i.dj, %4
  br i1 %i.ef, label %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit47.i, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit47.i:    ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i35
  %i.eg = icmp ult i64 %i.dh, 4
  call void @llvm.assume(i1 %i.eg)
  %i.eh = shl nuw nsw i64 %i.dh, 2
  %i.ei = add nuw nsw i64 %i.eh, 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %4, i64 %i.ei, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i35
  %i.ej = load i64, ptr %4, align 8, !tbaa !64
  store i64 %i.ej, ptr %i.h, align 8, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit47.i
  %.sink = phi ptr [ %i.h, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit47.i ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit46.i ] ; 2 uses
  store ptr %i.dm, ptr %2, align 8, !tbaa !272
  store ptr %.sink, ptr %i.f, align 8, !tbaa !272
  store i64 %i.ee, ptr %4, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre77 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !249
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i, %bb.v, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i
  %i.ek = phi ptr [ %i.dm, %bb.w ], [ %4, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i ], [ %i.dj, %bb.v ], [ %i.dj, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i ]
  %i.el = phi ptr [ %.sink, %bb.w ], [ %i.dj, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i ], [ %i.dm, %bb.v ], [ %i.dm, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i ]
  %i.em = phi i64 [ %.pre77, %bb.w ], [ %i.dp, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit45.i ], [ 0, %bb.v ], [ %i.dp, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit42.i ]
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.dh, ptr %i.en, align 8, !tbaa !249
  store i64 %i.em, ptr %5, align 8, !tbaa !249
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit: ; preds = %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit43.i, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit44.i, %bb.x
  %i.eo = phi ptr [ %i.dj, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit43.i ], [ %i.dj, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit44.i ], [ %i.ek, %bb.x ] ; 2 uses
  %i.ep = phi ptr [ %i.dm, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit43.i ], [ %i.dm, %_ZNSt11char_traitsIDiE4copyEPDiPKDim.exit44.i ], [ %i.el, %bb.x ] ; 8 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !277
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !276
  %i.eu = ptrtoint ptr %i.er to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = load ptr, ptr %i.bc, align 8, !tbaa !279 ; 2 uses
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !281
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = ashr exact i64 %i.fb, 2                 ; 4 uses
  %i.fd = load i32, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %i.fe = and i32 %i.fd, 8
  %.not.i38 = icmp eq i32 %i.fe, 0                ; 2 uses
  %i.ff = and i32 %i.fd, 16
  %.not21.i = icmp eq i32 %i.ff, 0
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.dh ; 4 uses
  %i.fh = icmp eq ptr %i.ep, %i.h
  br i1 %i.fh, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i42, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit
  %i.fi = icmp ult i64 %i.dh, 4
  call void @llvm.assume(i1 %i.fi)
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE4swapERS4_.exit
  %i.fj = load i64, ptr %i.h, align 8, !tbaa !64
  br label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i40

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i39, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i42
  %i.fk = phi i64 [ %i.fj, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i39 ], [ 3, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.thread.i.i42 ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.fk
  br i1 %.not.i38, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ew
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !276
  store ptr %i.fm, ptr %i.eq, align 8, !tbaa !277
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !278
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i40
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ep, ptr %i.n, align 8, !tbaa !281
  store ptr %i.fl, ptr %i.l, align 8, !tbaa !280
  %i.fo = icmp sgt i64 %i.fc, 2147483647
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aa
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %i.fc, i64 4294967294)
  %i.fq = add nuw nsw i64 %i.fp, 2147483646
  %i.fr = udiv i64 %i.fq, 2147483647              ; 2 uses
  %i.fs = mul nuw nsw i64 %i.fr, 8589934588
  %i.ft = getelementptr i8, ptr %i.ep, i64 %i.fs
  %scevgep.i.i = getelementptr i8, ptr %i.ft, i64 8589934588
  %i.fu = add nsw i64 %i.fc, -2147483647
  %.neg.i.i = mul nsw i64 %i.fr, -2147483647
  %i.fv = add nsw i64 %i.fu, %.neg.i.i
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.aa
  %i.fw = phi ptr [ %scevgep.i.i, %.lr.ph.preheader.i.i ], [ %i.ep, %bb.aa ]
  %.0.lcssa.i.i = phi i64 [ %i.fv, %.lr.ph.preheader.i.i ], [ %i.fc, %bb.aa ]
  %i.fx = shl i64 %.0.lcssa.i.i, 32
  %i.fy = ashr exact i64 %i.fx, 30
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy ; 3 uses
  store ptr %i.fz, ptr %i.bc, align 8, !tbaa !279
  br i1 %.not.i38, label %bb.ab, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit

bb.ab:                                            ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i
  store ptr %i.fg, ptr %i.es, align 8, !tbaa !276
  store ptr %i.fg, ptr %i.eq, align 8, !tbaa !277
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.fg, ptr %i.ga, align 8, !tbaa !278
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit: ; preds = %bb.ab, %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i, %bb.z
  %.pre7881 = phi ptr [ %i.fz, %bb.ab ], [ %i.fz, %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE8_M_pbumpEPDiS5_l.exit.i ], [ %i.ex, %bb.z ]
  %i.gb = icmp eq ptr %i.eo, %4
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit
  %i.gc = load i64, ptr %4, align 8, !tbaa !64
  %i.gd = shl i64 %i.gc, 2
  %i.ge = add i64 %i.gd, 4
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.ge) #34
  %.pre78.pre = load ptr, ptr %i.bc, align 8, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46: ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i43
  %.pre78 = phi ptr [ %.pre78.pre, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i43 ], [ %.pre7881, %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ad

bb.ac:                                            ; preds = %bb.g
  store i32 %1, ptr %i.bd, align 4, !tbaa !159
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46
  %i.gf = phi ptr [ %i.bd, %bb.ac ], [ %.pre78, %_ZNSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEED2Ev.exit46 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store ptr %i.gg, ptr %i.bc, align 8, !tbaa !279
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f, %bb.b, %bb.a, %bb.e
  %.3 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %1, %bb.e ], [ %1, %bb.ad ], [ -1, %bb.f ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !272  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !64
  %i.f = shl i64 %i.e, 2
  %i.g = add i64 %i.f, 4
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.g) #34, !inline_history !273
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEED2Ev.exit

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIDiSt11char_traitsIDiEE, i64 16), ptr %0, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #32, !inline_history !274
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE6setbufEPDil(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp sgt i64 %2, -1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit

_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.d, align 8, !tbaa !249
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !272  ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !247  ; 2 uses
  %i.h = and i32 %i.g, 8
  %.not.i = icmp eq i32 %i.h, 0
  %i.i = and i32 %i.g, 16
  %.not21.i = icmp eq i32 %i.i, 0                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = icmp eq ptr %i.e, %i.j
  %i.l = load i64, ptr %i.j, align 8
  %spec.select = select i1 %i.k, i64 3, i64 %i.l
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %spec.select
  %.not22.i = icmp eq ptr %1, %i.e                ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %.019.i = select i1 %.not22.i, ptr %1, ptr %i.n ; 3 uses
  %.0.i = select i1 %.not22.i, ptr %i.m, ptr %i.n ; 2 uses
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit, label %bb.c

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIDiSt11char_traitsIDiESaIDiEE8capacityEv.exit.i
  %.020.i = select i1 %.not22.i, i64 %2, i64 0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.p, align 8, !tbaa !276
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.q, align 8, !tbaa !277
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.019.i, ptr %i.r, align 8, !tbaa !278
  br i1 %.not21.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.s, align 8, !tbaa !281
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !280
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.u, align 8, !tbaa !279
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit.sink.split

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit.sink.split: ; preds = %.thread, %bb.c
  %.sink13 = phi i64 [ 8, %bb.c ], [ 32, %.thread ]
  %.019.i.sink12 = phi ptr [ %.019.i, %bb.c ], [ %1, %.thread ] ; 2 uses
  %.sink11 = phi i64 [ 16, %bb.c ], [ 48, %.thread ]
  %.019.i.sink10 = phi ptr [ %.019.i, %bb.c ], [ %.0.i, %.thread ]
  %.sink9 = phi i64 [ 24, %bb.c ], [ 40, %.thread ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store ptr %.019.i.sink12, ptr %i.v, align 8, !tbaa !282
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.sink11
  store ptr %.019.i.sink10, ptr %i.w, align 8, !tbaa !282
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  store ptr %.019.i.sink12, ptr %i.x, align 8, !tbaa !282
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit: ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7_M_syncEPDimm.exit.sink.split, %bb.b, %.thread, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { i64, i64 } @_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %i.a, align 8, !tbaa !247  ; 2 uses
  %i.c = and i32 %i.b, 8                          ; 2 uses
  %i.d = and i32 %i.c, %3
  %i.e = icmp ne i32 %i.d, 0                      ; 2 uses
  %i.f = and i32 %3, 16                           ; 2 uses
  %i.g = and i32 %i.f, %i.b
  %i.h = icmp ne i32 %i.g, 0                      ; 2 uses
  %i.i = icmp ne i32 %2, 1
  %i.j = and i1 %i.i, %i.h
  %i.k = and i1 %i.e, %i.j                        ; 3 uses
  %.not = icmp eq i32 %i.f, 0
  %i.l = and i1 %.not, %i.e                       ; 3 uses
  %i.m = and i32 %3, 8
  %.not56 = icmp eq i32 %i.m, 0
  %i.n = and i1 %.not56, %i.h                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = select i1 %i.l, ptr %i.p, ptr %i.r       ; 5 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = icmp eq i64 %1, 0
  %or.cond3.not65 = or i1 %i.u, %i.t
  %or.cond5 = or i1 %i.l, %i.n
  %or.cond7 = or i1 %or.cond5, %i.k
  %or.cond = and i1 %or.cond7, %or.cond3.not65
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 7 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE15_M_update_egptrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !278
  %i.z = icmp ugt ptr %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE15_M_update_egptrEv.exit

bb.d:                                             ; preds = %bb.c
  %.not11.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.w, ptr %i.o, align 8, !tbaa !276
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !277
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %i.w, %bb.e ], [ %i.p, %bb.d ]
  store ptr %i.w, ptr %i.x, align 8, !tbaa !278
  br label %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE15_M_update_egptrEv.exit

_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE15_M_update_egptrEv.exit: ; preds = %bb.b, %bb.c, %.sink.split.i
  %i.ac = phi ptr [ %i.p, %bb.b ], [ %i.p, %bb.c ], [ %i.ab, %.sink.split.i ]
  switch i32 %2, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNSt7__cxx1115basic_stringbufIDiSt11char_traitsIDiESaIDiEE15_M_update_egptrEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !277
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %1
  %i.ak = ptrtoint ptr %i.w to i64
  %i.al = sub i64 %i.ak, %i.ag
  %i.am = ashr exact i64 %i.al, 2
end_hunk_1
