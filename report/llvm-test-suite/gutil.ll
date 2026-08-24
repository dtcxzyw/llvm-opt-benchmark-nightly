Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gutil?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
begin_hunk_0_@_ZN2kc31sort_extend_parameter_type_listEPNS_24impl_ac_declaration_listEPNS_18impl_ac_declaratorE:bb.a
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.ah = icmp eq i32 %i.ag, 255
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call noundef ptr @_ZN2kc20Nilac_parameter_listEv()
  %i.aj = tail call noundef ptr @_ZN2kc9AcParListEPNS_22impl_ac_parameter_listE(ptr noundef %i.ai)
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.7, i32 noundef 402, ptr noundef nonnull @.str.1)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.7, i32 noundef 407, ptr noundef nonnull @.str.1)
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l, %bb.m
  %.1 = phi ptr [ null, %bb.m ], [ %i.l, %bb.c ], [ %i.r, %bb.e ], [ %i.x, %bb.g ], [ %i.ad, %bb.i ], [ %i.aj, %bb.k ], [ null, %bb.l ]
  ret ptr %.1
}

declare noundef ptr @_ZN2kc9AcParListEPNS_22impl_ac_parameter_listE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2kc20Nilac_parameter_listEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc28t_sort_extend_parameter_listEPNS_24impl_ac_declaration_listEPNS_23impl_ac_identifier_listEPNS_22impl_ac_parameter_listE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.d = icmp eq i32 %i.c, 283
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.i = tail call noundef ptr @_ZN2kc28t_sort_extend_parameter_listEPNS_24impl_ac_declaration_listEPNS_23impl_ac_identifier_listEPNS_22impl_ac_parameter_listE(ptr noundef %0, ptr noundef %i.h, ptr noundef %2)
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !117
  %i.m = icmp eq i32 %i.l, 234
  br i1 %i.m, label %.lr.ph46.i, label %.thread.i

.lr.ph46.i:                                       ; preds = %bb.b, %.loopexit.i
  %.02945.i = phi ptr [ %i.ar, %.loopexit.i ], [ %0, %bb.b ] ; 2 uses
  %.03044.i = phi i32 [ %.4.i, %.loopexit.i ], [ 0, %bb.b ] ; 3 uses
  %.03143.i = phi ptr [ %.435.i, %.loopexit.i ], [ null, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02945.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.o), !inline_history !117
  %i.s = icmp eq i32 %i.r, 232
  br i1 %i.s, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph46.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  %.0.in37.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.038.i = load ptr, ptr %.0.in37.i, align 8, !tbaa !125 ; 3 uses
  %i.v = load ptr, ptr %.038.i, align 8, !tbaa !8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %.038.i), !inline_history !117
  %i.y = icmp eq i32 %i.x, 252
  br i1 %i.y, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.f
  %.041.i = phi ptr [ %.0.i, %bb.f ], [ %.038.i, %bb.c ] ; 2 uses
  %.140.i = phi i32 [ %.3.i, %bb.f ], [ %.03044.i, %bb.c ] ; 3 uses
  %.13239.i = phi ptr [ %.334.i, %bb.f ], [ %.03143.i, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.041.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !126 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.aa), !inline_history !117
  %i.ae = icmp eq i32 %i.ad, 253
  br i1 %i.ae, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !129 ; 2 uses
  %i.ah = tail call noundef ptr @_ZN2kc18f_ID_of_declaratorEPNS_18impl_ac_declaratorE(ptr noundef %i.ag)
  %i.ai = tail call noundef zeroext i1 @_ZNK2kc20impl_abstract_phylum2eqEPKS0_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.f)
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call noundef ptr @_ZN2kc24Noac_constant_expressionEv()
  %i.ak = tail call noundef ptr @_ZN2kc13AcParDeclDeclEPNS_30impl_ac_declaration_specifiersEPNS_18impl_ac_declaratorEPNS_34impl_ac_constant_expression_optionE(ptr noundef %i.u, ptr noundef %i.ag, ptr noundef %i.aj)
  %i.al = add nsw i32 %.140.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %.334.i = phi ptr [ %.13239.i, %.lr.ph.i ], [ %i.ak, %bb.e ], [ %.13239.i, %bb.d ] ; 2 uses
  %.3.i = phi i32 [ %.140.i, %.lr.ph.i ], [ %i.al, %bb.e ], [ %.140.i, %bb.d ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !125 ; 3 uses
  %i.am = load ptr, ptr %.0.i, align 8, !tbaa !8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(24) %.0.i), !inline_history !117
  %i.ap = icmp eq i32 %i.ao, 252
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !132

.loopexit.i:                                      ; preds = %bb.f, %bb.c, %.lr.ph46.i
  %.435.i = phi ptr [ %.03143.i, %.lr.ph46.i ], [ %.03143.i, %bb.c ], [ %.334.i, %bb.f ] ; 2 uses
  %.4.i = phi i32 [ %.03044.i, %.lr.ph46.i ], [ %.03044.i, %bb.c ], [ %.3.i, %bb.f ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02945.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !133 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(24) %i.ar), !inline_history !117
  %i.av = icmp eq i32 %i.au, 234
  br i1 %i.av, label %.lr.ph46.i, label %._crit_edge.i, !llvm.loop !134

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.aw = icmp eq i32 %.4.i, 1
  br i1 %i.aw, label %_ZN2kcL42lookup_and_create_ac_parameter_declarationEPNS_7impl_IDEPNS_24impl_ac_declaration_listE.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ax = icmp sgt i32 %.4.i, 1
  br i1 %i.ax, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.b
  br label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.g
  %.str.32.sink.i = phi ptr [ @.str.32, %.thread.i ], [ @.str.31, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !135
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !136
  %i.bc = tail call noundef ptr @_ZN2kc8FileLineEPNS_20impl_casestring__StrEi(ptr noundef %i.az, i32 noundef %i.bb)
  %i.bd = tail call noundef ptr @_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE(ptr noundef nonnull %.str.32.sink.i, ptr noundef %i.f)
  %i.be = tail call noundef ptr @_ZN2kc7WarningEPNS_13impl_filelineEPNS_12impl_problemE(ptr noundef %i.bc, ptr noundef %i.bd)
  tail call void @_ZN2kc8v_reportEPNS_10impl_errorE(ptr noundef %i.be)
  %i.bf = tail call noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef nonnull @.str.5, i32 noundef -1)
  %i.bg = tail call noundef ptr @_ZN2kc3StrEPNS_20impl_casestring__StrE(ptr noundef %i.bf)
  %i.bh = tail call noundef ptr @_ZN2kc2IdEPNS_11impl_uniqIDE(ptr noundef %i.bg)
  %i.bi = tail call noundef ptr @_ZN2kc10AcTypeSpecEPNS_7impl_IDE(ptr noundef %i.bh)
  %i.bj = tail call noundef ptr @_ZN2kc18AcDeclSpecTypeSpecEPNS_22impl_ac_type_specifierE(ptr noundef %i.bi)
  %i.bk = tail call noundef ptr @_ZN2kc28Nilac_declaration_specifiersEv()
  %i.bl = tail call noundef ptr @_ZN2kc29Consac_declaration_specifiersEPNS_29impl_ac_declaration_specifierEPNS_30impl_ac_declaration_specifiersE(ptr noundef %i.bj, ptr noundef %i.bk)
  %i.bm = tail call noundef ptr @_ZN2kc9NopointerEv()
  %i.bn = tail call noundef ptr @_ZN2kc7AcNoRefEv()
  %i.bo = tail call noundef ptr @_ZN2kc14AcDirectDeclIdEPNS_7impl_IDE(ptr noundef nonnull %i.f)
  %i.bp = tail call noundef ptr @_ZN2kc12AcDeclaratorEPNS_22impl_ac_pointer_optionEPNS_18impl_ac_ref_optionEPNS_25impl_ac_direct_declaratorE(ptr noundef %i.bm, ptr noundef %i.bn, ptr noundef %i.bo)
  %i.bq = tail call noundef ptr @_ZN2kc24Noac_constant_expressionEv()
  %i.br = tail call noundef ptr @_ZN2kc13AcParDeclDeclEPNS_30impl_ac_declaration_specifiersEPNS_18impl_ac_declaratorEPNS_34impl_ac_constant_expression_optionE(ptr noundef %i.bl, ptr noundef %i.bp, ptr noundef %i.bq)
  br label %_ZN2kcL42lookup_and_create_ac_parameter_declarationEPNS_7impl_IDEPNS_24impl_ac_declaration_listE.exit

_ZN2kcL42lookup_and_create_ac_parameter_declarationEPNS_7impl_IDEPNS_24impl_ac_declaration_listE.exit: ; preds = %._crit_edge.i, %bb.h
  %.036.i = phi ptr [ %i.br, %bb.h ], [ %.435.i, %._crit_edge.i ]
  %i.bs = tail call noundef ptr @_ZN2kc21Consac_parameter_listEPNS_29impl_ac_parameter_declarationEPNS_22impl_ac_parameter_listE(ptr noundef %.036.i, ptr noundef %i.i)
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.bt = load ptr, ptr %1, align 8, !tbaa !8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef i32 %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.bw = icmp eq i32 %i.bv, 282
  br i1 %i.bw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2kc21kc_no_default_in_withEPKciS1_(ptr noundef nonnull @.str.8, i32 noundef 428, ptr noundef nonnull @.str.1)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZN2kcL42lookup_and_create_ac_parameter_declarationEPNS_7impl_IDEPNS_24impl_ac_declaration_listE.exit
  %.0 = phi ptr [ %i.bs, %_ZN2kcL42lookup_and_create_ac_parameter_declarationEPNS_7impl_IDEPNS_24impl_ac_declaration_listE.exit ], [ null, %bb.j ], [ %2, %bb.i ]
  ret ptr %.0
}

declare noundef ptr @_ZN2kc21Consac_parameter_listEPNS_29impl_ac_parameter_declarationEPNS_22impl_ac_parameter_listE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2kc7unparseEPKcRNS_21printer_functor_classERNS_11uview_classE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull ptr @_ZN2kc13impl_charruns3setEi(ptr nofree noundef nonnull returned writeonly align 8 captures(ret: address, provenance) dereferenceable(12) initializes((8, 12)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !137
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc10f_mkselvarEPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8192
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #14 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.011 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]  ; 3 uses
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  %2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 %2
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1) #13 ; 0 uses
  %i.i = call noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef nonnull %.0, i32 noundef -1)
  %i.j = call noundef ptr @_ZN2kc3StrEPNS_20impl_casestring__StrE(ptr noundef %i.i)
  %i.k = call noundef ptr @_ZN2kc2IdEPNS_11impl_uniqIDE(ptr noundef %i.j)
  %.not = icmp eq ptr %.011, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.011) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.k
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc11f_mkselvar2EPKcii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.c = add i64 %i.b, 62                         ; 2 uses
  %i.d = icmp ugt i64 %i.c, 8192
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #14 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]  ; 3 uses
  %i.f = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(1) %0) #13 ; 0 uses
  %3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 %3
  %i.h = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1, i32 noundef %2) #13 ; 0 uses
  %i.i = call noundef ptr @_ZN2kc12mkcasestringEPKci(ptr noundef nonnull %.0, i32 noundef -1)
  %i.j = call noundef ptr @_ZN2kc3StrEPNS_20impl_casestring__StrE(ptr noundef %i.i)
  %i.k = call noundef ptr @_ZN2kc2IdEPNS_11impl_uniqIDE(ptr noundef %i.j)
  %.not = icmp eq ptr %.014, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.014) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN2kc13f_mk_filenameEPNS_20impl_casestring__StrEPKc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 47) #12 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %spec.select = select i1 %i.d, ptr %i.b, ptr %i.c ; 4 uses
  %i.e = load i8, ptr %spec.select, align 1, !tbaa !139
  switch i8 %i.e, label %bb.d [
    i8 47, label %bb.b
    i8 34, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.136 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %spec.select, %bb.a ] ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.136) #12 ; 5 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %i.j = add i64 %i.h, 1
  %i.k = add i64 %i.j, %i.i
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #14 ; 6 uses
  %i.m = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %.136) #13 ; 0 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.l, i64 %i.h
  %i.o = getelementptr i8, ptr %i.n, i64 -1       ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !139
  %i.q = icmp eq i8 %i.p, 34
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.o, align 1, !tbaa !139
  %i.r = add i64 %i.h, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.034 = phi i64 [ %i.r, %bb.f ], [ %i.h, %bb.e ] ; 6 uses
  %i.s = icmp ugt i64 %.034, 1
  br i1 %i.s, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.l, i64 %.034
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !139
  %i.w = icmp eq i8 %i.v, 107
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.x = add i64 %.034, -2                        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !139
  %i.aa = icmp eq i8 %i.z, 46
  %spec.select44 = select i1 %i.aa, i64 %i.x, i64 %.034
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.i, %bb.h, %bb.g
  %.1 = phi i64 [ %.034, %bb.g ], [ %spec.select44, %bb.i ], [ %.034, %bb.h ], [ 0, %bb.d ]
  %char0 = load i8, ptr %1, align 1               ; 2 uses
  %i.ab = icmp eq i8 %char0, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.1 ; 3 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  store i8 0, ptr %i.ac, align 1, !tbaa !139
  br label %.loopexit

bb.k:                                             ; preds = %.thread
  store i8 46, ptr %i.ac, align 1, !tbaa !139
  %.046 = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store i8 %char0, ptr %.046, align 1, !tbaa !139
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.k, %thread-pre-split
  %.048 = phi ptr [ %.046, %bb.k ], [ %.0, %thread-pre-split ]
  %.03747 = phi ptr [ %1, %bb.k ], [ %i.ad, %thread-pre-split ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.03747, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.ad, align 1, !tbaa !139  ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.048, i64 1 ; 2 uses
  store i8 %.pr, ptr %.0, align 1, !tbaa !139
  %.not43 = icmp eq i8 %.pr, 0
  br i1 %.not43, label %.loopexit, label %thread-pre-split, !llvm.loop !140

.loopexit:                                        ; preds = %thread-pre-split, %bb.j
  ret ptr %i.l
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN2kc13f_mk_filenameEPNS_20impl_casestring__StrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !141
  %i.b = tail call noundef ptr @_ZN2kc13f_mk_filenameEPNS_20impl_casestring__StrEPKc(ptr noundef %0, ptr noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN2kc26f_make_identifier_basenameEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12 ; 2 uses
  %i.b = add i64 %i.a, -2                         ; 4 uses
  %i.c = add i64 %i.a, -1
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #14 ; 4 uses
  %i.e = tail call ptr @strncpy(ptr noundef nonnull %i.d, ptr noundef nonnull %0, i64 noundef %i.b) #13 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  store i8 0, ptr %i.f, align 1, !tbaa !139
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret ptr %i.d

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !139
  %i.i = sext i8 %i.h to i32
  %i.j = tail call i32 @isalnum(i32 noundef %i.i) #12
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 95, ptr %i.g, align 1, !tbaa !139
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.k = and i64 %indvars.iv.next, 4294967295
  %i.l = icmp ugt i64 %i.b, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !145
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN2kc37f_rewriterulesinfoofalternativeinviewEPNS_16impl_alternativeEPNS_7impl_IDE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  store ptr %1, ptr @_ZL17global_filterview, align 8, !tbaa !146
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.c = tail call noundef ptr @_ZN2kc21impl_rewriterulesinfo6filterEPFbPNS_20impl_rewriteruleinfoEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull @_ZN2kcL27filterrewriteruleinfoonviewEPNS_20impl_rewriteruleinfoE)
  ret ptr %i.c
}

declare noundef ptr @_ZN2kc21impl_rewriterulesinfo6filterEPFbPNS_20impl_rewriteruleinfoEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN2kcL27filterrewriteruleinfoonviewEPNS_20impl_rewriteruleinfoE(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL17global_filterview, align 8, !tbaa !146
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !148
  %i.e = icmp eq i32 %i.d, 219
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !148
  %i.k = icmp eq i32 %i.j, 70
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !153  ; 3 uses
end_hunk_0
