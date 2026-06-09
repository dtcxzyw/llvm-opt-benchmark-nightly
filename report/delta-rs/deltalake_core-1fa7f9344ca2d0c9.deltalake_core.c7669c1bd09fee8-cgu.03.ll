inline.NumInlined: 10149
inline.NumDeleted: 2791
begin_hunk_0_@_RNvXsf6_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_9ForClauseNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp:bb.a
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  switch i64 %i.a, label %bb.o [
    i64 0, label %bb.p
    i64 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = tail call i8 @llvm.scmp.i8.i64(i64 %i.a, i64 %i.e)
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.p:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !849, !alias.scope !37250, !noalias !37253, !noundef !3
  %.not21.i = icmp eq i64 %i.aw, -9223372036854775808
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !849, !alias.scope !37253, !noalias !37250, !noundef !3 ; 2 uses
  br i1 %.not21.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !849, !alias.scope !37250, !noalias !37253, !noundef !3
  %.not18.i = icmp eq i64 %i.ba, -9223372036854775808
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !849, !alias.scope !37253, !noalias !37250, !noundef !3 ; 2 uses
  br i1 %.not18.i, label %bb.v, label %bb.u

bb.r:                                             ; preds = %bb.p
  %.not23.i = icmp eq i64 %i.ay, -9223372036854775808
  br i1 %.not23.i, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.t

bb.s:                                             ; preds = %bb.p
  %.not22.i = icmp ne i64 %i.ay, -9223372036854775808
  %..i = sext i1 %.not22.i to i8
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.t:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !37250, !noalias !37253, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !37250, !noalias !37253, !noundef !3 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !37253, !noalias !37250, !nonnull !3, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !37253, !noalias !37250, !noundef !3 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk)
  %i.bl = tail call i32 @memcmp(ptr nonnull %i.be, ptr nonnull %i.bi, i64 %spec.store.select.i), !noalias !37255 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = sub i64 %i.bg, %i.bk
  %spec.select.i = select i1 %i.bn, i64 %i.bo, i64 %i.bm
  %i.bp = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.u:                                             ; preds = %bb.q
  %.not20.i = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %.not20.i, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.w

bb.v:                                             ; preds = %bb.q
  %.not19.i = icmp ne i64 %i.bc, -9223372036854775808
  %.24.i = sext i1 %.not19.i to i8
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.w:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !37250, !noalias !37253, !nonnull !3, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !37250, !noalias !37253, !noundef !3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !37253, !noalias !37250, !nonnull !3, !noundef !3
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !37253, !noalias !37250, !noundef !3 ; 2 uses
  %spec.store.select1.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bx)
  %i.by = tail call i32 @memcmp(ptr nonnull %i.br, ptr nonnull %i.bv, i64 %spec.store.select1.i), !noalias !37255 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bt, %i.bx
  %spec.select25.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz
  %i.cc = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select25.i, i64 0)
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.o, %bb.s, %bb.t, %bb.v, %bb.w
  %.sroa.0.0.i = phi i8 [ %i.au, %bb.o ], [ %i.bp, %bb.t ], [ %.24.i, %bb.v ], [ %..i, %bb.s ], [ %i.cc, %bb.w ] ; 2 uses
  %i.cd = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.cd, label %bb.x, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.x:                                             ; preds = %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load i8, ptr %i.ce, align 8, !range !492, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !range !492, !noundef !3
  %i.ci = sub nsw i8 %i.cf, %i.ch                 ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.cl = load i8, ptr %i.ck, align 1, !range !492, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.cn = load i8, ptr %i.cm, align 1, !range !492, !noundef !3
  %i.co = sub nsw i8 %i.cl, %i.cn                 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.z, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !range !849, !noundef !3
  %.not = icmp eq i64 %i.cr, -9223372036854775808
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !range !849, !noundef !3
  %.not33 = icmp eq i64 %i.ct, -9223372036854775808 ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not33, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  br i1 %.not33, label %bb.ac, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.ac:                                            ; preds = %bb.ab, %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cv = load i8, ptr %i.cu, align 2, !range !492, !noundef !3
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.cx = load i8, ptr %i.cw, align 2, !range !492, !noundef !3
  %i.cy = sub nsw i8 %i.cv, %i.cx
  br label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.ad:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dc = load i64, ptr %i.db, align 8, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dg = load i64, ptr %i.df, align 8, !noundef !3 ; 2 uses
  %spec.store.select2 = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.dg)
  %i.dh = tail call i32 @memcmp(ptr nonnull %i.da, ptr nonnull %i.de, i64 %spec.store.select2) ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp eq i32 %i.dh, 0
  %i.dk = sub i64 %i.dc, %i.dg
  %spec.select40 = select i1 %i.dj, i64 %i.dk, i64 %i.di ; 2 uses
  %i.dl = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select40, i64 0)
  %i.dm = icmp eq i64 %spec.select40, 0
  br i1 %i.dm, label %bb.ac, label %_RNvXsfg_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37256)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37256, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37259)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37262, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37256 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37263
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37268
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37262
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37256
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37273)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37273, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37276)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37279, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37273 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB34_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37280
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37285
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37279
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB34_.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB34_.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37273
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEEB34_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2J_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37290)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37290, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37293)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37296, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37290 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB34_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37297
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37302
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB2t_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37296
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB34_.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB34_.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_EB2P_.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37290
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEENtNtNtB6_5alloc5inner6GlobalEB37_.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEB34_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37307)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37307, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37310)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37313, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37307 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37314
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37319
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37313
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37307
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel11JsonHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37324)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37324, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37327)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37330, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37324 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37331
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37336
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37330
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37324
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14ParquetHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37341)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37341, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37344)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37347, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37341 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37348
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37353
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [104 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -104
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.x), !noalias !37347
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 104
  %i.aa = icmp slt i64 %i.b, 177372539170284150
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i64 %i.z, -16                       ; 2 uses
  %i.ac = add i64 %i.ab, 112                      ; 2 uses
  %i.ad = add nsw i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub i64 -112, %i.ab
  %i.ai = getelementptr inbounds i8, ptr %.pre.i, i64 %i.ah
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37341
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB11_3vec3VecbEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37358)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37358, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_3vec3VecbEEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37361)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37364, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37358 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37365
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.013.i.i = phi i16 [ %i.j, %bb.c ], [ %i.t, %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.013.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37370
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.013.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [48 x i8], ptr %.sroa.05.1.i.i, i64 %i.u
  %i.w = add i64 %.sroa.107.014.i.i, -1           ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -48
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtBL_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.x), !noalias !37364
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_3vec3VecbEEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.z = mul i64 %i.b, 48                         ; 2 uses
  %i.aa = add i64 %i.z, 48                        ; 2 uses
  %i.ab = add i64 %i.b, 17
  %i.ac = add i64 %i.ab, %i.aa                    ; 3 uses
  %i.ad = icmp uge i64 %i.ac, %i.aa
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ult i64 %i.ac, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = sub i64 -48, %i.z
  %i.ag = getelementptr inbounds i8, ptr %.pre.i, i64 %i.af
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37358
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_3vec3VecbEEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1p_3vec3VecbEEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB1m_3vec3VecbEEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37375)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !37375, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37378)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !37381, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !37375 ; 4 uses
  br i1 %i.f, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load <16 x i8>, ptr %.pre.i, align 16, !noalias !37382
  %i.h = icmp sgt <16 x i8> %i.g, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.c
  %.sroa.05.017.i.i = phi ptr [ %.pre.i, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.107.015.i.i = phi i64 [ %i.e, %bb.c ], [ %i.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.z, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.not9.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not9.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.05.017.i.i, %bb.d ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !37387
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.n to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.017.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.e, !noalias !37381

bb.e:                                             ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.f, !noalias !37381

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !37381
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEE9next_implKb0_ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.x = add i64 %.sroa.107.015.i.i, -1           ; 2 uses
  %i.y = add i16 %.lcssa.i.i.i, -1
  %i.z = and i16 %i.y, %.lcssa.i.i.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u), !noalias !37381
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.d

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = sub i64 -32, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %.pre.i, i64 %i.aj
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !37375
  br label %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit

_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEENtNtNtB6_5alloc5inner6GlobalECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a, %_RINvMsa_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerNtB6_13RawTableInner13drop_elementsTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueuEEECs14kWLkQVSKO_14deltalake_core.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsfc_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !853, !noundef !3
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1008, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1009, i64 noundef 4)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1010, i64 noundef 8)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1011, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1007)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsff_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6ForXmlNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !853, !noundef !3 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !853, !noundef !3
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink12 = phi i64 [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.e, i64 %.sink12)
  %i.h = icmp eq i32 %bcmp, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %.sink.split, %bb.g, %bb.f, %bb.c, %bb.a
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ %.mux, %bb.d ], [ %i.h, %.sink.split ], [ true, %bb.c ], [ false, %bb.g ], [ %.mux15, %bb.e ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.a
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.d
    i64 3, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !849, !noundef !3
  %.not6 = icmp eq i64 %i.j, -9223372036854775808 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !849, !noundef !3
  %i.m = icmp eq i64 %i.l, -9223372036854775808   ; 2 uses
  %brmerge = or i1 %.not6, %i.m
  %.mux = and i1 %.not6, %i.m
  br i1 %brmerge, label %bb.b, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !849, !noundef !3
  %.not = icmp eq i64 %i.o, -9223372036854775808  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !849, !noundef !3
  %i.r = icmp eq i64 %i.q, -9223372036854775808   ; 2 uses
  %brmerge14 = or i1 %.not, %i.r
  %.mux15 = and i1 %.not, %i.r
  br i1 %brmerge14, label %bb.b, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noundef !3
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.sink.split, label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %.sink.split, label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsfm_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7ForJsonNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !492, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1
  %. = select i1 %i.b, ptr @1011, ptr @1009
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 4)
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXsg4_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_28JsonTableColumnErrorHandlingNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #21 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22935, !noundef !3 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 1          ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !22935, !noundef !3 ; 3 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775786
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775787
  %i.i = icmp ugt i64 %i.f, -9223372036854775788
  %i.j = select i1 %i.i, i64 %i.h, i64 1          ; 2 uses
  %i.k = icmp eq i64 %i.e, 1
  %i.l = icmp eq i64 %i.j, 1
  %or.cond = and i1 %i.k, %i.l
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i8 @llvm.scmp.i8.i64(i64 %i.e, i64 %i.j)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) #50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %i.n, %bb.c ], [ %i.m, %bb.b ]
end_hunk_0
