Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/argparse?download=true
inline.NumInlined: 4280
inline.NumDeleted: 1275
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN11OpenImageIO4v3_19ArgOption20compute_prettyformatEv:bb.a
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !59 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !53
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #39
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #39
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN11OpenImageIO4v3_19ArgOption10initializeEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52   ; 2 uses
  switch i64 %i.d, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread [
    i64 0, label %bb.b
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  %i.f = load i16, ptr %i.e, align 1
  %i.g = icmp ne i16 %i.f, 10789
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28

bb.b:                                             ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 4, ptr %i.j, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 1, ptr %i.k, align 4, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.8, i64 noundef 0) ; 0 uses
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = load i16, ptr %i.e, align 1
  %i.u = icmp ne i16 %i.t, 12581
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 4, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 1, ptr %i.y, align 4, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !52
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !52
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull @.str.8, i64 noundef 0) ; 0 uses
  br label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %bb.a
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !59 ; 4 uses
  %i.ah = icmp eq i64 %i.d, 11
  br i1 %i.ah, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread
  %i.ai = load i64, ptr %.pre.pre, align 1
  %i.aj = xor i64 %i.ai, 6071224213145211708
  %i.ak = getelementptr i8, ptr %.pre.pre, i64 3
  %i.al = load i64, ptr %i.ak, align 1
  %i.am = xor i64 %i.al, 4490739001733562704
  %i.an = or i64 %i.aj, %i.am
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread

_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit
  %.pre50 = phi ptr [ %.pre.pre, %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit ], [ %.pre.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread ], [ %i.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28 ] ; 5 uses
  %i.ar = load i8, ptr %.pre50, align 1, !tbaa !53
  %.not = icmp eq i8 %i.ar, 45
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 4, ptr %i.as, align 8, !tbaa !102
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 1, ptr %i.at, align 4, !tbaa !103
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !52
  %i.ax = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 noundef 0, i64 noundef %i.aw, ptr noundef nonnull @.str.7, i64 noundef 1) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !52
  %i.bb = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 noundef 0, i64 noundef %i.ba, ptr noundef nonnull @.str.8, i64 noundef 0) ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre50, i64 1 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !53
  %i.be = icmp eq i8 %i.bd, 45
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre50, i64 2
  %spec.select = select i1 %i.be, ptr %i.bf, ptr %i.bc
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi ptr [ %spec.select, %bb.e ], [ %i.bj, %.critedge ] ; 4 uses
  %i.bg = load i8, ptr %.1, align 1, !tbaa !53    ; 2 uses
  %i.bh = sext i8 %i.bg to i32
  %i.bi = tail call i32 @isalnum(i32 noundef %i.bh) #42
  %.fr = freeze i32 %i.bi
  %.not23.not = icmp eq i32 %.fr, 0
  br i1 %.not23.not, label %switch.early.test, label %.critedge

switch.early.test:                                ; preds = %bb.f
  switch i8 %i.bg, label %bb.h [
    i8 95, label %.critedge
    i8 45, label %.critedge
    i8 0, label %bb.g
  ]

.critedge:                                        ; preds = %switch.early.test, %switch.early.test, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.f, !llvm.loop !352

bb.g:                                             ; preds = %switch.early.test
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 2, ptr %i.bl, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 1, ptr %i.bm, align 4, !tbaa !103
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bo = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull @.str.10) ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %switch.early.test
  %i.bp = ptrtoint ptr %.pre50 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !52
  %4 = ptrtoint ptr %.1 to i64
  %5 = sub i64 %4, %i.bp
  %i.bt = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 noundef 0, i64 noundef %i.bs, ptr noundef nonnull %.pre50, i64 noundef %5) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  store i32 1, ptr %i.bu, align 8, !tbaa !102
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !52
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !59
  store i8 0, ptr %i.bx, align 1, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.s, %bb.h
  %.2 = phi ptr [ %.1, %bb.h ], [ %i.dl, %bb.s ]  ; 3 uses
  %i.cb = load i8, ptr %.2, align 1, !tbaa !53
  switch i8 %i.cb, label %bb.s [
    i8 0, label %bb.t
    i8 37, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 8 uses
  %i.cd = load i32, ptr %i.by, align 4, !tbaa !103 ; 2 uses
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.by, align 4, !tbaa !103
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !53  ; 2 uses
  switch i8 %i.cf, label %bb.r [
    i8 100, label %bb.k
    i8 103, label %bb.k
    i8 102, label %bb.k
    i8 70, label %bb.k
    i8 115, label %bb.k
    i8 76, label %bb.k
    i8 33, label %bb.m
    i8 42, label %bb.o
    i8 49, label %bb.p
    i8 64, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.cg = load i64, ptr %i.bw, align 8, !tbaa !52 ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ca
  br i1 %i.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.k
  %i.ck = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.ck)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cm = phi i64 [ %i.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.bv, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.l
  %i.co = phi ptr [ %.pre.i.i, %bb.l ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cg
  store i8 %i.cf, ptr %i.cp, align 1, !tbaa !53
  store i64 %i.ch, ptr %i.bw, align 8, !tbaa !52
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ch
  store i8 0, ptr %i.cr, align 1, !tbaa !53
  br label %bb.s

bb.m:                                             ; preds = %bb.j
  store i32 3, ptr %i.bu, align 8, !tbaa !102
  %i.cs = load i8, ptr %i.cc, align 1, !tbaa !53
  %i.ct = load i64, ptr %i.bw, align 8, !tbaa !52 ; 4 uses
  %i.cu = add i64 %i.ct, 1                        ; 3 uses
  %i.cv = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ca
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32: ; preds = %bb.m
  %i.cx = icmp ult i64 %i.ct, 16
  tail call void @llvm.assume(i1 %i.cx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.m
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32
  %i.cz = phi i64 [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i32 ]
  %i.da = icmp ugt i64 %i.cu, %i.cz
  br i1 %i.da, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef %i.ct, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i31 = load ptr, ptr %i.bv, align 8, !tbaa !59
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30, %bb.n
  %i.db = phi ptr [ %.pre.i.i31, %bb.n ], [ %i.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  store i8 %i.cs, ptr %i.dc, align 1, !tbaa !53
  store i64 %i.cu, ptr %i.bw, align 8, !tbaa !52
  %i.dd = load ptr, ptr %i.bv, align 8, !tbaa !59
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cu
  store i8 0, ptr %i.de, align 1, !tbaa !53
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  store i32 4, ptr %i.bu, align 8, !tbaa !102
  br label %bb.s

bb.p:                                             ; preds = %bb.j
  store i32 4, ptr %i.bu, align 8, !tbaa !102
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  store i8 1, ptr %i.bz, align 4, !tbaa !104
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !103
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  %i.df = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.11, i64 noundef 34) ; 0 uses
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.12, i64 noundef 13) ; 0 uses
  %i.dh = load i8, ptr %i.cc, align 1, !tbaa !53
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.dh) ; 2 uses
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.13, i64 noundef 1) ; 0 uses
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.14, i64 noundef 1) ; 0 uses
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE6resizeEmRKS2_.exit

bb.s:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33, %bb.o, %bb.p, %bb.q
  %.3 = phi ptr [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit33 ], [ %i.cc, %bb.o ], [ %i.cc, %bb.p ], [ %i.cc, %bb.q ], [ %.2, %bb.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.3, i64 1
  br label %bb.i, !llvm.loop !353

bb.t:                                             ; preds = %bb.i
  %i.dm = load i32, ptr %i.by, align 4, !tbaa !103
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.do = load i8, ptr %i.bz, align 4, !tbaa !104, !range !105, !noundef !106
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.bu, align 8, !tbaa !102
  store i32 1, ptr %i.by, align 4, !tbaa !103
  %i.dq = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull @.str.10) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.d, %bb.t, %bb.u, %bb.v, %bb.g, %_ZNK11OpenImageIO4v3_19ArgOption12is_separatorEv.exit, %bb.b
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !53
  %i.dt = icmp eq i8 %i.ds, 45
  br i1 %i.dt, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59
  store ptr %i.dv, ptr %2, align 8, !tbaa !55
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !52
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !56
  store ptr @.str.15, ptr %3, align 8, !tbaa !55
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.dz, align 8, !tbaa !56
  call void @_ZN11OpenImageIO4v3_17Strutil6lstripENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %1, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eb = load ptr, ptr %1, align 8, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !56
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !52
  %i.eg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef 0, i64 noundef %i.ef, ptr noundef %i.eb, i64 noundef %i.ed) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !103
  %i.en = sext i32 %i.em to i64                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
end_hunk_0
