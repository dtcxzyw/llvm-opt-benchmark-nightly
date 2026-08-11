inline.NumInlined: 865
inline.NumDeleted: 342
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  br label %_ZN5arrow8internalL22ParseTimestampStrptimeEPKcmS2_bbNS_8TimeUnit4typeEPl.exit

_ZN5arrow8internalL22ParseTimestampStrptimeEPKcmS2_bbNS_8TimeUnit4typeEPl.exit: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParser4kindEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef ptr @_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParser6formatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare ptr @strptime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal12_GLOBAL__N_113ISO8601ParserEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19, !inline_history !145
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !29
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #19
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow15TimestampParserD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal12_GLOBAL__N_113ISO8601ParserD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.std::chrono::duration", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = icmp ult i64 %2, 10
  br i1 %i.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.b, !prof !140

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.e, 45
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !106

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %.not7.i.i = icmp eq i8 %i.g, 45
  br i1 %.not7.i.i, label %bb.d, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !106

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 1, !tbaa !29
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.i, 10
  %narrow47.i.i = add nuw nsw i8 %i.m, %narrow.i.i
  %i.s = zext nneg i8 %narrow47.i.i to i16
  %i.t = mul nuw nsw i16 %i.s, 10
  %i.u = zext nneg i8 %i.q to i16
  %i.v = add nuw nsw i16 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %i.z = mul nuw nsw i16 %i.v, 10
  %i.aa = icmp ult i8 %i.y, 10
  %i.ab = zext nneg i8 %i.y to i16
  %i.ac = add nuw nsw i16 %i.z, %i.ab             ; 4 uses
  br i1 %i.aa, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %narrow.i8.i.i = mul nuw nsw i8 %i.af, 10
  %i.ak = icmp ult i8 %i.aj, 10
  %i.al = add i8 %i.aj, %narrow.i8.i.i            ; 6 uses
  br i1 %i.ak, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !146

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !29
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %narrow.i10.i.i = mul nuw nsw i8 %i.ao, 10
  %i.at = icmp ugt i8 %i.as, 9
  %i.au = add i8 %i.as, %narrow.i10.i.i           ; 3 uses
  %i.av = add i8 %i.al, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.av, -12
  %or.cond34.not38.i.i = select i1 %i.at, i1 true, i1 %spec.select.i.i.i.i, !prof !147
  %.not8.i.i.i = icmp eq i8 %i.au, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !148
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.j, !prof !148

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.al, 2
  %i.aw = and i16 %i.ac, 3
  %i.ax = icmp eq i16 %i.aw, 0
  %or.cond.i.i.i = and i1 %i.ax, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ay = urem i16 %i.ac, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.ay, 0
  %i.az = urem i16 %i.ac, 400
  %i.ba = icmp eq i16 %i.az, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bb = zext nneg i8 %i.al to i64
  %i.bc = add nuw nsw i64 %i.bb, 4294967295
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !29
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bf, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.au
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.l, !prof !149

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bg = zext nneg i16 %i.ac to i32
  %i.bh = icmp samesign ult i8 %i.al, 3
  %.neg.i.i.i.i = sext i1 %i.bh to i32
  %i.bi = add nsw i32 %.neg.i.i.i.i, %i.bg        ; 4 uses
  %i.bj = zext nneg i8 %i.al to i32
  %i.bk = zext i8 %i.au to i32
  %i.bl = add nsw i32 %i.bi, 65137
  %i.bm = icmp slt i32 %i.bi, 0
  %i.bn = select i1 %i.bm, i32 %i.bl, i32 %i.bi
  %.lhs.trunc.i.i = trunc i32 %i.bn to i16
  %i.bo = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bo to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.bp = add nsw i32 %.neg15.i.i.i.i, %i.bi      ; 3 uses
  %i.bq = icmp samesign ugt i8 %i.al, 2
  %.v.i.i.i.i = select i1 %i.bq, i32 -3, i32 9
  %i.br = add nsw i32 %.v.i.i.i.i, %i.bj
  %i.bs = mul nsw i32 %i.br, 153
  %i.bt = add nsw i32 %i.bs, 2
  %i.bu = udiv i32 %i.bt, 5
  %i.bv = mul nsw i32 %i.bp, 365
  %i.bw = lshr i32 %i.bp, 2
  %i.bx = udiv i32 %i.bp, 100
  %i.by = mul nsw i32 %.sext.i.i, 146097
  %i.bz = add nsw i32 %i.bu, -719469
  %i.ca = add nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bw
  %i.cc = add nsw i32 %i.cb, %i.bv
  %i.cd = sub nsw i32 %i.cc, %i.bx
  %i.ce = add nsw i32 %i.cd, %i.bk
  %i.cf = sext i32 %i.ce to i64                   ; 2 uses
  %i.cg = mul nsw i64 %i.cf, 86400                ; 4 uses
  %i.ch = icmp eq i64 %2, 10
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  switch i32 %3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %.split14.i.i
    i32 2, label %.split.i.i
  ]

.split14.i.i:                                     ; preds = %bb.m
  %i.ci = mul nsw i64 %i.cf, 86400000
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.m
  %i.cj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = extractvalue { i64, i1 } %i.cj, 0
  br i1 %i.ck, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !144

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.m
  %i.cm = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000000) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  br i1 %i.cn, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !144

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %.split.i.i, %.split14.i.i, %bb.m
  %.pn25.i.i8.i.i = phi i64 [ %i.ci, %.split14.i.i ], [ %i.co, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ %i.cl, %.split.i.i ], [ %i.cg, %bb.m ]
  store i64 %.pn25.i.i8.i.i, ptr %4, align 8, !tbaa !72
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit

bb.n:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29
  switch i8 %i.cq, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit [
    i8 32, label %bb.o
    i8 84, label %bb.o
  ], !prof !150

bb.o:                                             ; preds = %bb.n, %bb.n
  %.not76.i = icmp eq ptr %5, null                ; 4 uses
  br i1 %.not76.i, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %6, align 8
  %i.cr = getelementptr i8, ptr %1, i64 %2
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !29  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 90
  br i1 %i.cu, label %bb.q, label %bb.s

.thread.i:                                        ; preds = %bb.o
  store i8 0, ptr %5, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %6, align 8
  %i.cv = getelementptr i8, ptr %1, i64 %2
  %i.cw = getelementptr i8, ptr %i.cv, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29  ; 2 uses
  %i.cy = icmp eq i8 %i.cx, 90
  br i1 %i.cy, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cz = add i64 %2, -1
  br label %bb.ak

bb.r:                                             ; preds = %.thread.i
  %i.da = add i64 %2, -1
  store i8 1, ptr %5, align 1, !tbaa !49
  br label %bb.ak

bb.s:                                             ; preds = %.thread.i, %bb.p
  %i.db = phi i8 [ %i.cx, %.thread.i ], [ %i.ct, %bb.p ] ; 2 uses
  %i.dc = add i64 %2, -3                          ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !29  ; 4 uses
  switch i8 %i.de, label %bb.x [
    i8 43, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = add i8 %i.dg, -48                       ; 2 uses
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.u, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.u:                                             ; preds = %bb.t
  %i.dj = add i8 %i.db, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.dh, 10
  %i.dk = icmp ugt i8 %i.dj, 9
  %i.dl = add i8 %narrow.i.i.i, %i.dj             ; 2 uses
  %i.dm = icmp ugt i8 %i.dl, 23
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dm, !prof !151
  br i1 %or.cond.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %bb.v, !prof !151

bb.v:                                             ; preds = %bb.u
  %i.dn = zext nneg i8 %i.dl to i64
  %i.do = mul nuw nsw i64 %i.dn, 3600             ; 2 uses
  %i.dp = icmp eq i8 %i.de, 43
  %i.dq = sub nsw i64 0, %i.do
  %spec.select.i = select i1 %i.dp, i64 %i.dq, i64 %i.do
  store i64 %spec.select.i, ptr %6, align 8, !tbaa !72
  br i1 %.not76.i, label %bb.ak, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %5, align 1, !tbaa !49
  br label %bb.ak

bb.x:                                             ; preds = %bb.s
  %i.dr = add i64 %2, -5                          ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %i.dr ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.dt, label %bb.ad [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !29
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 10
  br i1 %i.dx, label %bb.z, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.z:                                             ; preds = %bb.y
  %i.dy = add i8 %i.de, -48                       ; 2 uses
  %narrow.i.i79.i = mul nuw nsw i8 %i.dw, 10
  %i.dz = icmp ult i8 %i.dy, 10
  %i.ea = add i8 %narrow.i.i79.i, %i.dy           ; 2 uses
  br i1 %i.dz, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i: ; preds = %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = add i8 %i.ec, -48                       ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %bb.aa, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.aa:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i
  %i.ef = add i8 %i.db, -48                       ; 2 uses
  %narrow.i8.i81.i = mul nuw nsw i8 %i.ed, 10
  %i.eg = icmp ult i8 %i.ef, 10
  %i.eh = add i8 %narrow.i8.i81.i, %i.ef          ; 2 uses
  br i1 %i.eg, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.aa
  %i.ei = icmp ugt i8 %i.ea, 23
  %i.ej = icmp ugt i8 %i.eh, 59
  %or.cond6.i.i = select i1 %i.ei, i1 true, i1 %i.ej, !prof !152
  br i1 %or.cond6.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %bb.ab, !prof !153

bb.ab:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ek = zext nneg i8 %i.ea to i64
  %i.el = zext nneg i8 %i.eh to i64
  %i.em = mul nuw nsw i64 %i.ek, 60
  %i.en = add nuw nsw i64 %i.em, %i.el
  %i.eo = mul nuw nsw i64 %i.en, 60               ; 2 uses
  %i.ep = icmp eq i8 %i.dt, 43
  %i.eq = sub nsw i64 0, %i.eo
  %spec.select166.i = select i1 %i.ep, i64 %i.eq, i64 %i.eo
  store i64 %spec.select166.i, ptr %6, align 8, !tbaa !72
  br i1 %.not76.i, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %5, align 1, !tbaa !49
  br label %bb.ak

bb.ad:                                            ; preds = %bb.x
  %i.er = add i64 %2, -6                          ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !29  ; 2 uses
  switch i8 %i.et, label %bb.ak [
    i8 43, label %bb.ae
    i8 45, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.eu = icmp eq i8 %i.de, 58
  br i1 %i.eu, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %i.ew = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.ev, ptr noundef %6)
  br i1 %i.ew, label %bb.ag, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !106

bb.ag:                                            ; preds = %bb.af
  %i.ex = icmp eq i8 %i.et, 43
  br i1 %i.ex, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ey = load i64, ptr %6, align 8, !tbaa !154
  %i.ez = sub nsw i64 0, %i.ey
  store i64 %i.ez, ptr %6, align 8, !tbaa !154
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not76.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 1, ptr %5, align 1, !tbaa !49
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.r, %bb.q
  %.064.i = phi i64 [ %i.da, %bb.r ], [ %i.cz, %bb.q ], [ %i.dc, %bb.w ], [ %i.dc, %bb.v ], [ %i.dr, %bb.ac ], [ %i.dr, %bb.ab ], [ %i.er, %bb.aj ], [ %i.er, %bb.ai ], [ %2, %bb.ae ], [ %2, %bb.ad ] ; 6 uses
  switch i64 %.064.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i [
    i64 13, label %bb.al
    i64 16, label %bb.an
    i64 19, label %bb.ar
    i64 21, label %bb.ar
    i64 22, label %bb.ar
    i64 23, label %bb.ar
    i64 24, label %bb.ar
    i64 25, label %bb.ar
    i64 26, label %bb.ar
    i64 27, label %bb.ar
    i64 28, label %bb.ar
    i64 29, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !29
  %i.fc = add i8 %i.fb, -48                       ; 2 uses
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %bb.am, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.am:                                            ; preds = %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29
  %i.fg = add i8 %i.ff, -48                       ; 2 uses
  %narrow.i.i83.i = mul nuw nsw i8 %i.fc, 10
  %i.fh = icmp ugt i8 %i.fg, 9
  %i.fi = add i8 %i.fg, %narrow.i.i83.i           ; 2 uses
  %i.fj = icmp ugt i8 %i.fi, 23
  %or.cond.i84.i = select i1 %i.fh, i1 true, i1 %i.fj, !prof !151
  br i1 %or.cond.i84.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i, !prof !151

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i: ; preds = %bb.am
  %i.fk = zext nneg i8 %i.fi to i64
  %i.fl = mul nuw nsw i64 %i.fk, 3600
  br label %bb.aw

bb.an:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %.not.i86.i = icmp eq i8 %i.fn, 58
  br i1 %.not.i86.i, label %bb.ao, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !106

bb.ao:                                            ; preds = %bb.an
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = add i8 %i.fp, -48                       ; 2 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ap, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.ap:                                            ; preds = %bb.ao
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !29
  %i.fu = add i8 %i.ft, -48                       ; 2 uses
  %narrow.i.i88.i = mul nuw nsw i8 %i.fq, 10
  %i.fv = icmp ult i8 %i.fu, 10
  %i.fw = add i8 %i.fu, %narrow.i.i88.i           ; 2 uses
  br i1 %i.fv, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i: ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.fz = add i8 %i.fy, -48                       ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 10
  br i1 %i.ga, label %bb.aq, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.aq:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !29
  %i.gd = add i8 %i.gc, -48                       ; 2 uses
  %narrow.i10.i90.i = mul nuw nsw i8 %i.fz, 10
  %i.ge = icmp ult i8 %i.gd, 10
  %i.gf = add i8 %i.gd, %narrow.i10.i90.i         ; 2 uses
  br i1 %i.ge, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i: ; preds = %bb.aq
  %i.gg = icmp ugt i8 %i.fw, 23
  %i.gh = icmp ugt i8 %i.gf, 59
  %or.cond8.i.i = select i1 %i.gg, i1 true, i1 %i.gh, !prof !152
  br i1 %or.cond8.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !153

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i
  %i.gi = zext nneg i8 %i.fw to i64
  %i.gj = zext nneg i8 %i.gf to i64
  %i.gk = mul nuw nsw i64 %i.gi, 60
  %i.gl = add nuw nsw i64 %i.gk, %i.gj
  %i.gm = mul nuw nsw i64 %i.gl, 60
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !29
  %.not.i91.i = icmp eq i8 %i.gp, 58
  br i1 %.not.i91.i, label %bb.as, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !106

bb.as:                                            ; preds = %bb.ar
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !29
  %.not7.i93.i = icmp eq i8 %i.gr, 58
  br i1 %.not7.i93.i, label %bb.at, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !106

bb.at:                                            ; preds = %bb.as
  %i.gs = load i8, ptr %i.gn, align 1, !tbaa !29
  %i.gt = add i8 %i.gs, -48                       ; 2 uses
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.au, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.au:                                            ; preds = %bb.at
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !29
  %i.gx = add i8 %i.gw, -48                       ; 2 uses
  %narrow.i.i94.i = mul nuw nsw i8 %i.gt, 10
  %i.gy = icmp ult i8 %i.gx, 10
  %i.gz = add i8 %i.gx, %narrow.i.i94.i           ; 2 uses
  br i1 %i.gy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i: ; preds = %bb.au
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !29
  %i.hc = add i8 %i.hb, -48                       ; 2 uses
  %i.hd = icmp ult i8 %i.hc, 10
  br i1 %i.hd, label %bb.av, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

bb.av:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29
  %i.hg = add i8 %i.hf, -48                       ; 2 uses
  %narrow.i15.i.i = mul nuw nsw i8 %i.hc, 10
  %i.hh = icmp ult i8 %i.hg, 10
  %i.hi = add i8 %i.hg, %narrow.i15.i.i           ; 2 uses
  br i1 %i.hh, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i: ; preds = %bb.av
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !29
  %i.hl = add i8 %i.hk, -48                       ; 2 uses
  %i.hm = icmp ult i8 %i.hl, 10
  br i1 %i.hm, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !29
  %i.hp = add i8 %i.ho, -48                       ; 2 uses
  %narrow.i18.i.i = mul nuw nsw i8 %i.hl, 10
  %i.hq = icmp ugt i8 %i.hp, 9
  %i.hr = add i8 %i.hp, %narrow.i18.i.i           ; 2 uses
  %i.hs = icmp ugt i8 %i.gz, 23
  %or.cond.i96.i = select i1 %i.hq, i1 true, i1 %i.hs, !prof !156
  %i.ht = icmp ugt i8 %i.hi, 59
  %or.cond11.i.i = select i1 %or.cond.i96.i, i1 true, i1 %i.ht, !prof !152
  %i.hu = icmp ugt i8 %i.hr, 59
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.hu, !prof !157
  br i1 %or.cond13.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !153

_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i
  %i.hv = zext nneg i8 %i.gz to i64
  %i.hw = zext nneg i8 %i.hi to i64
  %i.hx = mul nuw nsw i64 %i.hv, 60
  %i.hy = add nuw nsw i64 %i.hx, %i.hw
  %i.hz = zext nneg i8 %i.hr to i64
  %i.ia = mul nuw nsw i64 %i.hy, 60
  %i.ib = add nuw nsw i64 %i.ia, %i.hz
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i
  %.sroa.0113.0.i = phi i64 [ %i.fl, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i ], [ %i.gm, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ], [ %i.ib, %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ]
  %i.ic = load i64, ptr %6, align 8, !tbaa !72
  %i.id = add nsw i64 %i.ic, %.sroa.0113.0.i
  %i.ie = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.id, i64 %i.cg) ; 2 uses
  %i.if = extractvalue { i64, i1 } %i.ie, 1
  %i.ig = extractvalue { i64, i1 } %i.ie, 0       ; 7 uses
  br i1 %i.if, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %bb.ax, !prof !140

bb.ax:                                            ; preds = %bb.aw
  %i.ih = icmp samesign ult i64 %.064.i, 20
  br i1 %i.ih, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  switch i32 %3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i
    i32 1, label %.split14.i101.i
    i32 2, label %.split.i97.i
  ]

.split14.i101.i:                                  ; preds = %bb.ay
  %i.ii = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  br i1 %i.ij, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i, !prof !144

.split.i97.i:                                     ; preds = %bb.ay
  %i.il = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0
  br i1 %i.im, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i, !prof !144

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i: ; preds = %bb.ay
  %i.io = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000000) ; 2 uses
  %i.ip = extractvalue { i64, i1 } %i.io, 1
  %i.iq = extractvalue { i64, i1 } %i.io, 0
  br i1 %i.ip, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i, !prof !144

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i, %.split.i97.i, %.split14.i101.i, %bb.ay
  %.pn25.i.i8.i99.i = phi i64 [ %i.ik, %.split14.i101.i ], [ %i.iq, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i ], [ %i.in, %.split.i97.i ], [ %i.ig, %bb.ay ]
  store i64 %.pn25.i.i8.i99.i, ptr %4, align 8, !tbaa !72
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i

bb.az:                                            ; preds = %bb.ax
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !29
  %.not77.i = icmp eq i8 %i.is, 46
  br i1 %.not77.i, label %bb.ba, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i, !prof !106

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.iu = add nsw i64 %.064.i, -20                ; 3 uses
  switch i32 %3, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i [
    i32 1, label %bb.bb
    i32 2, label %bb.bc
    i32 3, label %bb.bd
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.iv = icmp samesign ugt i64 %.064.i, 23
  br i1 %i.iv, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bd, !prof !140

bb.bc:                                            ; preds = %bb.ba
  %i.iw = icmp samesign ugt i64 %.064.i, 26
  br i1 %i.iw, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bd, !prof !140

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.pn.i.i = phi i64 [ 3, %bb.bb ], [ 6, %bb.bc ], [ 9, %bb.ba ] ; 2 uses
  %i.ix = icmp eq i64 %.pn.i.i, %i.iu
  br i1 %i.ix, label %.split.i, label %bb.be, !prof !106

.split.i:                                         ; preds = %bb.bd
  %i.iy = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.it, i64 noundef range(i64 0, -20) %i.iu, ptr noundef nonnull %i.b)
  br i1 %i.iy, label %bb.bg, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, !prof !158

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.iz = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.it, i64 noundef range(i64 0, -20) %i.iu, ptr noundef nonnull %i.a)
  br i1 %i.iz, label %bb.bf, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, !prof !106

bb.bf:                                            ; preds = %bb.be
  %reass.sub = sub i64 %.pn.i.i, %.064.i
  %switch.tableidx = add i64 %reass.sub, 19       ; 2 uses
  %i.ja = icmp ult i64 %switch.tableidx, 8
  br i1 %i.ja, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread132.i

switch.lookup:                                    ; preds = %bb.bf
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.jb = load i32, ptr %i.a, align 4, !tbaa !3
  %i.jc = mul i32 %i.jb, %switch.load
  store i32 %i.jc, ptr %i.b, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread132.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread132.i: ; preds = %bb.bf, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.bg

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i

bb.bg:                                            ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread132.i, %.split.i
  switch i32 %3, label %default.unreachable.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i
    i32 1, label %.split14.i109.i
    i32 2, label %.split.i105.i
  ]

.split14.i109.i:                                  ; preds = %bb.bg
  %i.jd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000) ; 2 uses
  %i.je = extractvalue { i64, i1 } %i.jd, 1
  br i1 %i.je, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bh, !prof !144

.split.i105.i:                                    ; preds = %bb.bg
  %i.jf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bh, !prof !144

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i: ; preds = %bb.bg
  %i.jh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000000) ; 2 uses
  %i.ji = extractvalue { i64, i1 } %i.jh, 1
  br i1 %i.ji, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bh, !prof !144

default.unreachable.i:                            ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i, %.split.i105.i, %.split14.i109.i
  %.pn.i = phi { i64, i1 } [ %i.jd, %.split14.i109.i ], [ %i.jh, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i ], [ %i.jf, %.split.i105.i ]
  %.pn25.i.i8.i107.i = extractvalue { i64, i1 } %.pn.i, 0
  %i.jj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.jk = zext i32 %i.jj to i64
  %i.jl = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pn25.i.i8.i107.i, i64 %i.jk) ; 2 uses
  %i.jm = extractvalue { i64, i1 } %i.jl, 1
  %i.jn = extractvalue { i64, i1 } %i.jl, 0
  store i64 %i.jn, ptr %4, align 8
  %not..i = xor i1 %i.jm, true
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i: ; preds = %bb.bh, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i, %.split.i105.i, %.split14.i109.i, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, %.split.i, %bb.bc, %bb.bb, %bb.ba
  %.0.i = phi i1 [ false, %bb.bb ], [ false, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i ], [ %not..i, %bb.bh ], [ false, %.split.i ], [ false, %bb.ba ], [ false, %bb.bc ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i ], [ false, %.split.i105.i ], [ false, %.split14.i109.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i: ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, %bb.az, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i, %.split.i97.i, %.split14.i101.i, %bb.aw, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, %bb.av, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i, %bb.au, %bb.at, %bb.as, %bb.ar, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, %bb.aq, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.af, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, %bb.aa, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i, %bb.z, %bb.y, %bb.u, %bb.t
  %.3.i = phi i1 [ false, %bb.af ], [ false, %bb.t ], [ false, %.split14.i101.i ], [ false, %bb.aq ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aa ], [ %.0.i, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i ], [ false, %bb.az ], [ false, %bb.aw ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i98.i ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i102.i ], [ false, %.split.i97.i ], [ false, %bb.u ], [ false, %bb.z ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i ], [ false, %bb.y ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ap ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i ], [ false, %bb.ao ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.au ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i ], [ false, %bb.at ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i ], [ false, %bb.av ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, %bb.h, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, %bb.i, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, %.split.i.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, %bb.n, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i
  %.5.i = phi i1 [ false, %bb.a ], [ %.3.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit103.i ], [ false, %bb.n ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ], [ true, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i ], [ false, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ false, %.split.i.i ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.i ], [ false, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.g ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ]
  ret i1 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZNK5arrow8internal12_GLOBAL__N_113ISO8601Parser4kindEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.7
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !29
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %bb.b, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !146

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !29
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add i8 %i.h, %narrow.i                   ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !146

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

bb.d:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %narrow.i10 = mul nuw nsw i8 %i.m, 10
  %i.r = icmp ult i8 %i.q, 10
  %i.s = add i8 %i.q, %narrow.i10                 ; 2 uses
  br i1 %i.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !152
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !153

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !72
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !29
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %.not136 = icmp eq i64 %1, 1
  br i1 %.not136, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !29
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %.not137 = icmp eq i64 %1, 2
  br i1 %.not137, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !29
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %.not138 = icmp eq i64 %1, 3
  br i1 %.not138, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !29
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %.not139 = icmp eq i64 %1, 4
  br i1 %.not139, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !29
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %.not140 = icmp eq i64 %1, 5
  br i1 %.not140, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !29
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %.not141 = icmp eq i64 %1, 6
  br i1 %.not141, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %.not142 = icmp eq i64 %1, 7
  br i1 %.not142, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not143 = icmp eq i64 %1, 8
  br i1 %.not143, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !29
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.critedge, label %bb.u, !prof !140

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !29
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.critedge, label %bb.v, !prof !156

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
  %i.bp = zext nneg i8 %i.bm to i32
  %i.bq = add i32 %i.bo, %i.bp                    ; 2 uses
  %.not147 = icmp ult i32 %i.bq, %i.bo
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bo)
  br i1 %.not147, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.146, %bb.v ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.t, %bb.v, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.w
  %.10 = phi i1 [ false, %bb.b ], [ true, %bb.w ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ], [ false, %bb.u ]
  ret i1 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8
end_hunk_0
