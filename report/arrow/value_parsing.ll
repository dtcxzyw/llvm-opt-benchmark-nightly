begin_hunk_0_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserEEEvRS0_PT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #20
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserD0Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserD2Ev.exit

_ZN5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserD2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_2
begin_hunk_3_@_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
bb.f:                                             ; preds = %bb.e
  %i.j = add nuw i64 %2, 1                        ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !138

.noexc9.i.i:                                      ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #24
end_hunk_3
begin_hunk_4_@_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !139
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ab, i32 1)
end_hunk_4
begin_hunk_5_@_ZNK5arrow8internal12_GLOBAL__N_123StrptimeTimestampParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.bu = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bt, i64 1000) ; 2 uses
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  %i.bw = extractvalue { i64, i1 } %i.bu, 0
  br i1 %i.bv, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !142

bb.l:                                             ; preds = %bb.j
  %i.bx = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bt, i64 1000000) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0
  br i1 %i.by, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.j
  %i.ca = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.bt, i64 1000000000) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  br i1 %i.cb, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %bb.l, %bb.k, %bb.j
  %.pn25.i.i8.i.i = phi i64 [ %i.bw, %bb.k ], [ %i.cc, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ %i.bz, %bb.l ], [ %i.bt, %bb.j ]
end_hunk_5
begin_hunk_6_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv:_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8internal12_GLOBAL__N_113ISO8601ParserEEEvRS0_PT_.exit
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  ret void
}

end_hunk_6
begin_hunk_7_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8internal12_GLOBAL__N_113ISO8601ParserESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

end_hunk_7
begin_hunk_8_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %6 = alloca %"class.std::chrono::duration", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = icmp ult i64 %2, 10
  br i1 %i.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
end_hunk_8
begin_hunk_9_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.h = load i8, ptr %1, align 1, !tbaa !29
  %i.i = add i8 %i.h, -48                         ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  br i1 %i.j, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.i, 10
end_hunk_9
begin_hunk_10_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.aa = icmp ult i8 %i.y, 10
  %i.ab = zext nneg i8 %i.y to i16
  %i.ac = add nuw nsw i16 %i.z, %i.ab             ; 4 uses
  br i1 %i.aa, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %i.af = add i8 %i.ae, -48                       ; 2 uses
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 6
end_hunk_10
begin_hunk_11_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %narrow.i8.i.i = mul nuw nsw i8 %i.af, 10
  %i.ak = icmp ult i8 %i.aj, 10
  %i.al = add i8 %i.aj, %narrow.i8.i.i            ; 6 uses
  br i1 %i.ak, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !29
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !143

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 9
end_hunk_11
begin_hunk_12_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.au = add i8 %i.as, %narrow.i10.i.i           ; 3 uses
  %i.av = add i8 %i.al, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.av, -12
  %or.cond34.not38.i.i = select i1 %i.at, i1 true, i1 %spec.select.i.i.i.i, !prof !144
  %.not8.i.i.i = icmp eq i8 %i.au, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !145
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.j, !prof !145

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.al, 2
end_hunk_12
begin_hunk_13_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bf, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.au
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %bb.l, !prof !146

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bg = zext nneg i16 %i.ac to i32
end_hunk_13
begin_hunk_14_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.cj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = extractvalue { i64, i1 } %i.cj, 0
  br i1 %i.ck, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.m
  %i.cm = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.cg, i64 1000000000) ; 2 uses
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  %i.co = extractvalue { i64, i1 } %i.cm, 0
  br i1 %i.cn, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %bb.o, %bb.n, %bb.m
  %.pn25.i.i8.i.i = phi i64 [ %i.ci, %bb.n ], [ %i.co, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ %i.cl, %bb.o ], [ %i.cg, %bb.m ]
end_hunk_14
begin_hunk_15_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  switch i8 %i.cq, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit [
    i8 32, label %bb.q
    i8 84, label %bb.q
  ], !prof !147

bb.q:                                             ; preds = %bb.p, %bb.p
  %.not76.i = icmp eq ptr %5, null                ; 4 uses
end_hunk_15
begin_hunk_16_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dh = add i8 %i.dg, -48                       ; 2 uses
  %i.di = icmp ult i8 %i.dh, 10
  br i1 %i.di, label %bb.w, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.w:                                             ; preds = %bb.v
  %i.dj = add i8 %i.db, -48                       ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.dk = icmp ugt i8 %i.dj, 9
  %i.dl = add i8 %narrow.i.i.i, %i.dj             ; 2 uses
  %i.dm = icmp ugt i8 %i.dl, 23
  %or.cond.i.i = select i1 %i.dk, i1 true, i1 %i.dm, !prof !148
  br i1 %or.cond.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %bb.x, !prof !148

bb.x:                                             ; preds = %bb.w
  %i.dn = zext nneg i8 %i.dl to i64
end_hunk_17
begin_hunk_18_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !29
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 10
  br i1 %i.dx, label %bb.ab, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.ab:                                            ; preds = %bb.aa
  %i.dy = add i8 %i.de, -48                       ; 2 uses
  %narrow.i.i79.i = mul nuw nsw i8 %i.dw, 10
  %i.dz = icmp ult i8 %i.dy, 10
  %i.ea = add i8 %narrow.i.i79.i, %i.dy           ; 2 uses
  br i1 %i.dz, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i: ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 3
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !29
  %i.ed = add i8 %i.ec, -48                       ; 2 uses
  %i.ee = icmp ult i8 %i.ed, 10
  br i1 %i.ee, label %bb.ac, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.ac:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i80.i
  %i.ef = add i8 %i.db, -48                       ; 2 uses
  %narrow.i8.i81.i = mul nuw nsw i8 %i.ed, 10
  %i.eg = icmp ult i8 %i.ef, 10
  %i.eh = add i8 %narrow.i8.i81.i, %i.ef          ; 2 uses
  br i1 %i.eg, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.ac
  %i.ei = icmp ugt i8 %i.ea, 23
  %i.ej = icmp ugt i8 %i.eh, 59
  %or.cond6.i.i = select i1 %i.ei, i1 true, i1 %i.ej, !prof !149
  br i1 %or.cond6.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %bb.ad, !prof !150

bb.ad:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ek = zext nneg i8 %i.ea to i64
end_hunk_18
begin_hunk_19_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ey = load i64, ptr %6, align 8, !tbaa !151
  %i.ez = sub nsw i64 0, %i.ey
  store i64 %i.ez, ptr %6, align 8, !tbaa !151
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
end_hunk_19
begin_hunk_20_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !29
  %i.fc = add i8 %i.fb, -48                       ; 2 uses
  %i.fd = icmp ult i8 %i.fc, 10
  br i1 %i.fd, label %bb.ao, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.ao:                                            ; preds = %bb.an
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_20
begin_hunk_21_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.fh = icmp ugt i8 %i.fg, 9
  %i.fi = add i8 %i.fg, %narrow.i.i83.i           ; 2 uses
  %i.fj = icmp ugt i8 %i.fi, 23
  %or.cond.i84.i = select i1 %i.fh, i1 true, i1 %i.fj, !prof !148
  br i1 %or.cond.i84.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i, !prof !148

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit85.i: ; preds = %bb.ao
  %i.fk = zext nneg i8 %i.fi to i64
end_hunk_21
begin_hunk_22_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !29
  %i.fq = add i8 %i.fp, -48                       ; 2 uses
  %i.fr = icmp ult i8 %i.fq, 10
  br i1 %i.fr, label %bb.ar, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.ar:                                            ; preds = %bb.aq
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_22
begin_hunk_23_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %narrow.i.i88.i = mul nuw nsw i8 %i.fq, 10
  %i.fv = icmp ult i8 %i.fu, 10
  %i.fw = add i8 %i.fu, %narrow.i.i88.i           ; 2 uses
  br i1 %i.fv, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i: ; preds = %bb.ar
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !29
  %i.fz = add i8 %i.fy, -48                       ; 2 uses
  %i.ga = icmp ult i8 %i.fz, 10
  br i1 %i.ga, label %bb.as, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.as:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i89.i
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 15
end_hunk_23
begin_hunk_24_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %narrow.i10.i90.i = mul nuw nsw i8 %i.fz, 10
  %i.ge = icmp ult i8 %i.gd, 10
  %i.gf = add i8 %i.gd, %narrow.i10.i90.i         ; 2 uses
  br i1 %i.ge, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i: ; preds = %bb.as
  %i.gg = icmp ugt i8 %i.fw, 23
  %i.gh = icmp ugt i8 %i.gf, 59
  %or.cond8.i.i = select i1 %i.gg, i1 true, i1 %i.gh, !prof !149
  br i1 %or.cond8.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !150

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i
  %i.gi = zext nneg i8 %i.fw to i64
end_hunk_24
begin_hunk_25_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.gs = load i8, ptr %i.gn, align 1, !tbaa !29
  %i.gt = add i8 %i.gs, -48                       ; 2 uses
  %i.gu = icmp ult i8 %i.gt, 10
  br i1 %i.gu, label %bb.aw, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.aw:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_25
begin_hunk_26_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %narrow.i.i94.i = mul nuw nsw i8 %i.gt, 10
  %i.gy = icmp ult i8 %i.gx, 10
  %i.gz = add i8 %i.gx, %narrow.i.i94.i           ; 2 uses
  br i1 %i.gy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i: ; preds = %bb.aw
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !29
  %i.hc = add i8 %i.hb, -48                       ; 2 uses
  %i.hd = icmp ult i8 %i.hc, 10
  br i1 %i.hd, label %bb.ax, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

bb.ax:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i95.i
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 15
end_hunk_26
begin_hunk_27_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %narrow.i15.i.i = mul nuw nsw i8 %i.hc, 10
  %i.hh = icmp ult i8 %i.hg, 10
  %i.hi = add i8 %i.hg, %narrow.i15.i.i           ; 2 uses
  br i1 %i.hh, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i: ; preds = %bb.ax
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !29
  %i.hl = add i8 %i.hk, -48                       ; 2 uses
  %i.hm = icmp ult i8 %i.hl, 10
  br i1 %i.hm, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 18
end_hunk_27
begin_hunk_28_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.hq = icmp ugt i8 %i.hp, 9
  %i.hr = add i8 %i.hp, %narrow.i18.i.i           ; 2 uses
  %i.hs = icmp ugt i8 %i.gz, 23
  %or.cond.i96.i = select i1 %i.hq, i1 true, i1 %i.hs, !prof !153
  %i.ht = icmp ugt i8 %i.hi, 59
  %or.cond11.i.i = select i1 %or.cond.i96.i, i1 true, i1 %i.ht, !prof !149
  %i.hu = icmp ugt i8 %i.hr, 59
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.hu, !prof !154
  br i1 %or.cond13.i.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !150

_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i
  %i.hv = zext nneg i8 %i.gz to i64
end_hunk_28
begin_hunk_29_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.ie = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.id, i64 %i.cg) ; 2 uses
  %i.if = extractvalue { i64, i1 } %i.ie, 1
  %i.ig = extractvalue { i64, i1 } %i.ie, 0       ; 7 uses
  br i1 %i.if, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %bb.az, !prof !138

bb.az:                                            ; preds = %bb.ay
  %i.ih = icmp samesign ult i64 %.064.i, 20
end_hunk_29
begin_hunk_30_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
  %i.ii = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000) ; 2 uses
  %i.ij = extractvalue { i64, i1 } %i.ii, 1
  %i.ik = extractvalue { i64, i1 } %i.ii, 0
  br i1 %i.ij, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i97.i, !prof !142

bb.bc:                                            ; preds = %bb.ba
  %i.il = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0
  br i1 %i.im, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i97.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i100.i: ; preds = %bb.ba
  %i.io = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000000) ; 2 uses
  %i.ip = extractvalue { i64, i1 } %i.io, 1
  %i.iq = extractvalue { i64, i1 } %i.io, 0
  br i1 %i.ip, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeElPl.exit101.i, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i97.i, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.thread.i97.i: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i100.i, %bb.bc, %bb.bb, %bb.ba
  %.pn25.i.i8.i98.i = phi i64 [ %i.ik, %bb.bb ], [ %i.iq, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i100.i ], [ %i.in, %bb.bc ], [ %i.ig, %bb.ba ]
end_hunk_30
begin_hunk_31_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a

bb.bf:                                            ; preds = %bb.be
  %i.iv = icmp samesign ugt i64 %.064.i, 23
  br i1 %i.iv, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bh, !prof !138

bb.bg:                                            ; preds = %bb.be
  %i.iw = icmp samesign ugt i64 %.064.i, 26
  br i1 %i.iw, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bh, !prof !138

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.pn.i.i = phi i64 [ 3, %bb.bf ], [ 6, %bb.bg ], [ 9, %bb.be ] ; 2 uses
end_hunk_31
begin_hunk_32_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a

bb.bi:                                            ; preds = %bb.bh
  %i.iy = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.it, i64 noundef range(i64 0, -20) %i.iu, ptr noundef nonnull %i.b)
  br i1 %i.iy, label %bb.bl, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, !prof !155

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
end_hunk_32
begin_hunk_33_@_ZNK5arrow8internal12_GLOBAL__N_113ISO8601ParserclEPKcmNS_8TimeUnit4typeEPlPb:bb.a
bb.bm:                                            ; preds = %bb.bl
  %i.jd = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000) ; 2 uses
  %i.je = extractvalue { i64, i1 } %i.jd, 1
  br i1 %i.je, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bo, !prof !142

bb.bn:                                            ; preds = %bb.bl
  %i.jf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000) ; 2 uses
  %i.jg = extractvalue { i64, i1 } %i.jf, 1
  br i1 %i.jg, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bo, !prof !142

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i106.i: ; preds = %bb.bl
  %i.jh = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.ig, i64 1000000000) ; 2 uses
  %i.ji = extractvalue { i64, i1 } %i.jh, 1
  br i1 %i.ji, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread.i, label %bb.bo, !prof !142

default.unreachable.i:                            ; preds = %bb.bl
  unreachable
end_hunk_33
begin_hunk_34_@_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_:bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !29
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !143

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_34
begin_hunk_35_@_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_:bb.a
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add i8 %i.h, %narrow.i                   ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !143

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_35
begin_hunk_36_@_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_:bb.a
_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !149
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !150

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
end_hunk_36
begin_hunk_37_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.thread, label %bb.u, !prof !138

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !29
end_hunk_37
begin_hunk_38_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a
  %.not145 = icmp ne i64 %i.bg, 1
  %i.bn = icmp ugt i8 %i.bm, 9
  %or.cond = or i1 %.not145, %i.bn
  br i1 %or.cond, label %.thread, label %bb.v, !prof !153

bb.v:                                             ; preds = %bb.u
  %i.bo = mul nuw i32 %i.bj, 10                   ; 3 uses
end_hunk_38
begin_hunk_39_@llvm.umax.i32
!133 = distinct !{!133, !36, !104, !103}
!134 = distinct !{!134, !36, !103, !104}
!135 = distinct !{!135, !36, !104, !103}
!136 = !{!137, !25, i64 8}
!137 = !{!"_ZTSSt9type_info", !25, i64 8}
!138 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!139 = !{!140, !4, i64 20}
!140 = !{!"_ZTS2tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !27, i64 40, !25, i64 48}
!141 = !{!140, !4, i64 16}
!142 = !{!"branch_weights", !"expected", i32 1430940, i32 2146052708}
!143 = !{!"branch_weights", i32 2146410443, i32 1073205}
!144 = !{!"branch_weights", i32 6436012, i32 -6436014}
!145 = !{!"branch_weights", i32 8579205, i32 -8579208}
!146 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!147 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!148 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!149 = !{!"branch_weights", i32 6003000, i32 -294967296}
!150 = !{!"branch_weights", i32 0, i32 -2147483648}
!151 = !{!152, !27, i64 0}
!152 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1EEEE", !27, i64 0}
!153 = !{!"branch_weights", i32 4001, i32 4000000}
!154 = !{!"branch_weights", i32 7818360, i32 -388717296}
!155 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_39
