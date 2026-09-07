Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/example?download=true
inline.NumInlined: 58056
inline.NumDeleted: 19618
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZNSt19_Sp_counted_deleterIDnZN7cinatra16coro_http_client13async_requestINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEN12async_simple4coro4LazyINS0_9resp_dataEEET_NS0_11http_methodENS0_11req_contextIT0_EESt13unordered_mapIS8_S8_St4hashIS8_ESt8equal_toIS8_ESaISt4pairIKS8_S8_EEESt4spanIcLm18446744073709551615EEEUlSE_E_SaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7cinatra5uri_t10parse_fromEPKc(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0118 = phi ptr [ %1, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.a = load i8, ptr %.0118, align 1, !tbaa !295
  switch i8 %i.a, label %bb.c [
    i8 47, label %.critedge.loopexit
    i8 0, label %.critedge.loopexit
    i8 58, label %.critedge151
  ]

.critedge151:                                     ; preds = %bb.b
  %i.b = load i8, ptr %1, align 1, !tbaa !295
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isalpha(i32 noundef %i.c) #61
  %.not136 = icmp eq i32 %i.d, 0
  br i1 %.not136, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit, label %.preheader207

.preheader207:                                    ; preds = %.critedge151
  %.0108216 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.e = load i8, ptr %.0108216, align 1, !tbaa !295 ; 2 uses
  %.not137217 = icmp eq i8 %i.e, 58
  br i1 %.not137217, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0118, i64 1
  br label %bb.b, !llvm.loop !7457

.lr.ph:                                           ; preds = %.preheader207, %_ZN7cinatra5uri_t19is_scheme_characterEi.exit
  %i.g = phi i8 [ %i.j, %_ZN7cinatra5uri_t19is_scheme_characterEi.exit ], [ %i.e, %.preheader207 ] ; 2 uses
  %.0108218 = phi ptr [ %.0108, %_ZN7cinatra5uri_t19is_scheme_characterEi.exit ], [ %.0108216, %.preheader207 ] ; 2 uses
  %i.h = sext i8 %i.g to i32
  %i.i = tail call i32 @isalnum(i32 noundef %i.h) #61
  %.fr.i = freeze i32 %i.i
  %.not.i = icmp eq i32 %.fr.i, 0
  br i1 %.not.i, label %switch.early.test.i, label %_ZN7cinatra5uri_t19is_scheme_characterEi.exit

switch.early.test.i:                              ; preds = %.lr.ph
  switch i8 %i.g, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit [
    i8 45, label %_ZN7cinatra5uri_t19is_scheme_characterEi.exit
    i8 43, label %_ZN7cinatra5uri_t19is_scheme_characterEi.exit
    i8 46, label %_ZN7cinatra5uri_t19is_scheme_characterEi.exit
  ]

_ZN7cinatra5uri_t19is_scheme_characterEi.exit:    ; preds = %.lr.ph, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %.0108 = getelementptr inbounds nuw i8, ptr %.0108218, i64 1 ; 3 uses
  %i.j = load i8, ptr %.0108, align 1, !tbaa !295 ; 2 uses
  %.not137 = icmp eq i8 %i.j, 58
  br i1 %.not137, label %._crit_edge, label %.lr.ph, !llvm.loop !7458

._crit_edge:                                      ; preds = %_ZN7cinatra5uri_t19is_scheme_characterEi.exit, %.preheader207
  %.pn.lcssa = phi ptr [ %1, %.preheader207 ], [ %.0108218, %_ZN7cinatra5uri_t19is_scheme_characterEi.exit ]
  %.0108.lcssa = phi ptr [ %.0108216, %.preheader207 ], [ %.0108, %_ZN7cinatra5uri_t19is_scheme_characterEi.exit ]
  %i.k = ptrtoint ptr %.0108.lcssa to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  store i64 %i.m, ptr %0, align 8, !tbaa !502
  %.sroa.4196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4196.0..sroa_idx, align 8, !tbaa !593
  switch i64 %i.m, label %.thread [
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i156
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %._crit_edge
  %i.n = load i32, ptr %1, align 1
  %i.o = xor i32 %i.n, 1886680168
  %i.p = getelementptr i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.r, 115
  %i.t = or i32 %i.o, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i156: ; preds = %._crit_edge
  %i.x = load i16, ptr %1, align 1
  %i.y = xor i16 %i.x, 29559
  %i.z = getelementptr i8, ptr %1, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 %i.ab, 115
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i156, %._crit_edge
  %.shrunk = phi i1 [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ false, %._crit_edge ], [ %i.ag, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i156 ]
  %i.ah = zext i1 %.shrunk to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !2784
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn.lcssa, i64 2
  br label %.critedge

.critedge.loopexit:                               ; preds = %bb.b, %bb.b
  %.pre = load i64, ptr %0, align 8, !tbaa !520
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.thread
  %i.ak = phi i64 [ %i.m, %.thread ], [ %.pre, %.critedge.loopexit ]
  %.2110 = phi ptr [ %i.aj, %.thread ], [ %1, %.critedge.loopexit ] ; 10 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.am = load i8, ptr %.2110, align 1, !tbaa !295 ; 2 uses
  %i.an = icmp eq i8 %i.am, 47
  br i1 %i.an, label %bb.e, label %.thread198

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.2110, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !295
  %i.aq = icmp eq i8 %i.ap, 47
  br i1 %i.aq, label %bb.f, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread

bb.f:                                             ; preds = %bb.e
  %.ptr143 = getelementptr inbounds nuw i8, ptr %.2110, i64 2 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.3111.idx = phi i64 [ 2, %bb.f ], [ %.3111.add, %bb.i ] ; 6 uses
  %.3111.ptr.ptr = getelementptr inbounds nuw i8, ptr %.2110, i64 %.3111.idx
  %i.ar = load i8, ptr %.3111.ptr.ptr, align 1, !tbaa !295 ; 5 uses
  %i.as = sext i8 %i.ar to i32                    ; 2 uses
  switch i8 %i.ar, label %bb.h [
    i8 47, label %.critedge5
    i8 63, label %.critedge5
    i8 35, label %.critedge5
    i8 0, label %.critedge5
  ]

bb.h:                                             ; preds = %bb.g
  %i.at = tail call i32 @isalnum(i32 noundef %i.as) #61
  %.fr.i.i = freeze i32 %i.at
  %.not.i.i = icmp eq i32 %.fr.i.i, 0
  br i1 %.not.i.i, label %switch.early.test.i.i, label %bb.i

switch.early.test.i.i:                            ; preds = %bb.h
  switch i8 %i.ar, label %_ZN7cinatra5uri_t13is_unreservedEi.exit.i [
    i8 95, label %bb.i
    i8 46, label %bb.i
    i8 45, label %bb.i
    i8 126, label %bb.i
  ]

_ZN7cinatra5uri_t13is_unreservedEi.exit.i:        ; preds = %switch.early.test.i.i
  %i.au = tail call noundef zeroext i1 @_ZN7cinatra5uri_t12is_sub_delimEi(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.as)
  br i1 %i.au, label %bb.i, label %switch.early.test.i160

switch.early.test.i160:                           ; preds = %_ZN7cinatra5uri_t13is_unreservedEi.exit.i
  switch i8 %i.ar, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit [
    i8 91, label %bb.i
    i8 64, label %bb.i
    i8 58, label %bb.i
    i8 37, label %bb.i
    i8 93, label %bb.i
  ]

bb.i:                                             ; preds = %switch.early.test.i160, %switch.early.test.i160, %switch.early.test.i160, %switch.early.test.i160, %switch.early.test.i160, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.h
  %.3111.add = add nuw nsw i64 %.3111.idx, 1
  br label %bb.g, !llvm.loop !7459

.critedge5:                                       ; preds = %bb.g, %bb.g, %bb.g, %bb.g
  %.3111.ptr.ptr.le = getelementptr inbounds nuw i8, ptr %.2110, i64 %.3111.idx ; 4 uses
  %.not142 = icmp eq i64 %.3111.idx, 2
  br i1 %.not142, label %bb.q, label %.preheader

.preheader:                                       ; preds = %.critedge5, %.preheader
  %.0127.idx.in = phi i64 [ %.0127.idx, %.preheader ], [ %.3111.idx, %.critedge5 ] ; 3 uses
  %.0127.idx = add nsw i64 %.0127.idx.in, -1      ; 4 uses
  %.0127.ptr = getelementptr inbounds i8, ptr %.2110, i64 %.0127.idx
  %i.av = load i8, ptr %.0127.ptr, align 1, !tbaa !295 ; 2 uses
  %i.aw = sext i8 %i.av to i32
  %isdigittmp = add nsw i32 %i.aw, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.ax = icmp ne i64 %.0127.idx, 2
  %i.ay = and i1 %i.ax, %isdigit
  br i1 %i.ay, label %.preheader, label %bb.j, !llvm.loop !7460

bb.j:                                             ; preds = %.preheader
  %i.az = icmp eq i8 %i.av, 58
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.0127.ptr.le = getelementptr inbounds i8, ptr %.2110, i64 %.0127.idx
  %i.ba = getelementptr inbounds i8, ptr %.2110, i64 %.0127.idx.in
  %gepdiff = sub nsw i64 %.3111.idx, %.0127.idx.in
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %gepdiff, ptr %i.bb, align 8, !tbaa !502
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ba, ptr %.sroa.4191.0..sroa_idx, align 8, !tbaa !593
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0124 = phi ptr [ %.0127.ptr.le, %bb.k ], [ %.3111.ptr.ptr.le, %bb.j ] ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %_ZN7cinatra5uri_t22is_user_info_characterEi.exit, %bb.l
  %.0123 = phi ptr [ %.ptr143, %bb.l ], [ %i.bl, %_ZN7cinatra5uri_t22is_user_info_characterEi.exit ] ; 5 uses
  %i.bc = load i8, ptr %.0123, align 1, !tbaa !295 ; 4 uses
  %i.bd = sext i8 %i.bc to i32                    ; 2 uses
  %i.be = tail call i32 @isalnum(i32 noundef %i.bd) #61
  %.fr.i.i162 = freeze i32 %i.be
  %.not.i.i163 = icmp eq i32 %.fr.i.i162, 0
  br i1 %.not.i.i163, label %switch.early.test.i.i164, label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit

switch.early.test.i.i164:                         ; preds = %bb.m
  switch i8 %i.bc, label %_ZN7cinatra5uri_t13is_unreservedEi.exit.i165 [
    i8 95, label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit
    i8 46, label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit
    i8 45, label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit
    i8 126, label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit
  ]

_ZN7cinatra5uri_t13is_unreservedEi.exit.i165:     ; preds = %switch.early.test.i.i164
  %i.bf = tail call noundef zeroext i1 @_ZN7cinatra5uri_t12is_sub_delimEi(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.bd)
  %i.bg = icmp eq i8 %i.bc, 37
  %or.cond.i = or i1 %i.bg, %i.bf
  %i.bh = icmp eq i8 %i.bc, 58
  %spec.select.i = or i1 %i.bh, %or.cond.i
  br label %_ZN7cinatra5uri_t22is_user_info_characterEi.exit

_ZN7cinatra5uri_t22is_user_info_characterEi.exit: ; preds = %bb.m, %switch.early.test.i.i164, %switch.early.test.i.i164, %switch.early.test.i.i164, %switch.early.test.i.i164, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i165
  %i.bi = phi i1 [ %spec.select.i, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i165 ], [ true, %switch.early.test.i.i164 ], [ true, %switch.early.test.i.i164 ], [ true, %switch.early.test.i.i164 ], [ true, %switch.early.test.i.i164 ], [ true, %bb.m ]
  %i.bj = icmp ne ptr %.0123, %.0124
  %i.bk = and i1 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.0123, i64 1 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n, !llvm.loop !7461

bb.n:                                             ; preds = %_ZN7cinatra5uri_t22is_user_info_characterEi.exit
  %i.bm = load i8, ptr %.0123, align 1, !tbaa !295
  %i.bn = icmp eq i8 %i.bm, 64
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bo = ptrtoint ptr %.0123 to i64
  %i.bp = ptrtoint ptr %.ptr143 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !502
  %.sroa.4189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.ptr143, ptr %.sroa.4189.0..sroa_idx, align 8, !tbaa !593
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1126 = phi ptr [ %i.bl, %bb.o ], [ %.ptr143, %bb.n ] ; 2 uses
  %i.bs = ptrtoint ptr %.0124 to i64
  %i.bt = ptrtoint ptr %.1126 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !502
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.1126, ptr %.sroa.4187.0..sroa_idx, align 8, !tbaa !593
  %.pr.pre = load i8, ptr %.3111.ptr.ptr.le, align 1, !tbaa !295
  br label %bb.q

bb.q:                                             ; preds = %.critedge5, %bb.p
  %.pr = phi i8 [ %.pr.pre, %bb.p ], [ %i.ar, %.critedge5 ] ; 2 uses
  %i.bw = icmp eq i8 %.pr, 47
  br i1 %i.bw, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread, label %.thread198

.thread198:                                       ; preds = %bb.d, %bb.q
  %.4112200 = phi ptr [ %.3111.ptr.ptr.le, %bb.q ], [ %.2110, %bb.d ] ; 10 uses
  %i.bx = phi i8 [ %.pr, %bb.q ], [ %i.am, %bb.d ] ; 3 uses
  %i.by = sext i8 %i.bx to i32                    ; 2 uses
  %i.bz = tail call i32 @isalnum(i32 noundef %i.by) #61
  %.fr.i.i167 = freeze i32 %i.bz
  %.not.i.i168 = icmp eq i32 %.fr.i.i167, 0
  br i1 %.not.i.i168, label %switch.early.test.i.i169, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread

switch.early.test.i.i169:                         ; preds = %.thread198
  switch i8 %i.bx, label %_ZN7cinatra5uri_t13is_unreservedEi.exit.i170 [
    i8 95, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
    i8 46, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
    i8 45, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
    i8 126, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
  ]

_ZN7cinatra5uri_t13is_unreservedEi.exit.i170:     ; preds = %switch.early.test.i.i169
  %i.ca = tail call noundef zeroext i1 @_ZN7cinatra5uri_t12is_sub_delimEi(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.by)
  br i1 %i.ca, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread, label %switch.early.test.i171

switch.early.test.i171:                           ; preds = %_ZN7cinatra5uri_t13is_unreservedEi.exit.i170
  switch i8 %i.bx, label %_ZN7cinatra5uri_t17is_path_characterEi.exit [
    i8 58, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
    i8 64, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
    i8 37, label %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
  ]

_ZN7cinatra5uri_t17is_path_characterEi.exit.thread: ; preds = %switch.early.test.i171, %bb.e, %.thread198, %switch.early.test.i.i169, %switch.early.test.i.i169, %switch.early.test.i.i169, %switch.early.test.i.i169, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i170, %switch.early.test.i171, %switch.early.test.i171, %bb.q
  %.4112201 = phi ptr [ %.3111.ptr.ptr.le, %bb.q ], [ %.2110, %bb.e ], [ %.4112200, %switch.early.test.i171 ], [ %.4112200, %switch.early.test.i171 ], [ %.4112200, %switch.early.test.i171 ], [ %.4112200, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i170 ], [ %.4112200, %switch.early.test.i.i169 ], [ %.4112200, %switch.early.test.i.i169 ], [ %.4112200, %switch.early.test.i.i169 ], [ %.4112200, %switch.early.test.i.i169 ], [ %.4112200, %.thread198 ] ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread
  %.5113 = phi ptr [ %.4112201, %_ZN7cinatra5uri_t17is_path_characterEi.exit.thread ], [ %i.cf, %bb.t ] ; 4 uses
  %i.cb = load i8, ptr %.5113, align 1, !tbaa !295 ; 4 uses
  %i.cc = sext i8 %i.cb to i32                    ; 2 uses
  switch i8 %i.cb, label %bb.s [
    i8 63, label %.critedge7
    i8 35, label %.critedge7
    i8 0, label %.critedge7
  ]

bb.s:                                             ; preds = %bb.r
  %i.cd = tail call i32 @isalnum(i32 noundef %i.cc) #61
  %.fr.i.i173 = freeze i32 %i.cd
  %.not.i.i174 = icmp eq i32 %.fr.i.i173, 0
  br i1 %.not.i.i174, label %switch.early.test.i.i175, label %bb.t

switch.early.test.i.i175:                         ; preds = %bb.s
  switch i8 %i.cb, label %_ZN7cinatra5uri_t13is_unreservedEi.exit.i176 [
    i8 95, label %bb.t
    i8 46, label %bb.t
    i8 45, label %bb.t
    i8 126, label %bb.t
  ]

_ZN7cinatra5uri_t13is_unreservedEi.exit.i176:     ; preds = %switch.early.test.i.i175
  %i.ce = tail call noundef zeroext i1 @_ZN7cinatra5uri_t12is_sub_delimEi(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.cc)
  br i1 %i.ce, label %bb.t, label %switch.early.test.i177

switch.early.test.i177:                           ; preds = %_ZN7cinatra5uri_t13is_unreservedEi.exit.i176
  switch i8 %i.cb, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit [
    i8 58, label %bb.t
    i8 47, label %bb.t
    i8 37, label %bb.t
    i8 64, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test.i177, %switch.early.test.i177, %switch.early.test.i177, %switch.early.test.i177, %_ZN7cinatra5uri_t13is_unreservedEi.exit.i176, %switch.early.test.i.i175, %switch.early.test.i.i175, %switch.early.test.i.i175, %switch.early.test.i.i175, %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %.5113, i64 1
  br label %bb.r, !llvm.loop !7462

.critedge7:                                       ; preds = %bb.r, %bb.r, %bb.r
  %i.cg = ptrtoint ptr %.5113 to i64
  %i.ch = ptrtoint ptr %.4112201 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !502
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.4112201, ptr %.sroa.4185.0..sroa_idx, align 8, !tbaa !593
  br label %_ZN7cinatra5uri_t17is_path_characterEi.exit

_ZN7cinatra5uri_t17is_path_characterEi.exit:      ; preds = %switch.early.test.i171, %.critedge7
  %.6114 = phi ptr [ %.5113, %.critedge7 ], [ %.4112200, %switch.early.test.i171 ] ; 3 uses
  %i.ck = load i8, ptr %.6114, align 1, !tbaa !295 ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 63
  br i1 %i.cl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN7cinatra5uri_t17is_path_characterEi.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %.6114, i64 1 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread, %bb.u
  %.7115 = phi ptr [ %i.cm, %bb.u ], [ %i.cr, %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread ] ; 5 uses
  %i.cn = load i8, ptr %.7115, align 1, !tbaa !295 ; 4 uses
  %i.co = sext i8 %i.cn to i32                    ; 2 uses
  switch i8 %i.cn, label %bb.w [
    i8 35, label %.critedge9
    i8 0, label %.critedge9
  ]

bb.w:                                             ; preds = %bb.v
  %i.cp = tail call i32 @isalnum(i32 noundef %i.co) #61
  %.fr.i.i.i = freeze i32 %i.cp
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.i.i.i, label %switch.early.test.i.i.i, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread

switch.early.test.i.i.i:                          ; preds = %bb.w
  switch i8 %i.cn, label %_ZN7cinatra5uri_t13is_unreservedEi.exit.i.i [
    i8 95, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 46, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 45, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 126, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
  ]

_ZN7cinatra5uri_t13is_unreservedEi.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.cq = tail call noundef zeroext i1 @_ZN7cinatra5uri_t12is_sub_delimEi(ptr noundef nonnull align 8 dereferenceable(113) %0, i32 noundef %i.co)
  br i1 %i.cq, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread, label %switch.early.test.i.i179

switch.early.test.i.i179:                         ; preds = %_ZN7cinatra5uri_t13is_unreservedEi.exit.i.i
  switch i8 %i.cn, label %_ZN7cinatra5uri_t22is_authority_characterEi.exit [
    i8 58, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 47, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 37, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 64, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
    i8 63, label %_ZN7cinatra5uri_t18is_query_characterEi.exit.thread
end_hunk_0
