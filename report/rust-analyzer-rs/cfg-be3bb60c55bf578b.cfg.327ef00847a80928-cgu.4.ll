inline.NumInlined: 149
inline.NumDeleted: 68
begin_hunk_0_@_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr4fold:bb.a
  %.sroa.01.0.i39 = phi i8 [ %.sroa.0.0.i6, %bb.d ], [ 1, %bb.c ]
  %.sroa.0.01838 = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.01838, i64 24 ; 2 uses
  %i.o = trunc nuw i8 %.sroa.01.0.i39 to i1
  br i1 %i.o, label %bb.e, label %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4fold0B9_.exit

bb.e:                                             ; preds = %.lr.ph40
  %i.p = tail call noundef i8 @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01838, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !54, !inline_history !59
  br label %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4fold0B9_.exit

_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4fold0B9_.exit: ; preds = %.lr.ph40, %bb.e
  %.sroa.0.0.i6 = phi i8 [ %i.p, %bb.e ], [ 0, %.lr.ph40 ] ; 3 uses
  %i.q = icmp eq i8 %.sroa.0.0.i6, 2
  br i1 %i.q, label %common.ret46, label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.u, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %common.ret46, label %.lr.ph

bb.g:                                             ; preds = %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit
  %i.x = icmp eq ptr %i.y, %i.v
  br i1 %i.x, label %common.ret46, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.01.0.i336 = phi i8 [ %.sroa.0.0.i10, %bb.g ], [ 0, %bb.f ]
  %.sroa.013.035 = phi ptr [ %i.y, %bb.g ], [ %i.s, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.035, i64 24 ; 2 uses
  %i.z = trunc nuw i8 %.sroa.01.0.i336 to i1
  br i1 %i.z, label %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.aa = tail call noundef i8 @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.013.035, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2), !noalias !60, !inline_history !65
  br label %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit

_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit: ; preds = %.lr.ph, %bb.h
  %.sroa.0.0.i10 = phi i8 [ %i.aa, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ab = icmp eq i8 %.sroa.0.0.i10, 2
  br i1 %i.ab, label %common.ret46, label %bb.g

common.ret46:                                     ; preds = %bb.a, %bb.b, %bb.c, %bb.f, %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4fold0B9_.exit, %bb.d, %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit, %bb.g, %bb.i
  %common.ret46.op = phi i8 [ %.sroa.0.1, %bb.i ], [ 2, %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4fold0B9_.exit ], [ 0, %bb.f ], [ %i.f, %bb.b ], [ 2, %bb.a ], [ 1, %bb.c ], [ %.sroa.0.0.i6, %bb.d ], [ %.sroa.0.0.i10, %bb.g ], [ 2, %_RNCNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB7_7CfgExpr4folds_0B9_.exit ]
  ret i8 %common.ret46.op

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %i.ae = tail call noundef i8 @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr4fold(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) ; 2 uses
  %.not = icmp eq i8 %i.ae, 2
  %i.af = xor i8 %i.ae, 1
  %.sroa.0.1 = select i1 %.not, i8 2, i8 %i.af
  br label %common.ret46
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree4iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.d = load i64, ptr %i.c, align 8, !range !53, !noundef !5
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr %.0.val, i8 %.28.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 1
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr i8, ptr %.0.val, i64 %i.c  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 5 uses
  %i.h = zext i8 %.28.val to i64                  ; 3 uses
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp eq i64 %i.g, %i.h
  br i1 %i.j, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.i, %i.g
  br i1 %.not.i, label %bb.c, label %.split3.i

.split3.i:                                        ; preds = %bb.b
  %i.k = icmp eq i8 %.28.val, 0
  br i1 %i.k, label %.split.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !66, !noalias !69, !noundef !5
  %i.n = icmp sgt i8 %i.m, -65
  br i1 %i.n, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c, %.split3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit: ; preds = %.split.i, %bb.a
  %.sroa.8.0 = phi i64 [ %i.g, %bb.a ], [ %i.h, %.split.i ]
  %.sroa.7.0 = phi ptr [ %i.e, %bb.a ], [ %i.o, %.split.i ]
  store ptr %i.e, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  ret void

bb.d:                                             ; preds = %bb.c, %.split3.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, i64 noundef 0, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [88 x i8], align 8                ; 6 uses
  %i.i = alloca [88 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [88 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [88 x i8], align 8                ; 6 uses
  %i.v = alloca [88 x i8], align 8                ; 6 uses
  %i.w = alloca [88 x i8], align 8                ; 9 uses
  %i.x = alloca [88 x i8], align 8                ; 7 uses
  %i.y = alloca [88 x i8], align 8                ; 11 uses
  %i.z = alloca [24 x i8], align 8                ; 23 uses
  %i.aa = alloca [40 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [88 x i8], align 8               ; 10 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.ae = load i64, ptr %i.ac, align 8, !range !71, !noundef !5 ; 3 uses
  %.not51 = icmp eq i64 %i.ae, -2
  br i1 %.not51, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.cd

bb.b:                                             ; preds = %bb.a
  %.not52 = icmp eq i64 %i.ae, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !range !72 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 2                    ; 2 uses
  %or.cond = select i1 %.not52, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.c, label %bb.cc

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  %i.aj = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ab)
          to label %bb.e unwind label %bb.d       ; 15 uses

bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %.val90 = load ptr, ptr %i.ab, align 8, !alias.scope !13, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs4kMRW8zVVbM_3cfg(ptr nonnull %.val90) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

bb.e:                                             ; preds = %bb.c
  store ptr %i.aj, ptr %i.ad, align 8
  %.val = load ptr, ptr %i.ab, align 8, !alias.scope !13, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = ptrtoint ptr %.val to i64
  %i.am = and i64 %i.al, 1
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %.thread271, label %bb.f

.thread271:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.an)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !73
  store ptr %i.aq, ptr %i.f, align 8, !noalias !73
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8, !noalias !73
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %bb.g, label %.noexc107, !prof !9

bb.g:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %.noexc107 unwind label %bb.h

.noexc107:                                        ; preds = %bb.g, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !73
  store ptr %i.aq, ptr %i.e, align 8, !noalias !73
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs4kMRW8zVVbM_3cfg.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.noexc107
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.pre = load i64, ptr %i.ac, align 8, !range !71 ; 2 uses
  %.not54 = icmp eq i64 %.pre, -2
  br i1 %.not54, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread, label %.thread223

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs4kMRW8zVVbM_3cfg.exit: ; preds = %.noexc107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !73
  %.pre212 = load i64, ptr %i.ac, align 8, !range !71 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.not55 = icmp eq i64 %.pre212, -2
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs4kMRW8zVVbM_3cfg.exit
  %.pre262 = load i32, ptr %i.af, align 8, !range !72 ; 2 uses
  %i.au = icmp ne i64 %.pre212, -1
  %i.av = icmp eq i32 %.pre262, 2
  %or.cond7 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread271, %bb.k, %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt5IdentECs4kMRW8zVVbM_3cfg.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %bb.l unwind label %.thread200

bb.k:                                             ; preds = %bb.i
  %.val104 = load ptr, ptr %i.ai, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.pre262, ptr %.val104)
          to label %bb.j unwind label %.thread200

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162: ; preds = %.thread241, %.thread234, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174
  %.sroa.048.0 = phi i8 [ %.sroa.048.5250, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174 ], [ %.sroa.048.2.ph, %.thread241 ], [ %.sroa.048.1238, %.thread234 ]
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174 ], [ %lpad.thr_comm, %.thread241 ], [ %.pn73239, %.thread234 ] ; 2 uses
  %i.aw = trunc nuw i8 %.sroa.048.0 to i1
  br i1 %i.aw, label %bb.ca, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread

.thread200:                                       ; preds = %bb.j, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.l:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.y, align 8, !range !71, !noundef !5
  switch i64 %i.ay, label %bb.m [
    i64 -2, label %bb.ak
    i64 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ar unwind label %.thread241

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !range !72, !noundef !5 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !range !76
  %i.be = icmp eq i32 %i.bd, 61
  %or.cond41 = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %or.cond41, label %bb.o, label %.thread256

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  %i.bg = load i8, ptr %i.bf, align 4, !range !77, !noundef !5
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa)
          to label %bb.r unwind label %bb.q

.thread241:                                       ; preds = %bb.m, %bb.au, %bb.aw, %bb.bf, %bb.bj, %bb.as
  %.sroa.048.2.ph = phi i8 [ 1, %bb.as ], [ 1, %bb.aw ], [ 0, %bb.bf ], [ 1, %bb.au ], [ 0, %bb.bj ], [ 1, %bb.m ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162

bb.q:                                             ; preds = %bb.p, %bb.w, %bb.an, %bb.t
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread234

bb.r:                                             ; preds = %bb.p
  %i.bi = load i64, ptr %i.x, align 8, !range !71, !noundef !5 ; 2 uses
  %.not58 = icmp eq i64 %i.bi, -2
  br i1 %.not58, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.not59 = icmp eq i64 %i.bi, -1
  br i1 %.not59, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7198.0.copyload = load ptr, ptr %.sroa.7198.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.sroa.5.0.copyload, ptr %.sroa.7198.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit113 unwind label %bb.q

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit113: ; preds = %bb.t
  %.not60 = icmp eq i32 %.sroa.5.0.copyload, 1
  br i1 %.not60, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.thread256

bb.v:                                             ; preds = %bb.s, %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.w

bb.w:                                             ; preds = %bb.o, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  %i.bj = load i64, ptr %i.w, align 8, !range !71, !noundef !5 ; 3 uses
  %.not61 = icmp eq i64 %i.bj, -2
  br i1 %.not61, label %.thread204, label %bb.y

.thread204:                                       ; preds = %bb.x
  store i64 0, ptr %0, align 8
  br label %.noexc122

bb.y:                                             ; preds = %bb.x
  %.not62 = icmp eq i64 %i.bj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !range !72 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0                    ; 2 uses
  %or.cond12 = select i1 %.not62, i1 %i.bm, i1 false
  br i1 %or.cond12, label %bb.z, label %bb.am

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.bn, align 8 ; 5 uses
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %.sroa.6186.0.copyload = load i8, ptr %.sroa.6186.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ag, %bb.ab
  %.sroa.048.3 = phi i8 [ 0, %bb.ag ], [ 1, %bb.ab ]
end_hunk_0
begin_hunk_1_@_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr:bb.a

bb.ab:                                            ; preds = %bb.af, %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit, %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.bp = load i64, ptr %i.v, align 8, !range !71, !alias.scope !78, !noundef !5
  %cond208 = icmp eq i64 %i.bp, -1
  br i1 %cond208, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit

bb.ad:                                            ; preds = %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i = load i32, ptr %i.bq, align 8, !range !72, !alias.scope !81, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.i.i = load ptr, ptr %i.br, align 8, !alias.scope !81
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i, ptr %.val1.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.ae unwind label %bb.ab

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit
  %i.bs = load i64, ptr %i.u, align 8, !range !71, !alias.scope !84, !noundef !5
  %cond209 = icmp eq i64 %i.bs, -1
  br i1 %cond209, label %bb.af, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit118

bb.af:                                            ; preds = %bb.ae
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val.i.i115 = load i32, ptr %i.bt, align 8, !range !72, !alias.scope !87, !noundef !5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i.i116 = load ptr, ptr %i.bu, align 8, !alias.scope !87
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i115, ptr %.val1.i.i116)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit118 unwind label %bb.ab

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit118: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.aj, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  invoke fastcc void @_RNvMsb_Cs4dcH4YgJDq_2ttNtB5_7Literal15text_and_suffix(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr nonnull %.sroa.0.0.copyload, i8 %.sroa.6186.0.copyload)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit118, %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #21
          to label %bb.aa unwind label %bb.al

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit118
  %i.bw = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bz = invoke noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.by)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.aj, ptr %i.ca, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.bz, ptr %.sroa.443.0..sroa_idx, align 8
  store i64 1, ptr %i.z, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt7LiteralECs4kMRW8zVVbM_3cfg(ptr nonnull %.sroa.0.0.copyload)
          to label %.thread245 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.thread234

.thread245:                                       ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bn

.thread256:                                       ; preds = %bb.n, %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.cc, align 8
  %.sroa.447.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aj, ptr %.sroa.447.0..sroa_idx257, align 8
  store i64 1, ptr %i.z, align 8
  br label %bb.bn

bb.ak:                                            ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.cd, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aj, ptr %.sroa.447.0..sroa_idx, align 8
  store i64 1, ptr %i.z, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166

bb.al:                                            ; preds = %.thread234, %bb.cb, %bb.aa, %bb.d, %bb.ca, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174, %bb.bm, %bb.bi, %.body, %bb.ag
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.am:                                            ; preds = %bb.y
  store i64 0, ptr %0, align 8
  %i.cf = icmp ne i64 %i.bj, -1
  %or.cond24 = select i1 %i.cf, i1 true, i1 %i.bm
  br i1 %or.cond24, label %.noexc122, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val98 = load ptr, ptr %i.cg, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.bl, ptr %.val98)
          to label %.noexc122 unwind label %bb.q

.noexc122:                                        ; preds = %bb.am, %bb.an, %.thread204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ch = ptrtoint ptr %i.aj to i64
  %i.ci = and i64 %i.ch, 1
  %.not.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit, label %bb.ao

bb.ao:                                            ; preds = %.noexc122
  %i.cj = getelementptr i8, ptr %i.aj, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.ck = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.cj), !noalias !90
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 %i.cl ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !90
  store ptr %i.cm, ptr %i.d, align 8, !noalias !90
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8, !noalias !90
  %i.co = icmp eq i64 %i.cn, 2
  br i1 %i.co, label %bb.ap, label %bb.aq, !prof !9

bb.ap:                                            ; preds = %bb.ao
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !90
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90
  store ptr %i.cm, ptr %i.c, align 8, !noalias !90
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !90
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.ar:                                            ; preds = %bb.m
  %i.cp = load i64, ptr %i.r, align 8, !range !71, !alias.scope !93, !noundef !5
  %cond210 = icmp eq i64 %i.cp, -1
  br i1 %cond210, label %bb.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127

bb.as:                                            ; preds = %bb.ar
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i124 = load i32, ptr %i.cq, align 8, !range !72, !alias.scope !96, !noundef !5
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i.i125 = load ptr, ptr %i.cr, align 8, !alias.scope !96
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i124, ptr %.val1.i.i125)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127 unwind label %.thread241

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.cs = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3all10SYMBOL_STR
  br i1 %i.cs, label %bb.bl, label %bb.at

bb.at:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3any10SYMBOL_STR, ptr %i.o, align 8
  %i.ct = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3any10SYMBOL_STR
  br i1 %i.ct, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.bh unwind label %.thread241

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3not10SYMBOL_STR, ptr %i.m, align 8
  %i.cu = icmp eq ptr %i.aj, @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols3not10SYMBOL_STR
  br i1 %i.cu, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.ay unwind label %.thread241

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.z, align 8
  br label %.thread252

.thread252:                                       ; preds = %bb.ax, %bb.bg, %bb.bk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158
  %.sroa.048.6 = phi i8 [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158 ], [ 0, %bb.bk ], [ 0, %bb.bg ], [ 1, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.aj, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_expr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit unwind label %bb.az, !inline_history !99

bb.az:                                            ; preds = %bb.ay, %bb.ba
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.az ], [ %i.cy, %bb.bd ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit: ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %i.cw = load i64, ptr %i.k, align 8, !range !53, !noundef !5
  %.not72 = icmp eq i64 %i.cw, -1
  br i1 %.not72, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
          to label %bb.bc unwind label %bb.az

bb.bb:                                            ; preds = %_RNCNvNtCs4kMRW8zVVbM_3cfg8cfg_expr13next_cfg_exprs_0B5_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cx = invoke fastcc noundef ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit()
          to label %bb.bf unwind label %bb.bd     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #21
          to label %.body unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.da = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cx, ptr %i.da, align 8
  store i64 4, ptr %i.z, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.bg unwind label %.thread241

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.thread252

bb.bh:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.aj, ptr %i.p, align 8
  %i.db = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_7sources7from_fn6FromFnNCNvBS_13next_cfg_exprs_0EEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %bb.bj unwind label %bb.bi     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

bb.bj:                                            ; preds = %bb.bh
  %i.dd = extractvalue { ptr, i64 } %i.db, 0
  %i.de = extractvalue { ptr, i64 } %i.db, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.de, ptr %i.dg, align 8
  store i64 3, ptr %i.z, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.bk unwind label %.thread241

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.thread252

bb.bl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.aj, ptr %i.q, align 8
  %i.dh = invoke { ptr, i64 } @_RINvXsb_NtNtCsbSS6DM8SDEO_5alloc5boxed4iterINtB8_3BoxSNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1B_7sources7from_fn6FromFnNCNvBS_13next_cfg_exprs_0EEBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158 unwind label %bb.bm ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit158: ; preds = %bb.bl
  %i.dj = extractvalue { ptr, i64 } %i.dh, 0
  %i.dk = extractvalue { ptr, i64 } %i.dh, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.dj, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.dk, ptr %i.dm, align 8
  store i64 2, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %.thread252

.thread234:                                       ; preds = %bb.aj, %bb.aa, %bb.q
  %.pn73239 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.q ], [ %i.cb, %bb.aj ], [ %.pn66, %bb.aa ]
  %.sroa.048.1238 = phi i8 [ 1, %bb.q ], [ 0, %bb.aj ], [ %.sroa.048.3, %bb.aa ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i160 = load ptr, ptr %i.dn, align 8, !alias.scope !100
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 1, ptr %.val1.i160)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 unwind label %bb.al

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166: ; preds = %bb.ak, %.thread252, %bb.bn
  %.sroa.048.5248 = phi i8 [ 0, %bb.bn ], [ 0, %bb.ak ], [ %.sroa.048.6, %.thread252 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter4peek(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.bp unwind label %bb.bo

bb.bn:                                            ; preds = %.thread256, %.thread245
  %i.do = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i164 = load ptr, ptr %i.do, align 8, !alias.scope !103
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ba, ptr %.val1.i164)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166 unwind label %bb.bo

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174: ; preds = %bb.bt, %bb.bo
  %.sroa.048.5250 = phi i8 [ %.sroa.048.5251, %bb.bo ], [ %.sroa.048.5248, %bb.bt ]
  %.pn81 = phi { ptr, i32 } [ %i.dp, %bb.bo ], [ %i.dx, %bb.bt ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 unwind label %bb.al

bb.bo:                                            ; preds = %.invoke, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166
  %.sroa.048.5251 = phi i8 [ %.sroa.048.5248, %.invoke ], [ %.sroa.048.5248, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166 ], [ 0, %bb.bn ]
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174

bb.bp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit166
  %i.dq = load i64, ptr %i.i, align 8, !range !71, !noundef !5 ; 2 uses
  %.not79 = icmp eq i64 %i.dq, -2
  br i1 %.not79, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.not80 = icmp eq i64 %i.dq, -1                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !range !72 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 1
  %or.cond29 = select i1 %.not80, i1 %i.dt, i1 false
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !range !76
  %i.dw = icmp eq i32 %i.dv, 44
  %or.cond87 = select i1 %or.cond29, i1 %i.dw, i1 false
  br i1 %or.cond87, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %.not80, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.bu unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bv, %bb.bs
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit174

bb.bu:                                            ; preds = %bb.bs
  %i.dy = load i64, ptr %i.h, align 8, !range !71, !alias.scope !106, !noundef !5
  %cond211 = icmp eq i64 %i.dy, -1
  br i1 %cond211, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.dz = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i175 = load i32, ptr %i.dz, align 8, !range !72, !alias.scope !109, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i.i176 = load ptr, ptr %i.ea, align 8, !alias.scope !109
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.val.i.i175, ptr %.val1.i.i176)
          to label %bb.bw unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.invoke

.invoke:                                          ; preds = %bb.br, %bb.bw
  %i.eb = phi i32 [ 1, %bb.bw ], [ %i.ds, %bb.br ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i168 = load ptr, ptr %i.ec, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.eb, ptr %.val1.i.i168)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170 unwind label %bb.bo

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170: ; preds = %.invoke, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ed = trunc nuw i8 %.sroa.048.5248 to i1
  %i.ee = ptrtoint ptr %i.aj to i64
  %.not.i.i.i184 = trunc i64 %i.ee to i1
  %or.cond207.not = and i1 %.not.i.i.i184, %i.ed
  br i1 %or.cond207.not, label %bb.bx, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.bx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170
  %i.ef = getelementptr i8, ptr %i.aj, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  %i.eg = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs4kMRW8zVVbM_3cfg(ptr noundef nonnull %i.ef), !noalias !112
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 %i.eh ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  store ptr %i.ei, ptr %i.b, align 8, !noalias !112
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8, !noalias !112
  %i.ek = icmp eq i64 %i.ej, 2
  br i1 %i.ek, label %bb.by, label %bb.bz, !prof !9

bb.by:                                            ; preds = %bb.bx
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !112
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  store ptr %i.ei, ptr %i.a, align 8, !noalias !112
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4dcH4YgJDq_2tt4iter9TtElementEECs4kMRW8zVVbM_3cfg.exit170, %bb.bz, %bb.cd, %.noexc122, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread: ; preds = %bb.d, %bb.bm, %bb.bi, %.body, %bb.cb, %.thread223, %bb.ca, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162, %bb.h
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn203, %bb.ca ], [ %.pn81.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 ], [ %i.at, %.thread223 ], [ %i.at, %bb.cb ], [ %i.at, %bb.h ], [ %eh.lpad-body, %.body ], [ %i.dc, %bb.bi ], [ %i.di, %bb.bm ], [ %i.ak, %bb.d ]
  resume { ptr, i32 } %.pn81.pn.pn

bb.ca:                                            ; preds = %.thread200, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162
  %.pn81.pn203 = phi { ptr, i32 } [ %i.ax, %.thread200 ], [ %.pn81.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

.thread223:                                       ; preds = %bb.h
  %.pre261 = load i32, ptr %i.af, align 8, !range !72 ; 2 uses
  %i.el = icmp ne i64 %.pre, -1
  %i.em = icmp eq i32 %.pre261, 2
  %or.cond33 = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond33, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread, label %bb.cb

bb.cb:                                            ; preds = %.thread223
  %.val96 = load ptr, ptr %i.ai, align 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %.pre261, ptr %.val96) #21
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs4kMRW8zVVbM_3cfg.exit162.thread unwind label %bb.al

bb.cc:                                            ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.en = icmp ne i64 %i.ae, -1
  %or.cond37 = select i1 %i.en, i1 true, i1 %i.ah
  br i1 %or.cond37, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.thread, %bb.ce, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs4kMRW8zVVbM_3cfg.exit

bb.ce:                                            ; preds = %bb.cc
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.val94 = load ptr, ptr %i.eo, align 8
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs4kMRW8zVVbM_3cfg(i32 %i.ag, ptr %.val94)
  br label %bb.cd
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit() unnamed_addr #2 {
bb.a:
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

end_hunk_1
