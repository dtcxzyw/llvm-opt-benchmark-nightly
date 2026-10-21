Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_table-a9a6f7d3980ea30b.lance_table.71a0d83425f78a62-cgu.0?download=true
inline.NumInlined: 28246
inline.NumDeleted: 13059
loop-unroll.NumCompletelyUnrolled: 100
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 294
begin_hunk_0_@_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit23default_resolve_version0B7_:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i45 = load ptr, ptr %i.bt, align 8, !alias.scope !40606, !nonnull !62, !noundef !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i45, i64 noundef %.val.i.i44, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !40606
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit46

bb.ai:                                            ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit49

bb.aj:                                            ; preds = %.body
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !40607)
  call void @llvm.experimental.noalias.scope.decl(metadata !40608)
  %.val.i.i47 = load i64, ptr %i.bv, align 8, !alias.scope !40609 ; 2 uses
  %i.bw = icmp eq i64 %.val.i.i47, 0
  br i1 %i.bw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit49, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val1.i.i48 = load ptr, ptr %i.bx, align 8, !alias.scope !40609, !nonnull !62, !noundef !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i48, i64 noundef %.val.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !40609
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit49
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit27read_version_hint_and_probe0B7_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.6.i = alloca [7 x i8], align 1           ; 8 uses
  %.sroa.9.i = alloca [7 x i8], align 1           ; 8 uses
  %.sroa.11.i = alloca [16 x i8], align 8         ; 9 uses
  %i.b = alloca [56 x i8], align 8                ; 12 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 7 uses
  %i.e = alloca [96 x i8], align 8                ; 7 uses
  %i.f = alloca [96 x i8], align 8                ; 11 uses
  %i.g = alloca [56 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %i.i = alloca [56 x i8], align 8                ; 12 uses
  %i.j = alloca [72 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 7 uses
  %i.l = alloca [96 x i8], align 8                ; 10 uses
  %i.m = alloca [96 x i8], align 8                ; 7 uses
  %i.n = alloca [96 x i8], align 8                ; 13 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [24 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [56 x i8], align 8               ; 58 uses
  %.sroa.14164.i.i.i = alloca [32 x i8], align 8  ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.3.sroa.5.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.be = alloca [72 x i8], align 8               ; 11 uses
  %.sroa.5115.i.i.i = alloca [56 x i8], align 8   ; 8 uses
  %i.bf = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.13.i.i.i = alloca [56 x i8], align 8     ; 8 uses
  %.sroa.5.sroa.7.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.bg = alloca [72 x i8], align 8               ; 11 uses
  %i.bh = alloca [3 x i8], align 4                ; 4 uses
  %i.bi = alloca [2 x i8], align 1                ; 8 uses
  %i.bj = alloca [72 x i8], align 8               ; 13 uses
  %.sroa.412.i.i.i.i.i.i.i.i = alloca [52 x i8], align 4 ; 4 uses
  %i.bk = alloca [256 x i8], align 128            ; 15 uses
  %i.bl = alloca [32 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 4 uses
  %i.bn = alloca [8 x i8], align 8                ; 4 uses
  %i.bo = alloca [72 x i8], align 8               ; 10 uses
  %i.bp = alloca [48 x i8], align 8               ; 12 uses
  %.sroa.5.i.sroa.11.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.3.i.sroa.10.i.i = alloca [32 x i8], align 8 ; 6 uses
  %.sroa.8.i.sroa.9.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.bq = alloca [48 x i8], align 8               ; 9 uses
  %.sroa.14.i.i = alloca [32 x i8], align 8       ; 7 uses
  %i.br = alloca [176 x i8], align 8              ; 14 uses
  %i.bs = alloca [24 x i8], align 8               ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 4 uses
  %i.bu = alloca [72 x i8], align 8               ; 10 uses
  %.sroa.13104.i = alloca [32 x i8], align 8      ; 7 uses
  %i.bv = alloca [192 x i8], align 8              ; 6 uses
  %i.bw = alloca [192 x i8], align 8              ; 8 uses
  %.sroa.088.i = alloca [384 x i8], align 8       ; 10 uses
  %.sroa.6110 = alloca [24 x i8], align 8         ; 2 uses
  %.sroa.7111 = alloca [24 x i8], align 8         ; 2 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [96 x i8], align 8               ; 10 uses
  %i.bz = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.1092 = alloca [7 x i8], align 1          ; 7 uses
  %.sroa.1395 = alloca [7 x i8], align 1          ; 7 uses
  %.sroa.15 = alloca [16 x i8], align 8           ; 7 uses
  %i.ca = alloca [24 x i8], align 8               ; 8 uses
  %i.cb = alloca [1 x i8], align 1                ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cd = load i8, ptr %i.cc, align 8, !range !120, !noundef !62
  switch i8 %i.cd, label %default.unreachable614 [
    i8 0, label %.thread615
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.e
    i8 4, label %bb.ku
  ]

default.unreachable614:                           ; preds = %bb.ku, %bb.dh, %bb.bw, %bb.am, %bb.ah, %bb.m, %bb.e, %bb.a
  unreachable

.thread615:                                       ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %1, align 8, !nonnull !62, !align !67, !noundef !62 ; 2 uses
  store ptr %i.cf, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !62, !align !67, !noundef !62 ; 2 uses
  store ptr %i.ci, ptr %i.cg, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cf, ptr %i.cj, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @774) #80
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @774) #80
  unreachable

bb.d:                                             ; preds = %bb.k, %bb.j
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit72.i, %bb.d
  %i.cn = phi ptr [ %i.co, %bb.d ], [ %i.alc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit72.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.d ], [ %.pn21.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit72.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtCs9KQ7US1M400_11lance_table2io6commit22read_version_from_hint0EBJ_(ptr noundef nonnull align 8 %i.cn) #81
          to label %bb.ks unwind label %bb.kr

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !120, !noalias !41183
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 14 uses
  switch i8 %.pre, label %default.unreachable614 [
    i8 0, label %bb.f
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.m
    i8 4, label %bb.ah
  ]

bb.f:                                             ; preds = %.thread615, %bb.e
  %i.cq = phi ptr [ %i.cl, %.thread615 ], [ %i.cp, %bb.e ] ; 2 uses
  %i.cr = phi ptr [ %i.ck, %.thread615 ], [ %i.co, %bb.e ] ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !41183, !nonnull !62, !align !67, !noundef !62
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !41183, !nonnull !62, !align !67, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088.i)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !41184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !41184
  invoke void @_RNvXs4_NtCs40k4W9msRzi_5alloc6stringNtB5_6StringNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cu)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %bb.f
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @779, i64 noundef 9)
          to label %.noexc25.i unwind label %bb.g

.noexc25.i:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !41184
  invoke fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs9KQ7US1M400_11lance_table(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.cv, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1240, i64 noundef 24)
          to label %.thread.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc25.i, %.noexc.i, %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

.thread.i:                                        ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !41184
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !noalias !41183
  %.sroa.1198.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.cv, ptr %.sroa.1198.0..sroa_idx.i, align 8, !noalias !41183
  %.sroa.13100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store i8 0, ptr %.sroa.13100.0..sroa_idx.i, align 8, !noalias !41183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !41183
  %3 = insertelement <2 x ptr> poison, ptr %i.cx, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.cv, i64 1
  br label %bb.n

bb.h:                                             ; preds = %.body.i, %bb.ft, %.body45.i
  %i.cz = phi ptr [ %i.zu, %bb.ft ], [ %i.fo, %.body45.i ], [ %i.dh, %.body.i ] ; 2 uses
  %i.da = phi ptr [ %i.zv, %bb.ft ], [ %i.fp, %.body45.i ], [ %i.di, %.body.i ] ; 2 uses
  %.pn18.pn.i = phi { ptr, i32 } [ %i.zw, %bb.ft ], [ %eh.lpad-body46.i, %.body45.i ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !41185)
  call void @llvm.experimental.noalias.scope.decl(metadata !41186)
  %.val.i.i.i = load i64, ptr %i.db, align 8, !alias.scope !41187, !noalias !41183 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !41187, !noalias !41183, !nonnull !62, !noundef !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !41187
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.de = phi ptr [ %i.cz, %bb.i ], [ %i.cq, %bb.g ], [ %i.cz, %bb.h ]
  %i.df = phi ptr [ %i.da, %bb.i ], [ %i.cr, %bb.g ], [ %i.da, %bb.h ]
  %.pn21.i = phi { ptr, i32 } [ %.pn18.pn.i, %bb.i ], [ %i.cw, %bb.g ], [ %.pn18.pn.i, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECs9KQ7US1M400_11lance_table.exit72.i

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @771) #80
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @771) #80
          to label %.noexc30 unwind label %bb.d

.noexc30:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.t, %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body7.i.i, %bb.l
  %i.dh = phi ptr [ %i.cp, %bb.l ], [ %i.dz, %.body7.i.i ]
  %i.di = phi ptr [ %i.co, %bb.l ], [ %i.ea, %.body7.i.i ]
  %i.dj = phi ptr [ %i.dk, %bb.l ], [ %i.ec, %.body7.i.i ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dg, %bb.l ], [ %.pn.i.i, %.body7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !41183
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXCs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBG_11ObjectStoreEL_ENtBG_14ObjectStoreExt3get0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 %i.dj) #81
          to label %bb.h unwind label %bb.af

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.088.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !90, !noalias !41188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !41183
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41189)
  switch i8 %.pre.i, label %default.unreachable614 [
    i8 0, label %._crit_edge528
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %._crit_edge.i.i
  ]

._crit_edge528:                                   ; preds = %bb.m
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !noalias !41188
  br label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.m
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val5.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !41188
  %.phi.trans.insert16.i.i = getelementptr i8, ptr %1, i64 112
  %.val6.pre.i.i = load ptr, ptr %.phi.trans.insert16.i.i, align 8, !noalias !41188
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge528, %.thread.i
  %i.dm = phi ptr [ %i.cq, %.thread.i ], [ %i.cp, %._crit_edge528 ] ; 2 uses
  %i.dn = phi ptr [ %i.cr, %.thread.i ], [ %i.co, %._crit_edge528 ] ; 2 uses
  %i.do = phi ptr [ %.sroa.13100.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge528 ] ; 2 uses
  %i.dp = phi ptr [ %i.cy, %.thread.i ], [ %i.dk, %._crit_edge528 ] ; 2 uses
  %i.dq = phi <2 x ptr> [ %4, %.thread.i ], [ %i.dl, %._crit_edge528 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !41190
  %i.dr = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  store i64 -1, ptr %i.br, align 8, !noalias !41191
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 -1, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !noalias !41191
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store i64 -1, ptr %.sroa.610.0..sroa_idx.i.i, align 8, !noalias !41191
  %.sroa.711.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  store i64 -1, ptr %.sroa.711.0..sroa_idx.i.i, align 8, !noalias !41191
  %.sroa.812.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store ptr null, ptr %.sroa.812.0..sroa_idx.i.i, align 8, !noalias !41191
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  store i32 0, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !41191
  %.sroa.1013.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 116
  store i32 0, ptr %.sroa.1013.0..sroa_idx.i.i, align 4, !noalias !41191
  %.sroa.1114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 128
  store i8 0, ptr %.sroa.1114.0..sroa_idx.i.i, align 8, !noalias !41191
  store <2 x ptr> %i.dq, ptr %i.dr, align 8, !noalias !41190
  %i.ds = getelementptr inbounds nuw i8, ptr %i.br, i64 168
  store i8 0, ptr %i.ds, align 8, !noalias !41190
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !41192
  %i.dt = tail call noundef align 8 dereferenceable_or_null(176) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 176, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !41192 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.o, label %bb.r, !prof !69

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 176) #80
          to label %.noexc.i.i.i unwind label %bb.p, !noalias !41193

.noexc.i.i.i:                                     ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvXsj_Cs3PfUT229lOd_12object_storeINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBJ_11ObjectStoreEL_EB1K_8get_opts0ECs9KQ7US1M400_11lance_table(ptr noundef nonnull align 8 dereferenceable(176) %i.br) #81
          to label %.body7.i.i unwind label %bb.q, !noalias !41193

bb.q:                                             ; preds = %bb.p
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !41193
  unreachable

bb.r:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.dt, ptr noundef nonnull align 8 dereferenceable(176) %i.br, i64 176, i1 false), !noalias !41193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !41190
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.dt, ptr %i.dx, align 8, !noalias !41188
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr @2052, ptr %i.dy, align 8, !noalias !41188
  br label %bb.v

.body7.i.i:                                       ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.z, %bb.u, %bb.p
  %i.dz = phi ptr [ %i.ee, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ee, %bb.u ], [ %i.ee, %bb.z ], [ %i.dm, %bb.p ]
  %i.ea = phi ptr [ %i.ef, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ef, %bb.u ], [ %i.ef, %bb.z ], [ %i.dn, %bb.p ]
  %i.eb = phi ptr [ %i.eg, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.eg, %bb.u ], [ %i.eg, %bb.z ], [ %i.do, %bb.p ]
  %i.ec = phi ptr [ %i.eh, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.eh, %bb.u ], [ %i.eh, %bb.z ], [ %i.dp, %bb.p ]
  %.pn.i.i = phi { ptr, i32 } [ %i.eu, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.ed, %bb.u ], [ %i.eu, %bb.z ], [ %i.dv, %bb.p ]
  store i8 2, ptr %i.eb, align 8, !noalias !41188
  br label %.body.i

bb.s:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #80
          to label %.noexc27.i unwind label %bb.l

.noexc27.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @831) #80
          to label %.noexc28.i unwind label %bb.l

.noexc28.i:                                       ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.v
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %.val3.i.i = load ptr, ptr %i.ei, align 8, !noalias !41188
  %.val4.i.i = load ptr, ptr %i.ej, align 8, !noalias !41188, !nonnull !62, !align !67, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2r_5ErrorENtNtB4_6marker4SendEL_EEECs9KQ7US1M400_11lance_table(ptr %.val3.i.i, ptr nonnull %.val4.i.i) #81
          to label %.body7.i.i unwind label %bb.aa, !noalias !41189

bb.v:                                             ; preds = %bb.r, %._crit_edge.i.i
  %i.ee = phi ptr [ %i.cp, %._crit_edge.i.i ], [ %i.dm, %bb.r ] ; 7 uses
  %i.ef = phi ptr [ %i.co, %._crit_edge.i.i ], [ %i.dn, %bb.r ] ; 7 uses
  %i.eg = phi ptr [ %.phi.trans.insert.i, %._crit_edge.i.i ], [ %i.do, %bb.r ] ; 5 uses
  %i.eh = phi ptr [ %i.dk, %._crit_edge.i.i ], [ %i.dp, %bb.r ] ; 4 uses
  %.val6.i.i = phi ptr [ %.val6.pre.i.i, %._crit_edge.i.i ], [ @2052, %bb.r ]
  %.val5.i.i = phi ptr [ %.val5.pre.i.i, %._crit_edge.i.i ], [ %i.dt, %bb.r ]
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ej = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !invariant.load !62, !noalias !41194, !nonnull !62
  invoke void %i.el(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.bw, ptr noundef nonnull %.val5.i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i unwind label %bb.u, !inline_history !29

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.v
  %i.em = load i64, ptr %i.bw, align 8, !range !81, !alias.scope !41189, !noalias !41183, !noundef !62
  %i.en = icmp eq i64 %i.em, -2
  br i1 %i.en, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i
  %.val.i.i = load ptr, ptr %i.ei, align 8, !noalias !41188 ; 5 uses
  %.val2.i.i = load ptr, ptr %i.ej, align 8, !noalias !41188, !nonnull !62, !align !67, !noundef !62 ; 5 uses
  %i.eo = load ptr, ptr %.val2.i.i, align 8, !invariant.load !62, !noalias !41189 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.eo(ptr noundef nonnull %.val.i.i)
          to label %bb.y unwind label %bb.z, !noalias !41189

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ep = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !range !66, !invariant.load !62, !noalias !41189 ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ac, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.et = load i64, ptr %i.es, align 8, !range !88, !invariant.load !62, !noalias !41189
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) %i.et) #76, !noalias !41189
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !range !66, !invariant.load !62, !noalias !41189 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %.body7.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !range !88, !invariant.load !62, !noalias !41189
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ew, i64 noundef range(i64 1, -9223372036854775807) %i.ez) #76, !noalias !41189
  br label %.body7.i.i

bb.aa:                                            ; preds = %bb.u
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #82, !noalias !41189
  unreachable

bb.ab:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs9KQ7US1M400_11lance_table.exit.i.i
  store i8 3, ptr %i.eg, align 8, !noalias !41188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !41183
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.088.i)
  store i8 3, ptr %i.ee, align 8, !noalias !41183
  br label %bb.km

bb.ac:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.y
  store i8 1, ptr %i.eg, align 8, !noalias !41188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bv, ptr noundef nonnull align 8 dereferenceable(192) %i.bw, i64 192, i1 false), !noalias !41183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !41183
  %i.fb = load i64, ptr %i.bv, align 8, !range !64, !alias.scope !41195, !noalias !41183, !noundef !62 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  br i1 %i.fc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i, label %.thread635.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i: ; preds = %bb.ac
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs3PfUT229lOd_12object_store5ErrorECs9KQ7US1M400_11lance_table(ptr noalias noundef readonly align 8 dereferenceable(72) %i.fd)
          to label %bb.ad unwind label %bb.ft

.thread635.i:                                     ; preds = %bb.ac
  %.sroa.1193.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.1193.0..sroa_idx94.i, ptr noundef nonnull align 8 dereferenceable(184) %i.fd, i64 184, i1 false), !noalias !41183
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41196)
  store i64 %i.fb, ptr %i.fe, align 8, !alias.scope !41197, !noalias !41183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.088.i, ptr noundef nonnull align 8 dereferenceable(192) %i.fe, i64 192, i1 false), !noalias !41183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.eh, ptr noundef nonnull align 8 dereferenceable(384) %.sroa.088.i, i64 384, i1 false), !noalias !41183
  %.sroa.1189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 2 uses
  store i8 0, ptr %.sroa.1189.0..sroa_idx.i, align 8, !noalias !41183
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13104.i)
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i)
  br label %bb.ai

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs3PfUT229lOd_12object_store9GetResultNtBZ_5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 752
  store i64 -1, ptr %i.fg, align 8, !alias.scope !41198, !noalias !41183
  br label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.thread.i

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.thread.i: ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i, %bb.ad
  %i.fh = phi ptr [ %i.mc, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i ], [ %i.mc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.ee, %bb.ad ]
  %i.fi = phi ptr [ %i.md, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.i ], [ %i.md, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorEECs9KQ7US1M400_11lance_table.exit.i.i ], [ %i.ef, %bb.ad ]
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.experimental.noalias.scope.decl(metadata !41199)
  call void @llvm.experimental.noalias.scope.decl(metadata !41200)
  %.val.i.i36.i = load i64, ptr %i.fj, align 8, !alias.scope !41201, !noalias !41183 ; 2 uses
  %i.fk = icmp eq i64 %.val.i.i36.i, 0
  br i1 %i.fk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs3PfUT229lOd_12object_store4path4PathECs9KQ7US1M400_11lance_table.exit38.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorE2okCs9KQ7US1M400_11lance_table.exit.thread.i
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
